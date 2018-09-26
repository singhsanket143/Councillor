class Semester < ApplicationRecord
  belongs_to :batch
  belongs_to :academic_year
  def to_s
    self.sem
  end
end
