class AddLiabilityFieldsToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :malpractice_insurance, :boolean, default: false
    add_column :doctors, :insurance_carrier_name, :string
    add_column :doctors, :insurance_expiration_date, :date
    add_column :doctors, :coverage_per_occurrence, :decimal, precision: 10, scale: 2
    add_column :doctors, :coverage_aggregate, :decimal, precision: 10, scale: 2
    add_column :doctors, :policy_number, :string
    add_column :doctors, :liability_coverage_cancelled, :boolean, default: false
    add_column :doctors, :presently_pending, :boolean, default: false
    add_column :doctors, :liability_actions_past_5_years, :boolean, default: false
    add_column :doctors, :malpractice_occurrence, :boolean, default: false

  end
end
