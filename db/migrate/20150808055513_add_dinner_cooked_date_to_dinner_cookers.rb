class AddDinnerCookedDateToDinnerCookers < ActiveRecord::Migration
  def change
  	add_column :dinner_cookers, :dinner_cooked_date, :datetime
  end
end
