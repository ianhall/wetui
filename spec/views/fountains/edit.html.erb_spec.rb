require 'rails_helper'

RSpec.describe "fountains/edit", :type => :view do
  before(:each) do
    @fountain = assign(:fountain, Fountain.create!(
      :location => "MyString",
      :photo_uri => "MyText",
      :updated_by => 1
    ))
  end

  it "renders the edit fountain form" do
    render

    assert_select "form[action=?][method=?]", fountain_path(@fountain), "post" do

      assert_select "input#fountain_location[name=?]", "fountain[location]"

      assert_select "textarea#fountain_photo_uri[name=?]", "fountain[photo_uri]"

      assert_select "input#fountain_updated_by[name=?]", "fountain[updated_by]"
    end
  end
end
