require 'rails_helper'

RSpec.describe "more_of_my_models/edit", :type => :view do
  before(:each) do
    @more_of_my_model = assign(:more_of_my_model, MoreOfMyModel.create!(
      :you_betcha => "MyString",
      :how_many => 1,
      :my_model => nil
    ))
  end

  it "renders the edit more_of_my_model form" do
    render

    assert_select "form[action=?][method=?]", more_of_my_model_path(@more_of_my_model), "post" do

      assert_select "input#more_of_my_model_you_betcha[name=?]", "more_of_my_model[you_betcha]"

      assert_select "input#more_of_my_model_how_many[name=?]", "more_of_my_model[how_many]"

      assert_select "input#more_of_my_model_my_model_id[name=?]", "more_of_my_model[my_model_id]"
    end
  end
end
