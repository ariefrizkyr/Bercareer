class AddAttachmentLogoToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :profiles, :logo
  end
end
