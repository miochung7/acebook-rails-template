require 'rails_helper'

RSpec.describe "friendrequests/new", type: :view do
  before(:each) do
    assign(:friendrequest, Friendrequest.new())
  end

  it "renders new friendrequest form" do
    render

    assert_select "form[action=?][method=?]", friendrequests_path, "post" do
    end
  end
end
