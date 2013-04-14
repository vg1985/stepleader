class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :password
      t.string :customername
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :first_name
      t.string :last_name
      t.string :phone1
      t.string :phone2
      t.string :role
      t.timestamps
    end
  end
end
