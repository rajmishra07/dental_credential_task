class AddEducationInformationToDoctors < ActiveRecord::Migration[7.1]
  def change
    add_column :doctors, :school_name, :string
    add_column :doctors, :end_date, :date


    # Adding the School: Speciality fields
    add_column :doctors, :speciality_school_name, :string
    add_column :doctors, :speciality_end_date, :date
    
    # Adding specialty booleans
    add_column :doctors, :is_endodontist, :boolean, default: false
    add_column :doctors, :is_oral_surgeon, :boolean, default: false
    add_column :doctors, :is_orthodontist, :boolean, default: false
    add_column :doctors, :is_pediatric_dentist, :boolean, default: false
    add_column :doctors, :is_periodontist, :boolean, default: false
    add_column :doctors, :is_prosthodontist, :boolean, default: false


    add_column :doctors, :are_you_periodontist, :boolean , default: false
    add_column :doctors, :are_you_endodontist, :boolean , default: false
    add_column :doctors, :are_you_oral_surgeon, :boolean , default: false
    add_column :doctors, :are_you_orthodontist, :boolean , default: false
    add_column :doctors, :is_pedodontist, :boolean , default: false
    add_column :doctors, :are_you_prosthodontist, :boolean , default: false
    add_column :doctors, :is_dental_anesthesiologist, :boolean , default: false

    add_column :doctors, :conscious_sedation, :boolean , default: false
    add_column :doctors, :general_anesthesia, :boolean , default: false
    add_column :doctors, :iv_sedation, :boolean , default: false


    add_column :doctors, :board_certified, :boolean , default: false
    add_column :doctors, :certifying_board, :string
    add_column :doctors, :certification_expiration_date, :date


    add_column :doctors, :cpr_certificate_number, :string
    add_column :doctors, :cpr_effective_date, :date
    add_column :doctors, :cpr_expiration_date, :date


    add_column :doctors, :anesthesia_license_number, :string
    add_column :doctors, :anesthesia_certification_issue_date, :date
    add_column :doctors, :anesthesia_certification_expiration_date, :date

    add_column :doctors, :has_hospital_privileges, :boolean , default: false

    add_column :doctors, :hospital_name, :string
    add_column :doctors, :street_address, :string
    add_column :doctors, :city, :string
    add_column :doctors, :state, :string
    add_column :doctors, :zip, :string
    add_column :doctors, :phone, :string

  end
end
