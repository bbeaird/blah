class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.date :date_cooked

      t.timestamps null: false
    end
  end
end
