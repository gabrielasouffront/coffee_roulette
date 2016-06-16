class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.datetime :start_month

      t.timestamps null: false
    end
  end
end
