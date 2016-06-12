class CreateGuestLists < ActiveRecord::Migration
  def change
    create_table :guest_lists do |t|
      t.string :user_id
      t.string :coffee_date_id

      t.timestamps null: false
    end
  end
end
