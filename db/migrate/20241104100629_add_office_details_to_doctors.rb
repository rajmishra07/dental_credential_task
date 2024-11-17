class AddOfficeDetailsToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :practice_start_date, :date
    add_column :doctors, :practice_name, :string
    add_column :doctors, :office_street_address, :string
    add_column :doctors, :office_suite_bldg, :string
    add_column :doctors, :office_city, :string
    add_column :doctors, :office_state, :string
    add_column :doctors, :office_zip, :string
    add_column :doctors, :office_county, :string
    add_column :doctors, :office_phone, :string
    add_column :doctors, :office_fax, :string
  end
end
