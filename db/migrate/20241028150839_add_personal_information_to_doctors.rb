class AddPersonalInformationToDoctors < ActiveRecord::Migration[7.1]
  def change
    add_column :doctors, :ssn, :string
    add_column :doctors, :last_name, :string
    add_column :doctors, :first_name, :string
    add_column :doctors, :date_of_birth, :date
    add_column :doctors, :middle_initial, :string
    add_column :doctors, :todays_date, :date

    add_column :doctors, :languages_spoken1, :string
    add_column :doctors, :languages_spoken2, :string
    add_column :doctors, :languages_spoken3, :string
    add_column :doctors, :dea_number, :string
    add_column :doctors, :dea_issue_date, :date
    add_column :doctors, :dea_expiration_date, :date
    add_column :doctors, :state_license_number, :string
    add_column :doctors, :license_issuing_state, :string
    add_column :doctors, :license_expiration_date, :date

    add_column :doctors, :controlled_substance_issue_date, :date
    add_column :doctors, :medicaid_number, :string
    add_column :doctors, :npi_number, :string
    add_column :doctors, :state_controlled_substance_number, :string
    add_column :doctors, :controlled_substance_expiration_date, :date
    add_column :doctors, :professional_degree, :string
    add_column :doctors, :is_male, :boolean
    add_column :doctors, :is_female, :boolean
    add_column :doctors, :is_owner, :boolean
    add_column :doctors, :is_associate, :boolean
    add_column :doctors, :is_dds, :boolean

    add_column :doctors, :is_dmd, :boolean, default: false
    add_column :doctors, :is_general_dentist, :boolean, default: false
    add_column :doctors, :specialty, :string
    add_column :doctors, :has_other, :boolean, default: false
    add_column :doctors, :other_details, :string

  end
end
