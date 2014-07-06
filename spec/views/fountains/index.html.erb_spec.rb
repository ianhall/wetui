require 'rails_helper'

RSpec.describe "fountains/index", :type => :view do
  before(:each) do
    assign(:fountains, [
      Fountain.create!(
        :location => "Location",
        :photo_uri => "MyText",
        :updated_by => 1
      ),
      Fountain.create!(
        :location => "Location",
        :photo_uri => "MyText",
        :updated_by => 1
      )
    ])
  end

  it "renders a list of fountains" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
