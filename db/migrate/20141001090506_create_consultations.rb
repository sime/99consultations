class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.text :customer
      t.text :pictures
      t.text :style
      t.text :colors_materials_fabric
      t.text :furnish
      t.text :occupants
      t.text :must_have
      t.text :hate
      t.integer :budget
      t.date :when
      t.text :other

      t.timestamps
    end
  end
end
