require 'spec_helper'

describe "trades/show" do
  before(:each) do
    @trade = assign(:trade, stub_model(Trade))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
