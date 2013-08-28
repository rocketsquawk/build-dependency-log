# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(name: 'Foo', description: 'The classic foo project, which will have a dependency on Bar.')
Build.create(project_id: 1, project_name: 'Foo', build_version: '1.0.0.1') #1
Build.create(project_id: 1, project_name: 'Foo', build_version: '1.0.0.2') #2
Build.create(project_id: 1, project_name: 'Foo', build_version: '1.0.0.3') #3
Build.create(project_id: 1, project_name: 'Foo', build_version: '1.1.0.4') #4

Project.create(name: 'Bar', description: 'The classic bar project, which will be a dependant of Foo.')
Build.create(project_id: 2, project_name: 'Bar', build_version: '1.0.0.1') #5
Build.create(project_id: 2, project_name: 'Bar', build_version: '1.0.0.2') #6
Build.create(project_id: 2, project_name: 'Bar', build_version: '2.0.0.1') #7

Project.create(name: 'NaviNetEndUserKeyLogger', description: 'Top secret. Move along. Nothing to see here.')
Build.create(project_id: 3, project_name: 'NaviNetEndUserKeyLogger', build_version: '6.9.0.1') #8
Build.create(project_id: 3, project_name: 'NaviNetEndUserKeyLogger', build_version: '6.9.0.2') #9
Build.create(project_id: 3, project_name: 'NaviNetEndUserKeyLogger', build_version: '6.9.0.3') #10

Association.create(dependent_build_id: 1, dependent_project_name: 'Foo', dependent_build_version: '1.0.0.1',
	dependency_build_id: 5, dependency_project_name: 'Bar', dependency_build_version: '1.0.0.1')

Association.create(dependent_build_id: 2, dependent_project_name: 'Foo', dependent_build_version: '1.0.0.2',
	dependency_build_id: 5, dependency_project_name: 'Bar', dependency_build_version: '1.0.0.1')

Association.create(dependent_build_id: 3, dependent_project_name: 'Foo', dependent_build_version: '1.0.0.3',
	dependency_build_id: 6, dependency_project_name: 'Bar', dependency_build_version: '1.0.0.2')

Association.create(dependent_build_id: 4, dependent_project_name: 'Foo', dependent_build_version: '1.1.0.4',
	dependency_build_id: 7, dependency_project_name: 'Bar', dependency_build_version: '2.0.0.1')