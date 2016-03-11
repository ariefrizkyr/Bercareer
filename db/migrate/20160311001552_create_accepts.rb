class CreateAccepts < ActiveRecord::Migration
  def change
    create_table :accepts do |t|
      t.references :job, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
