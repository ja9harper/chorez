require 'spec_helper'

describe "chores/show" do
  before(:each) do
    @chore = assign(:chore, stub_model(Chore,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
