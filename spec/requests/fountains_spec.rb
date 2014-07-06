require 'rails_helper'

RSpec.describe "Fountains", :type => :request do
  describe "GET /fountains" do
    it "works! (now write some real specs)" do
      get fountains_path
      expect(response.status).to be(200)
    end
  end
end
