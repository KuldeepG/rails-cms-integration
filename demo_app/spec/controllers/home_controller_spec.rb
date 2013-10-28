require 'spec_helper'
describe HomeController do
  before do
    @user = User.create!(:email => 'abc@abc.com' , :password => 'abcd')
  end

  describe "Home Page" do
    it "should contain Welcome message" do
      get :index
      response.should render_template(:text => "Welcome")
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end