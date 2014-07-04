require 'rails_helper'

RSpec.describe "MoreOfMyModels", :type => :request do
  describe "GET /more_of_my_models" do
    it "works! (now write some real specs)" do
      get more_of_my_models_path
      expect(response.status).to be(200)
    end
  end
end
