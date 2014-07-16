require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      expect(response).to be_success
    end

# couldn't get this test running :(
#
   it "should have the right title" do
#
        get 'home'

#response.should have_selector("title", :content => "Ruby")
#expect(response).to have_selector("title", :content => "Ruby")
#
#expect(response).to have_title('Ruby')
expect(response).to have_selector('title', :content => "Ruby")
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


end
