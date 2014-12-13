require 'spec_helper'

describe "chores/new" do
  before(:each) do
    assign(:chore, stub_model(Chore,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new chore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chores_path, "post" do
      assert_select "input#chore_title[name=?]", "chore[title]"
      assert_select "textarea#chore_description[name=?]", "chore[description]"
    end
  end
end
