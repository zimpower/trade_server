require 'spec_helper'

describe "trades/new" do
  before(:each) do
    assign(:trade, stub_model(Trade).as_new_record)
  end

  it "renders new trade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trades_path, "post" do
    end
  end
end
