class StudentsController < ApplicationController
	#before_filter :check_if_admin, only: [:edit, :update, :new, :create, :destroy]
	def index
		@students = Student.all
	end

	def show
		unless @student = Student.where(id: params[:id]).first
			render "students/show"
			render "public/404.html"
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update_attributes(student_params)
		if @student.errors.empty?
			redirect_to student_path(@student)
		else
			render "edit"
		end
	end
	
	def new
		@student = Student.new
	end
	
	def create
		@student = Student.new(student_params)
		@student.save
		if @student.errors.empty?
			redirect_to students_path(@student)
		else
			render "new"
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to action: "index"
	end

	private
	def student_params
		params.require(:student).permit(:name, :birth_date, :school_name, :address, :passport_data, :phone_number, :group_id)
	end

	def check_if_admin
		render file: "public/403.html", status: 403 unless params[:admin]
	end

end
