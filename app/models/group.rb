class Group < ApplicationRecord
  has_many :group_purchases, dependent: :destroy
  has_many :purchases, through: :group_purchases

  belongs_to :user

  validates :name, presence: true, length: { maximum: 36 },
                   uniqueness: { scope: :user, message: 'User has already a group with this name' }
  validates :icon, presence: true, length: { maximum: 250 }
end
