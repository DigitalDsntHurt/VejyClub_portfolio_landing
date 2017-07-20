class CreateSimpleLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :simple_leads do |t|

      t.timestamps
    end
  end
end
