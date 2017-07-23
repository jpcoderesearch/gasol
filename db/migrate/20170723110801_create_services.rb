class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :publishing
      t.string :software_products
      t.string :training
      t.string :clients

      t.timestamps
    end
  end
end
