require 'spec_helper'

describe "trades/index" do
  before(:each) do
    assign(:trades, [
      stub_model(Trade),
      stub_model(Trade)
    ])
  end

  it "renders a list of trades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
