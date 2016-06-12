class CreateCoffeeDates < ActiveRecord::Migration
  def change
    create_table :coffee_dates do |t|
      t.datetime :start_month

      t.timestamps null: false
    end
  end
end
