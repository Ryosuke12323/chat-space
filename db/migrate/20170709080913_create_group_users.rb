class CreateGroupUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :group_users do |t|
      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.references :users, foreign_key: true
      t.references :groups, foreign_key: true

      t.timestamps
    end
  end
end
