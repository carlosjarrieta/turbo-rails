class LessonsController < ApplicationController
  before_action :set_course
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  # GET /lessons
  def index
    @lessons = @course.lessons.all
  end

  # GET /lessons/1
  def show
  end

  # GET /lessons/new
  def new
    @lesson = @course.lessons.build
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  def create
    @lesson = @course.lessons.build(lesson_params)

    if @lesson.save
      respond_to do |format|
        format.html {
          redirect_to [@course, @lesson], notice: "@course.lessons was successfully created."
        }

        format.turbo_stream
      end
    else
      render :new
    end
  end

  # PATCH/PUT /lessons/1
  def update
    if @lesson.update(lesson_params)
      respond_to do |format|
        format.html {
          redirect_to [@course, @lesson], notice: "@course.lessons was successfully updated."
        }
        format.turbo_stream
      end
    else
      render :edit
    end
  end

  # DELETE /lessons/1
  def destroy
    @lesson.destroy
    redirect_to course_lessons_url(@course), notice: "@course.lessons was successfully destroyed."
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_lesson
    @lesson = @course.lessons.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def lesson_params
    params.require(:lesson).permit(:title, :content)
  end
end
