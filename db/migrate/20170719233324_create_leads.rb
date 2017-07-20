class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :fav_veg
      t.string :owner_renter_other
      t.string :indoor_outdoor
      t.string :space
      t.string :notes

      t.timestamps
    end
  end
end
