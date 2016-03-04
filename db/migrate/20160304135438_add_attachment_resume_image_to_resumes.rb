class AddAttachmentResumeImageToResumes < ActiveRecord::Migration
  def self.up
    change_table :resumes do |t|
      t.attachment :resume_image
    end
  end

  def self.down
    remove_attachment :resumes, :resume_image
  end
end
