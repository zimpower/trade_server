require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TradesController do

  # This should return the minimal set of attributes required to create a valid
  # Trade. As you add validations to Trade, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TradesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all trades as @trades" do
      trade = Trade.create! valid_attributes
      get :index, {}, valid_session
      assigns(:trades).should eq([trade])
    end
  end

  describe "GET show" do
    it "assigns the requested trade as @trade" do
      trade = Trade.create! valid_attributes
      get :show, {:id => trade.to_param}, valid_session
      assigns(:trade).should eq(trade)
    end
  end

  describe "GET new" do
    it "assigns a new trade as @trade" do
      get :new, {}, valid_session
      assigns(:trade).should be_a_new(Trade)
    end
  end

  describe "GET edit" do
    it "assigns the requested trade as @trade" do
      trade = Trade.create! valid_attributes
      get :edit, {:id => trade.to_param}, valid_session
      assigns(:trade).should eq(trade)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Trade" do
        expect {
          post :create, {:trade => valid_attributes}, valid_session
        }.to change(Trade, :count).by(1)
      end

      it "assigns a newly created trade as @trade" do
        post :create, {:trade => valid_attributes}, valid_session
        assigns(:trade).should be_a(Trade)
        assigns(:trade).should be_persisted
      end

      it "redirects to the created trade" do
        post :create, {:trade => valid_attributes}, valid_session
        response.should redirect_to(Trade.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved trade as @trade" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trade.any_instance.stub(:save).and_return(false)
        post :create, {:trade => {  }}, valid_session
        assigns(:trade).should be_a_new(Trade)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trade.any_instance.stub(:save).and_return(false)
        post :create, {:trade => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested trade" do
        trade = Trade.create! valid_attributes
        # Assuming there are no other trades in the database, this
        # specifies that the Trade created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Trade.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => trade.to_param, :trade => { "these" => "params" }}, valid_session
      end

      it "assigns the requested trade as @trade" do
        trade = Trade.create! valid_attributes
        put :update, {:id => trade.to_param, :trade => valid_attributes}, valid_session
        assigns(:trade).should eq(trade)
      end

      it "redirects to the trade" do
        trade = Trade.create! valid_attributes
        put :update, {:id => trade.to_param, :trade => valid_attributes}, valid_session
        response.should redirect_to(trade)
      end
    end

    describe "with invalid params" do
      it "assigns the trade as @trade" do
        trade = Trade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Trade.any_instance.stub(:save).and_return(false)
        put :update, {:id => trade.to_param, :trade => {  }}, valid_session
        assigns(:trade).should eq(trade)
      end

      it "re-renders the 'edit' template" do
        trade = Trade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Trade.any_instance.stub(:save).and_return(false)
        put :update, {:id => trade.to_param, :trade => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested trade" do
      trade = Trade.create! valid_attributes
      expect {
        delete :destroy, {:id => trade.to_param}, valid_session
      }.to change(Trade, :count).by(-1)
    end

    it "redirects to the trades list" do
      trade = Trade.create! valid_attributes
      delete :destroy, {:id => trade.to_param}, valid_session
      response.should redirect_to(trades_url)
    end
  end

end
