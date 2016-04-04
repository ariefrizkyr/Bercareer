class AddCustomfieldsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :first_name, :string
    add_column :companies, :last_name, :string
    add_column :companies, :company_name, :string
    add_column :companies, :phone_number, :string
  end
end
