class GroupsController < ApplicationController
	#before_filter :check_if_admin, only: [:edit, :update, :new, :create, :destroy]
	def index
		@groups = Group.all
	end

	def show
		unless @group = Group.where(id: params[:id]).first
			render "groups/show"
			render "public/404.html"
		end
	end

	def edit
		@group = Group.find(params[:id])
	end

	def update
		@group = Group.find(params[:id])
		@group.update_attributes(group_params)
		if @group.errors.empty?
			redirect_to group_path(@group)
		else
			render "edit"
		end
	end
	
	def new
		@group = Group.new
	end
	
	def create
		@group = Group.new(group_params)
		@group.save
		if @group.errors.empty?
			redirect_to groups_path(@group)
		else
			render "new"
		end
	end

	def destroy
		@group = Group.find(params[:id])
		@group.destroy
		redirect_to action: "index"
	end

	private
	def group_params
		params.require(:group).permit(:name, :course_id)
	end

	def check_if_admin
		render file: "public/403.html", status: 403 unless params[:admin]
	end

end
