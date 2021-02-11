class User < ApplicationRecord

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :friends

  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  has_many :likes, dependent: :destroy


  def users_not_friends_with
    
    sql = <<-SQL
    SELECT * FROM users
      WHERE id NOT IN(
        (SELECT DISTINCT("friends".id)
      FROM "friendships"
      INNER JOIN "users" ON friendships.user_id = users.id
      INNER JOIN "users" friends ON friendships.friend_id = friends.id
      WHERE users.id = '#{id}'
    ));
    SQL
    results = ActiveRecord::Base.connection.execute(sql)
    results.map do |result|
      User.new(result)
    end
  end

  def friend_count
    friendships.where(status: true).count + inverse_friendships.where(status: true).count
  end


end

