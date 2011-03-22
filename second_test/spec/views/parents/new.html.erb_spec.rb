require 'spec_helper'

describe "parents/new.html.erb" do
  before(:each) do
    assign(:parent, stub_model(Parent,
      :name => "MyString",
      :email => "MyString",
      :tel => "MyString",
      :student_id => "MyString"
    ).as_new_record)
  end

  it "renders new parent form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => parents_path, :method => "post" do
      assert_select "input#parent_name", :name => "parent[name]"
      assert_select "input#parent_email", :name => "parent[email]"
      assert_select "input#parent_tel", :name => "parent[tel]"
      assert_select "input#parent_student_id", :name => "parent[student_id]"
    end
  end
end
