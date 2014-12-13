require 'spec_helper'

describe "chores/index" do
  before(:each) do
    assign(:chores, [
      stub_model(Chore,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(Chore,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of chores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
