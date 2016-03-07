class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :job_type
      t.text :address
      t.string :city
      t.string :province
      t.string :country
      t.text :short_desc
      t.text :job_desc
      t.text :requirement
      t.text :benefit
      t.boolean :is_paid
      t.integer :salary
      t.string :salary_interval
      t.date :start_period
      t.date :end_period
      t.time :start_work
      t.time :end_work
      t.datetime :deadline
      t.string :urgency
      t.string :difficulties
      t.string :main_category
      t.string :second_category
      t.boolean :active
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
