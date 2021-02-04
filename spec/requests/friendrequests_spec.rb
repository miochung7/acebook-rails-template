require 'rails_helper'

RSpec.describe "Friendrequests", type: :request do
  describe "GET /friendrequests" do
    it "works! (now write some real specs)" do
      get friendrequests_path
      expect(response).to have_http_status(200)
    end
  end
end
