class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.belongs_to :resume, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
