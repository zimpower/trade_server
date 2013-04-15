BIG_NUM = 25000000

class TradesController < ApplicationController
  # GET /trades
  # GET /trades.json
  def index

    @trades = Trade.all.desc(:time_stamp).limit(100)
    @sig_trades = Trade.or({:und_not.gte => BIG_NUM}, {:acc_not.gte => BIG_NUM}).desc(:time_stamp).limit(100)
    @opt_trades = Trade.where(:title.ne => "ForeignExchange:NDF").desc(:time_stamp).limit(100)
    @ndf_trades = Trade.where(title: "ForeignExchange:NDF").desc(:time_stamp).limit(100)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trades }
    end
  end


  # GET /trades/range/start_date/end_date
  # GET /trades/range/start_date/end_date.json
  def range
    start_date = Time.parse(params[:start_date]).utc
    end_date = Time.parse(params[:end_date]).utc

    # @trades = Trade.where( 
    # :time_stamp.gte => start_date,
    # :time_stamp.lte => end_date 
    # ).desc(:time_stamp).limit(100)
    @trades = Trade.between( time_stamp: start_date..end_date).desc(:time_stamp).limit(100)

    puts "Params : #{params[:start_date]}-#{params[:end_date]}"
    puts "parsed : #{start_date}-#{end_date}"
    @opt_trades = Trade.where(:time_stamp => {'$gte' => start_date,'$lt' => end_date}).desc(:time_stamp).limit(100)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trades }
    end
  end


  # GET /trades/1
  # GET /trades/1.json
  def show
    @trade = Trade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trade }
    end
  end

  # GET /trades/new
  # GET /trades/new.json
  def new
    @trade = Trade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trade }
    end
  end

  # GET /trades/1/edit
  def edit
    @trade = Trade.find(params[:id])
  end

  # POST /trades
  # POST /trades.json
  def create
    @trade = Trade.new(params[:trade])

    respond_to do |format|
      if @trade.save
        format.html { redirect_to @trade, notice: 'Trade was successfully created.' }
        format.json { render json: @trade, status: :created, location: @trade }
      else
        format.html { render action: "new" }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trades/1
  # PUT /trades/1.json
  def update
    @trade = Trade.find(params[:id])

    respond_to do |format|
      if @trade.update_attributes(params[:trade])
        format.html { redirect_to @trade, notice: 'Trade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trades/1
  # DELETE /trades/1.json
  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy

    respond_to do |format|
      format.html { redirect_to trades_url }
      format.json { head :no_content }
    end
  end
end
