require 'rails_helper'

RSpec.describe "fountains/show", :type => :view do
  before(:each) do
    @fountain = assign(:fountain, Fountain.create!(
      :location => "Location",
      :photo_uri => "MyText",
      :updated_by => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
