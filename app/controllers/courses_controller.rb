class CoursesController < ApplicationController
	#before_action :check_if_admin, only: [:edit, :update, :new, :create, :destroy]
	def index
		@courses = Course.all
	end

	def show
		unless @course = Course.where(id: params[:id]).first
			render "courses/show"
			render "public/404.html"
		end
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		@course.update_attributes(course_params)
		if @course.errors.empty?
			redirect_to course_path(@course)
		else
			render "edit"
		end
	end
	
	def new
		@course = Course.new
	end
	
	def create
		@course = Course.new(course_params)
		@course.save
		if @course.errors.empty?
			redirect_to courses_path(@course)
		else
			render "new"
		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		redirect_to action: "index"
	end
	
	private
	def course_params
		params.require(:course).permit(:name, :group_id)
	end

	#def check_if_admin
		#render file: "public/403.html", status: 403 unless params[:admin]
	#end

end
