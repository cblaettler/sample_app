require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      expect(response).to be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      expect(response).to be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
  end


  it "should have the right title" do
      get 'home'
      expect(response.body).to include("home")
  end

  it "should have the right title" do
      get 'contact'
      expect(response.body).to include("contact")
  end
  it "should have the right title" do
      get 'about'
      expect(response.body).to include("about")
  end
end
