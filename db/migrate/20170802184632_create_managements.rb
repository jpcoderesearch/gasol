class CreateManagements < ActiveRecord::Migration[5.0]
  def change
    create_table :managements do |t|
      t.boolean :present
      t.datetime :in_time
      t.datetime :out_time
      t.integer :target
      t.integer :page_processed
      t.integer :page_error

      t.timestamps
    end
  end
end
