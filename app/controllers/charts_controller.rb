class ChartsController < ApplicationController

  def course_search
    response = CourseOutcomeValue.where(course_outcome_id: params["course_outcome"], course_id: params["course"])
    head = ["Academic year", "Value"]
    result = []
    result<<head
    response.each do |res|
      temp = [res.academic_year.start_year.to_s+"-"+res.academic_year.end_year.to_s, res.value]
      result<<temp
    end
    render :json => {data: result}
  end

  def course_outcome_search
    @course_outcome = CourseOutcome.all
  end
end
