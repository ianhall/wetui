require 'rails_helper'

RSpec.describe "fountains/new", :type => :view do
  before(:each) do
    assign(:fountain, Fountain.new(
      :location => "MyString",
      :photo_uri => "MyText",
      :updated_by => 1
    ))
  end

  it "renders new fountain form" do
    render

    assert_select "form[action=?][method=?]", fountains_path, "post" do

      assert_select "input#fountain_location[name=?]", "fountain[location]"

      assert_select "textarea#fountain_photo_uri[name=?]", "fountain[photo_uri]"

      assert_select "input#fountain_updated_by[name=?]", "fountain[updated_by]"
    end
  end
end
