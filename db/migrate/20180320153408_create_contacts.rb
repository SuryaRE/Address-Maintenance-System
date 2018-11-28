class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :cname
      t.string :cnum
      t.string :group
      t.string :address
      t.string :state
      t.string :district

      t.timestamps null: false
    end
  end
end
