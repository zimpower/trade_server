require 'spec_helper'

describe "trades/edit" do
  before(:each) do
    @trade = assign(:trade, stub_model(Trade))
  end

  it "renders the edit trade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trade_path(@trade), "post" do
    end
  end
end
