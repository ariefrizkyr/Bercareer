class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.belongs_to :resume, index: true, foreign_key: true
      t.string :company_name
      t.string :position
      t.date :start_work
      t.date :end_work
      t.boolean :is_current
      t.string :description

      t.timestamps null: false
    end
  end
end
