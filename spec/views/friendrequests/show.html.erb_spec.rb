require 'rails_helper'

RSpec.describe "friendrequests/show", type: :view do
  before(:each) do
    @friendrequest = assign(:friendrequest, Friendrequest.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
