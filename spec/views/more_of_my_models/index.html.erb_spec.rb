require 'rails_helper'

RSpec.describe "more_of_my_models/index", :type => :view do
  before(:each) do
    assign(:more_of_my_models, [
      MoreOfMyModel.create!(
        :you_betcha => "You Betcha",
        :how_many => 1,
        :my_model => nil
      ),
      MoreOfMyModel.create!(
        :you_betcha => "You Betcha",
        :how_many => 1,
        :my_model => nil
      )
    ])
  end

  it "renders a list of more_of_my_models" do
    render
    assert_select "tr>td", :text => "You Betcha".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
