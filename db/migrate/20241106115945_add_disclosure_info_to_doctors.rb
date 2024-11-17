class AddDisclosureInfoToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :license_relinquished, :boolean, default: false
    add_column :doctors, :membership_voluntarily_relinquished, :boolean, default: false
    add_column :doctors, :dea_certificates_denied, :boolean, default: false
    add_column :doctors, :board_certification_suspended, :boolean, default: false
    add_column :doctors, :clinical_privileges_denied, :boolean, default: false
    add_column :doctors, :ever_been_disciplined, :boolean, default: false
    add_column :doctors, :dea_or_state_suspended, :boolean, default: false
    add_column :doctors, :action_against_you, :boolean, default: false
    add_column :doctors, :ever_been_denied_membership, :boolean, default: false
    add_column :doctors, :ever_been_convicted, :boolean, default: false
    add_column :doctors, :are_you_currently_engage, :boolean, default: false
    add_column :doctors, :have_you_ever_recieved_treatment_alcohol, :boolean, default: false
    add_column :doctors, :do_you_use, :boolean, default: false
    add_column :doctors, :risk_to_the_safety, :boolean, default: false
    add_column :doctors, :do_you_comply_with_federal, :boolean, default: false
  end
end

