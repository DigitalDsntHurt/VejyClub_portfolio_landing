class CreateNewHavenLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :new_haven_leads do |t|
      t.string :name
      t.string :fav_veg
      t.string :email
      t.string :phone
      t.integer :zip
      t.text :space

      t.timestamps
    end
  end
end
