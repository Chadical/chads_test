class MoreOfMyModel < ActiveRecord::Base
  belongs_to :my_model
  acts_as_votable 
end
