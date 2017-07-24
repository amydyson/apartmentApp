require 'rails_helper'

RSpec.describe "apartments/edit", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :street1 => "MyString",
      :street2 => "MyString",
      :city => "MyString",
      :zipcode => 1,
      :state => "MyString",
      :country => "MyString",
      :name => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do

      assert_select "input[name=?]", "apartment[street1]"

      assert_select "input[name=?]", "apartment[street2]"

      assert_select "input[name=?]", "apartment[city]"

      assert_select "input[name=?]", "apartment[zipcode]"

      assert_select "input[name=?]", "apartment[state]"

      assert_select "input[name=?]", "apartment[country]"

      assert_select "input[name=?]", "apartment[name]"

      assert_select "input[name=?]", "apartment[phone]"
    end
  end
end
