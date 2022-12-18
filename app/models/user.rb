class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Friend Request Modeling
  
  has_many :sent_friend_requests, foreign_key: :sender_id, class_name: 'FriendRequest', dependent: :destroy
  has_many :received_friend_requests, foreign_key: :receiver_id, class_name: 'FriendRequest', depdent: :destroy
    
end
