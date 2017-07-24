class AddCustomerTypeToNewHavenLeads < ActiveRecord::Migration[5.0]
  def change
  	add_column :new_haven_leads, :customer_type, :string
  end
end
