class Batch < ApplicationRecord
  belongs_to :academic_year
  has_many :users
  belongs_to :semester
  belongs_to :admin_user

  def to_s
    self.semester.sem.to_s + "C" +self.batch_code
  end
end
