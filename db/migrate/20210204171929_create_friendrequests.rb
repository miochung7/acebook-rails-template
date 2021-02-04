class CreateFriendrequests < ActiveRecord::Migration[5.1]
  def change
    create_table :friendrequests do |t|

      t.timestamps
    end
  end
end
