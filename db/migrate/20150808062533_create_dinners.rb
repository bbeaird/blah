class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.integer :dinner_cooker_id
      t.date :date_cooked

      t.timestamps null: false
    end
  end
end
