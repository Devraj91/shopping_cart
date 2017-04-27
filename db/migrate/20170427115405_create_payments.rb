class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :cc_number
      t.integer :cvv_number
      t.string :validity
      t.boolean :status

      t.timestamps
    end
  end
end
