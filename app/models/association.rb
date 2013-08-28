class Association < ActiveRecord::Base
  belongs_to :dependent_build, :class_name => 'Build'
  belongs_to :dependency_build, :class_name => 'Build'
  attr_accessible :dependency_build_id, :dependency_build_version, :dependency_project_name,
  	:dependent_build_id, :dependent_build_version, :dependent_project_name
end
