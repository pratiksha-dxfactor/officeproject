class CreateUserAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.text :address_1
      t.text :address_2
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :phone
      t.string :mobile

      t.timestamps
    end
  end
end
