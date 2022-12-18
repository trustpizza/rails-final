class FriendRequest < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belogns_to :receiver, class_name: 'User'
end
