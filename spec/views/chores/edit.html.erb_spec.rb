require 'spec_helper'

describe "chores/edit" do
  before(:each) do
    @chore = assign(:chore, stub_model(Chore,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit chore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chore_path(@chore), "post" do
      assert_select "input#chore_title[name=?]", "chore[title]"
      assert_select "textarea#chore_description[name=?]", "chore[description]"
    end
  end
end
