class Semester < ApplicationRecord
  has_many :batches
  belongs_to :academic_year
  has_many :courses
  def to_s
    self.sem
  end
end
