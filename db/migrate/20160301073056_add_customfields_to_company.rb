class AddCustomfieldsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :full_name, :string
    add_column :companies, :company_name, :string
    add_column :companies, :phone_number, :string
  end
end
