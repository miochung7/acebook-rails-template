require 'rails_helper'

RSpec.describe "friendrequests/edit", type: :view do
  before(:each) do
    @friendrequest = assign(:friendrequest, Friendrequest.create!())
  end

  it "renders the edit friendrequest form" do
    render

    assert_select "form[action=?][method=?]", friendrequest_path(@friendrequest), "post" do
    end
  end
end
