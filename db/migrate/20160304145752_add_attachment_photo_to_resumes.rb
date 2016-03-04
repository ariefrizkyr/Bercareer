class AddAttachmentPhotoToResumes < ActiveRecord::Migration
  def self.up
    change_table :resumes do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :resumes, :photo
  end
end
