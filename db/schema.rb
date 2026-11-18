# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2026_11_18_094851) do
  create_table "materials", force: :cascade do |t|
    t.string "name", null: false
    t.string "category", null: false
    t.string "unit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_materials_on_name", unique: true
  end

  create_table "project_materials", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "material_id", null: false
    t.integer "quantity_needed", null: false
    t.boolean "optional", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_project_materials_on_material_id"
    t.index ["project_id"], name: "index_project_materials_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "craft_type", null: false
    t.string "occasion", null: false
    t.string "skill_level", null: false
    t.integer "estimated_minutes", null: false
    t.text "instructions", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["craft_type"], name: "index_projects_on_craft_type"
    t.index ["occasion"], name: "index_projects_on_occasion"
    t.index ["skill_level"], name: "index_projects_on_skill_level"
  end

  add_foreign_key "project_materials", "materials"
  add_foreign_key "project_materials", "projects"
end
