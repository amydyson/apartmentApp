require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :zipcode => 2,
        :state => "State",
        :country => "Country",
        :name => "Name",
        :phone => "Phone"
      ),
      Apartment.create!(
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :zipcode => 2,
        :state => "State",
        :country => "Country",
        :name => "Name",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => "Street1".to_s, :count => 2
    assert_select "tr>td", :text => "Street2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
