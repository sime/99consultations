class Consultation < ActiveRecord::Migration
  def change
    add_column :consultations, :state, :text, default: 'Open'
  end
end
