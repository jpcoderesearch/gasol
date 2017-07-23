class CreateAboutus < ActiveRecord::Migration[5.0]
  def change
    create_table :aboutus do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :phone

      t.timestamps
    end
  end
end
