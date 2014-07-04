require "rails_helper"

RSpec.describe MoreOfMyModelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/more_of_my_models").to route_to("more_of_my_models#index")
    end

    it "routes to #new" do
      expect(:get => "/more_of_my_models/new").to route_to("more_of_my_models#new")
    end

    it "routes to #show" do
      expect(:get => "/more_of_my_models/1").to route_to("more_of_my_models#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/more_of_my_models/1/edit").to route_to("more_of_my_models#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/more_of_my_models").to route_to("more_of_my_models#create")
    end

    it "routes to #update" do
      expect(:put => "/more_of_my_models/1").to route_to("more_of_my_models#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/more_of_my_models/1").to route_to("more_of_my_models#destroy", :id => "1")
    end

  end
end
