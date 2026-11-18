class CreateProjectMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :project_materials do |t|
      t.references :project, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.integer :quantity_needed, null: false
      t.boolean :optional,        null: false, default: false

      t.timestamps
    end
  end
end
