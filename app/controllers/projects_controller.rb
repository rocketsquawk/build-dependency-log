class ProjectsController < ApplicationController
	def index
		@projects = Project.all
		respond_to do |format|
			format.json { render json: @projects }
			format.xml { render xml: @projects }
		end
	end

	def show
		@project = Project.find_by_name(params[:name])
		respond_to do |format|
			format.json { render json: @project }
			format.xml { render xml: @project }
		end
	end
end
