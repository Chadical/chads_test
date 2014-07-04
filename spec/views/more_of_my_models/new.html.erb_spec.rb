require 'rails_helper'

RSpec.describe "more_of_my_models/new", :type => :view do
  before(:each) do
    assign(:more_of_my_model, MoreOfMyModel.new(
      :you_betcha => "MyString",
      :how_many => 1,
      :my_model => nil
    ))
  end

  it "renders new more_of_my_model form" do
    render

    assert_select "form[action=?][method=?]", more_of_my_models_path, "post" do

      assert_select "input#more_of_my_model_you_betcha[name=?]", "more_of_my_model[you_betcha]"

      assert_select "input#more_of_my_model_how_many[name=?]", "more_of_my_model[how_many]"

      assert_select "input#more_of_my_model_my_model_id[name=?]", "more_of_my_model[my_model_id]"
    end
  end
end
