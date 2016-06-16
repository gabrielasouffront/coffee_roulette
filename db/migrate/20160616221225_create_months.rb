class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|

      t.timestamps null: false
    end
  end
end
