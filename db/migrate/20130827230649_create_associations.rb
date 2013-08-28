class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.references :dependent_build
      t.string :dependent_project_name
      t.string :dependent_build_version
      t.references :dependency_build
      t.string :dependency_project_name
      t.string :dependency_build_version

      t.timestamps
    end
    add_index :associations, :dependent_build_id
    add_index :associations, :dependency_build_id
  end
end
