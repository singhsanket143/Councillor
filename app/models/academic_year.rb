class AcademicYear < ApplicationRecord
  has_many :batches
  has_many :users
  has_many :semesters
  def to_s
    self.start_year.to_s + '-' + self.end_year.to_s
  end
end
