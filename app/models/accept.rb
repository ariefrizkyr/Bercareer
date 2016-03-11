class Accept < ActiveRecord::Base
  belongs_to :job
  belongs_to :student
  belongs_to :company
end
