class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.references :student, index: true, foreign_key: true
      t.string :gender
      t.date :birth_date
      t.string :phone_number
      t.text :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code

      t.string :university
      t.string :major
      t.string :level
      t.date :grad_year
      t.float :gpa

      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :googleplus_url

      t.timestamps null: false

      ## Experience has own model
      ## Portfolio has own model
      ## Skills use acts as taggable on
      ## Languages use acts as taggable on
      
      t.timestamps null: false
    end
  end
end
