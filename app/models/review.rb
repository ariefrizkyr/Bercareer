class Review < ActiveRecord::Base
  belongs_to :student
  belongs_to :company
end
