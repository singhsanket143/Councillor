class ProgramSourceOutcomeValue < ApplicationRecord
  belongs_to :academic_year
  belongs_to :program_source_outcome
  belongs_to :course
end
