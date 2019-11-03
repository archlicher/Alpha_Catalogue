# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_11_072517) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "button_manifests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.float "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "article_id"
    t.bigint "button_id"
    t.index ["article_id"], name: "index_button_manifests_on_article_id"
    t.index ["button_id"], name: "index_button_manifests_on_button_id"
  end

  create_table "buttons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "type_of_button"
    t.integer "size"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "name"
    t.string "accountable_person"
    t.string "bulstat"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fabric_manifests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.float "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "article_id"
    t.bigint "fabric_id"
    t.index ["article_id"], name: "index_fabric_manifests_on_article_id"
    t.index ["fabric_id"], name: "index_fabric_manifests_on_fabric_id"
  end

  create_table "fabrics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "fabric"
    t.string "composition"
    t.integer "weigth"
    t.string "color"
    t.string "measure"
    t.decimal "price", precision: 10, scale: 2
    t.float "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "label_manifests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.float "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "article_id"
    t.bigint "label_id"
    t.index ["article_id"], name: "index_label_manifests_on_article_id"
    t.index ["label_id"], name: "index_label_manifests_on_label_id"
  end

  create_table "labels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "measure"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rubber_manifests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.float "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "article_id"
    t.bigint "rubber_id"
    t.index ["article_id"], name: "index_rubber_manifests_on_article_id"
    t.index ["rubber_id"], name: "index_rubber_manifests_on_rubber_id"
  end

  create_table "rubbers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "color"
    t.float "width"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "threading_manifests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.float "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "article_id"
    t.bigint "threading_id"
    t.index ["article_id"], name: "index_threading_manifests_on_article_id"
    t.index ["threading_id"], name: "index_threading_manifests_on_threading_id"
  end

  create_table "threadings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "color"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zipper_manifests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "article_id"
    t.bigint "zipper_id"
    t.index ["article_id"], name: "index_zipper_manifests_on_article_id"
    t.index ["zipper_id"], name: "index_zipper_manifests_on_zipper_id"
  end

  create_table "zippers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.string "name"
    t.integer "zipper_length"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "button_manifests", "articles"
  add_foreign_key "button_manifests", "buttons"
  add_foreign_key "fabric_manifests", "articles"
  add_foreign_key "fabric_manifests", "fabrics"
  add_foreign_key "label_manifests", "articles"
  add_foreign_key "label_manifests", "labels"
  add_foreign_key "rubber_manifests", "articles"
  add_foreign_key "rubber_manifests", "rubbers"
  add_foreign_key "threading_manifests", "articles"
  add_foreign_key "threading_manifests", "threadings"
  add_foreign_key "zipper_manifests", "articles"
  add_foreign_key "zipper_manifests", "zippers"
end
