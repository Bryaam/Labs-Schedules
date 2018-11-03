module ApplicationHelper

  def courses_for_select
    Course.all.pluck(:name, :id)  
  end

  def laboratory_classrooms_for_select
    LaboratoryClassroom.all.pluck(:name, :id)
  end

end
