class Build < ActiveRecord::Base
  belongs_to :project
  has_many :dependencies, :class_name => 'Association', :foreign_key => 'dependent_build_id'
  has_many :dependents, :class_name => 'Association', :foreign_key => 'dependency_build_id'
  attr_accessible :project_id, :build_version, :project_name
end
