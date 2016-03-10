class StudentsController <ApplicationController
  def index
    @students = Student.includes(:resume)
  end

  def show
    @student = Student.find(params[:id])
  end

  def your_apply
    @applies = current_student.applies
  end
end
