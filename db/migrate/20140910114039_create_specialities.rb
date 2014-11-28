class CreateSpecialities < ActiveRecord::Migration
  def change
    create_table :specialities do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
