class AddTherapistIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :therapist_id, :integer, null: true
  end
end
