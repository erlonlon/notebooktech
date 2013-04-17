class AddAttachmentFotoToGalleries < ActiveRecord::Migration
  def self.up
    change_table :galleries do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :galleries, :foto
  end
end
