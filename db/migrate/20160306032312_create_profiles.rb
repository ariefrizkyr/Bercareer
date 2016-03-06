class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :address
      t.string :city
      t.string :province
      t.string :country
      t.string :website
      t.string :field
      t.text :description
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
