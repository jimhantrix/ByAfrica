class AddAttachmentAvatarToUsers < ActiveRecord::Migration[5.2]
  

   def up
    change_table :users do |t|
      t.attachment :avatar
    end
  end

  def down
    remove_attachment :users, :avatar
  end
end
