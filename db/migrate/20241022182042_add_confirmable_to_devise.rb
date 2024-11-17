class AddConfirmableToDevise < ActiveRecord::Migration[7.1]
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
    add_index :users, :confirmation_token, unique: true

    User.update_all(confirmed_at: DateTime.now)
  end

  def down
    # Check if columns exist before attempting to remove them
    remove_column :users, :confirmation_token if column_exists?(:users, :confirmation_token)
    remove_column :users, :confirmed_at if column_exists?(:users, :confirmed_at)
    remove_column :users, :confirmation_sent_at if column_exists?(:users, :confirmation_sent_at)
    remove_column :users, :unconfirmed_email if column_exists?(:users, :unconfirmed_email)

    # Check if the index exists before attempting to remove it
    if index_exists?(:users, :confirmation_token)
      remove_index :users, :confirmation_token
    end
  end
end

