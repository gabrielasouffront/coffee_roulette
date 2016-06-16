class CreateCoffeeDates < ActiveRecord::Migration
  def change
    create_table :coffee_dates do |t|
      t.integer :month_id

      t.timestamps null: false
    end
  end
end
