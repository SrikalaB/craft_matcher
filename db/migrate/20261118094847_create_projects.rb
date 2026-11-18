class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string  :title,             null: false
      t.text    :description,       null: false
      t.string  :craft_type,        null: false
      t.string  :occasion,          null: false
      t.string  :skill_level,       null: false
      t.integer :estimated_minutes, null: false
      t.text    :instructions,      null: false

      t.timestamps
    end
    add_index :projects, :craft_type
    add_index :projects, :occasion
    add_index :projects, :skill_level
  end
end
