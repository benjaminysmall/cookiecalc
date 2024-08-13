require "rails_helper"

RSpec.describe SaveStatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/save_states").to route_to("save_states#index")
    end

    it "routes to #new" do
      expect(get: "/save_states/new").to route_to("save_states#new")
    end

    it "routes to #show" do
      expect(get: "/save_states/1").to route_to("save_states#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/save_states/1/edit").to route_to("save_states#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/save_states").to route_to("save_states#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/save_states/1").to route_to("save_states#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/save_states/1").to route_to("save_states#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/save_states/1").to route_to("save_states#destroy", id: "1")
    end
  end
end
