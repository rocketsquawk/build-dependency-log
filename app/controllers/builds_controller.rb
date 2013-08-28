class BuildsController < ApplicationController
	def index
		@builds = Project.find_by_name(params[:name]).builds
		respond_to do |format|
			format.json { render json: @builds }
			format.xml { render xml: @builds }
		end
	end

	def show
		#@build = Build.find_by_build_version(params[:build_version])
		@build = Build.where(project_name: params[:name], build_version: params[:build_version])
		respond_to do |format|
			format.json { render json: @build }
			format.xml { render xml: @build }
		end
	end
end
