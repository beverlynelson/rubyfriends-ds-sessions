require "spec_helper"

describe PhoneNumbersController do
  describe "routing" do

    it "routes to #index" do
      get("/phone_numbers").should route_to("phone_numbers#index")
    end

    it "routes to #new" do
      get("/phone_numbers/new").should route_to("phone_numbers#new")
    end

    it "routes to #show" do
      get("/phone_numbers/1").should route_to("phone_numbers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phone_numbers/1/edit").should route_to("phone_numbers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phone_numbers").should route_to("phone_numbers#create")
    end

    it "routes to #update" do
      put("/phone_numbers/1").should route_to("phone_numbers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phone_numbers/1").should route_to("phone_numbers#destroy", :id => "1")
    end

  end
end
