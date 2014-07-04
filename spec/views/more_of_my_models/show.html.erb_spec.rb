require 'rails_helper'

RSpec.describe "more_of_my_models/show", :type => :view do
  before(:each) do
    @more_of_my_model = assign(:more_of_my_model, MoreOfMyModel.create!(
      :you_betcha => "You Betcha",
      :how_many => 1,
      :my_model => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/You Betcha/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
