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

ActiveRecord::Schema[7.1].define(version: 2024_11_06_115945) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "doctors", force: :cascade do |t|
    #doctor_creation
    t.string "full_name"
    t.string "username"
    t.string "email"
    t.boolean "admin"
    t.boolean "has_office"
    t.text "profile"
    t.datetime "last_updated"
    t.string "primary_state"
    t.string "primary_location"
    t.boolean "doctor", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false


    t.string "roles", default: [], array: true

    #personal
    t.string "ssn"
    t.string "last_name"
    t.string "first_name"
    t.date "date_of_birth"
    t.string "middle_initial"
    t.date "todays_date"
    t.string "languages_spoken1"
    t.string "languages_spoken2"
    t.string "languages_spoken3"
    t.string "dea_number"
    t.date "dea_issue_date"
    t.date "dea_expiration_date"
    t.string "state_license_number"
    t.string "license_issuing_state"
    t.date "license_expiration_date"
    t.date "controlled_substance_issue_date"
    t.string "medicaid_number"
    t.string "npi_number"
    t.string "state_controlled_substance_number"
    t.date "controlled_substance_expiration_date"
    t.string "professional_degree"
    t.boolean "is_male"
    t.boolean "is_female"
    t.boolean "is_owner"
    t.boolean "is_associate"
    t.boolean "is_dds"
    t.boolean "is_dmd", default: false
    t.boolean "is_general_dentist", default: false
    t.string "specialty"
    t.boolean "has_other", default: false
    t.string "other_details"

    #education
    t.string "school_name"
    t.date "end_date"
    t.string "speciality_school_name"
    t.date "speciality_end_date"
    t.boolean "is_endodontist", default: false
    t.boolean "is_oral_surgeon", default: false
    t.boolean "is_orthodontist", default: false
    t.boolean "is_pediatric_dentist", default: false
    t.boolean "is_periodontist", default: false
    t.boolean "is_prosthodontist", default: false
    t.boolean "are_you_periodontist", default: false
    t.boolean "are_you_endodontist", default: false
    t.boolean "are_you_oral_surgeon", default: false
    t.boolean "are_you_orthodontist", default: false
    t.boolean "is_pedodontist", default: false
    t.boolean "are_you_prosthodontist", default: false
    t.boolean "is_dental_anesthesiologist", default: false
    t.boolean "conscious_sedation", default: false
    t.boolean "general_anesthesia", default: false
    t.boolean "iv_sedation", default: false
    t.boolean "board_certified", default: false
    t.string "certifying_board"
    t.date "certification_expiration_date"
    t.string "cpr_certificate_number"
    t.date "cpr_effective_date"
    t.date "cpr_expiration_date"
    t.string "anesthesia_license_number"
    t.date "anesthesia_certification_issue_date"
    t.date "anesthesia_certification_expiration_date"
    t.boolean "has_hospital_privileges", default: false
    t.string "hospital_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"

    #office
    t.date "practice_start_date"
    t.string "practice_name"
    t.string "office_street_address"
    t.string "office_suite_bldg"
    t.string "office_city"
    t.string "office_state"
    t.string "office_zip"
    t.string "office_county"
    t.string "office_phone"
    t.string "office_fax"

    #work_history
    t.string "previous_employer_1_name"
    t.string "previous_employer_1_street_address"
    t.string "previous_employer_1_city"
    t.string "previous_employer_1_state"
    t.string "previous_employer_1_zip"
    t.string "previous_employer_1_phone"
    t.date "previous_employer_1_start_date"
    t.date "previous_employer_1_end_date"
    t.string "previous_employer_2_name"
    t.string "previous_employer_2_suite"
    t.string "previous_employer_2_state"
    t.string "previous_employer_2_zip"
    t.string "previous_employer_2_phone"
    t.date "previous_employer_2_start_date"
    t.date "previous_employer_2_end_date"
    t.string "previous_employer_3_name"
    t.date "previous_employer_3_start_date"
    t.date "previous_employer_3_end_date"
    t.text "work_history_gaps"

    #liability
    t.boolean "malpractice_insurance", default: false
    t.string "insurance_carrier_name"
    t.date "insurance_expiration_date"
    t.decimal "coverage_per_occurrence", precision: 10, scale: 2
    t.decimal "coverage_aggregate", precision: 10, scale: 2
    t.string "policy_number"
    t.boolean "liability_coverage_cancelled", default: false
    t.boolean "presently_pending", default: false
    t.boolean "liability_actions_past_5_years", default: false
    t.boolean "malpractice_occurrence", default: false

    #disclosure
    t.boolean "license_relinquished", default: false
    t.boolean "membership_voluntarily_relinquished", default: false
    t.boolean "dea_certificates_denied", default: false
    t.boolean "board_certification_suspended", default: false
    t.boolean "clinical_privileges_denied", default: false
    t.boolean "ever_been_disciplined", default: false
    t.boolean "dea_or_state_suspended", default: false
    t.boolean "action_against_you", default: false
    t.boolean "ever_been_denied_membership", default: false
    t.boolean "ever_been_convicted", default: false
    t.boolean "are_you_currently_engage", default: false
    t.boolean "have_you_ever_recieved_treatment_alcohol", default: false
    t.boolean "do_you_use", default: false
    t.boolean "risk_to_the_safety", default: false
    t.boolean "do_you_comply_with_federal", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
