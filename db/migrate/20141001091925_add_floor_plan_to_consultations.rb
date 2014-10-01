class AddFloorPlanToConsultations < ActiveRecord::Migration
  def change
    add_column :consultations, :floor_plan, :string
  end
end
