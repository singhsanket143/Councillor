class ProgramOutcomeValue < ApplicationRecord
  belongs_to :academic_year
  belongs_to :program_outcome
  belongs_to :course
end
