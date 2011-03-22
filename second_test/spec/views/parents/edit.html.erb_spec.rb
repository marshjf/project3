require 'spec_helper'

describe "parents/edit.html.erb" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :new_record? => false,
      :name => "MyString",
      :email => "MyString",
      :tel => "MyString",
      :student_id => "MyString"
    ))
  end

  it "renders the edit parent form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => parent_path(@parent), :method => "post" do
      assert_select "input#parent_name", :name => "parent[name]"
      assert_select "input#parent_email", :name => "parent[email]"
      assert_select "input#parent_tel", :name => "parent[tel]"
      assert_select "input#parent_student_id", :name => "parent[student_id]"
    end
  end
end
