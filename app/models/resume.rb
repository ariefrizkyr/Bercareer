class Resume < ActiveRecord::Base
  belongs_to :student
  acts_as_taggable_on :skills, :languages
end
