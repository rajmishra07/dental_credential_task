class AddRolesToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :roles, :string, array: true, default: []
  end
end
