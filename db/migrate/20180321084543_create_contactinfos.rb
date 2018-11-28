class CreateContactinfos < ActiveRecord::Migration
  def change
    create_table :contactinfos do |t|
      t.string :uname
      t.string :cname
      t.string :cnum
      t.string :group
      t.string :address
      t.string :district
      t.string :state

      t.timestamps null: false
    end
  end
end
