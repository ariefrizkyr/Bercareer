class StudentsController <ApplicationController
  def index
    @students = Student.includes(:resume)
  end

  def show
    @student = Student.find(params[:id])
  end
end
