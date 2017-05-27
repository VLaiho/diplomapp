class TeachersController < ApplicationController
	#before_filter :check_if_admin, only: [:edit, :update, :new, :create, :destroy]
	def index
		@teachers = Teacher.all
	end

	def show
		unless @teacher = Teacher.where(id: params[:id]).first
			render "teachers/show"
			render "public/404.html"
		end
	end

	def edit
		@teacher = Teacher.find(params[:id])
	end

	def update
		@teacher = Teacher.find(params[:id])
		@teacher.update_attributes(teacher_params)
		if @teacher.errors.empty?
			redirect_to teacher_path(@teacher)
		else
			render "edit"
		end
	end
	
	def new
		@teacher = Teacher.new
	end
	
	def create
		@teacher = Teacher.new(teacher_params)
		@teacher.save
		if @teacher.errors.empty?
			redirect_to teachers_path(@teacher)
		else
			render "new"
		end
	end

	def destroy
		@teacher = Teacher.find(params[:id])
		@teacher.destroy
		redirect_to action: "index"
	end

	private
	def teacher_params
		params.require(:teacher).permit(:name, :course_id)
	end

	def check_if_admin
		render file: "public/403.html", status: 403 unless current_user.try(:admin?)
	end

end
