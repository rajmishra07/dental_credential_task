class AddWorkHistoryFieldsToDoctors < ActiveRecord::Migration[7.0]
  def change
    # Previous Employer 1 Fields
    add_column :doctors, :previous_employer_1_name, :string
    add_column :doctors, :previous_employer_1_street_address, :string
    add_column :doctors, :previous_employer_1_city, :string
    add_column :doctors, :previous_employer_1_state, :string
    add_column :doctors, :previous_employer_1_zip, :string
    add_column :doctors, :previous_employer_1_phone, :string
    add_column :doctors, :previous_employer_1_start_date, :date
    add_column :doctors, :previous_employer_1_end_date, :date

    # Previous Employer 2 Fields
    add_column :doctors, :previous_employer_2_name, :string
    add_column :doctors, :previous_employer_2_suite, :string
    add_column :doctors, :previous_employer_2_state, :string
    add_column :doctors, :previous_employer_2_zip, :string
    add_column :doctors, :previous_employer_2_phone, :string
    add_column :doctors, :previous_employer_2_start_date, :date
    add_column :doctors, :previous_employer_2_end_date, :date

    # Previous Employer 3 Fields
    add_column :doctors, :previous_employer_3_name, :string
    add_column :doctors, :previous_employer_3_start_date, :date
    add_column :doctors, :previous_employer_3_end_date, :date

    # Work History Gaps Fields (if any gaps details needed)
     add_column :doctors, :work_history_gaps, :text  
  end
end

