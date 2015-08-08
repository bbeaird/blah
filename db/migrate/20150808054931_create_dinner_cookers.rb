class CreateDinnerCookers < ActiveRecord::Migration
  def change
    create_table :dinner_cookers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
