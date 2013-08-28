class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.references :project
      t.string :project_name
      t.string :build_version

      t.timestamps
    end
    add_index :builds, :project_id
  end
end
