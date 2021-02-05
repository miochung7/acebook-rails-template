class AddFriendIdField < ActiveRecord::Migration[5.1]
  def change
    add_reference :friendships, :friend, references: :users, foreign_key: {to_table: :users}
  end
end
# This means that we are referencing to a table called friend for the friend_id field. 
# However, the friends table references the users table. As for the foreign key, it will assign the id of the user, 
# who recieves the friend request, to the friend_id field.