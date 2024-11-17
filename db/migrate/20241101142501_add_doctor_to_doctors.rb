class AddDoctorToDoctors < ActiveRecord::Migration[7.1]
  def change
    add_column :doctors, :doctor, :boolean,default: false
  end
end
