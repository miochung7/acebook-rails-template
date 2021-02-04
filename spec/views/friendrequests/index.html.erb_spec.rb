require 'rails_helper'

RSpec.describe "friendrequests/index", type: :view do
  before(:each) do
    assign(:friendrequests, [
      Friendrequest.create!(),
      Friendrequest.create!()
    ])
  end

  it "renders a list of friendrequests" do
    render
  end
end
