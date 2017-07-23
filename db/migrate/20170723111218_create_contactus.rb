class CreateContactus < ActiveRecord::Migration[5.0]
  def change
    create_table :contactus do |t|
      t.string :name
      t.integer :phone
      t.string :email_id
      t.text :comments

      t.timestamps
    end
  end
end
