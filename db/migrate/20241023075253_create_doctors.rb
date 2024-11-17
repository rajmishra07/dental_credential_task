class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :full_name
      t.string :username
      t.string :email
      t.boolean :admin
      t.boolean :has_office
      t.text :profile
      t.datetime :last_updated
      t.string :primary_state
      t.string :primary_location
      t.timestamps
    end
  end
end
