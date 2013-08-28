class AssociationsController < ApplicationController
	def dependencies
		@dependencies = Association.where(dependent_build_version: params[:build_version],
				dependent_project_name: params[:name])
			.select([:id, :dependency_build_id, :dependency_project_name,
				:dependency_build_version, :created_at])

		respond_to do |format|
			format.json { render json: @dependencies }
			format.xml { render xml: @dependencies }
		end
	end

	def dependents
		@dependents = Association.where(dependency_build_version: params[:build_version],
				dependency_project_name: params[:name])
			.select([:id, :dependent_build_id, :dependent_project_name,
				:dependent_build_version, :created_at])

		respond_to do |format|
			format.json { render json: @dependents }
			format.xml { render xml: @dependents }
		end
	end
end
