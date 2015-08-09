class AddMoveInDateToDinnerCookers < ActiveRecord::Migration
  def change
  	add_column :dinner_cookers, :move_in_date, :date
  end
end
