class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true
  validates :email,
            presence: true,
            format: {
              with: /\A\S+@\S{2,}\z/,
              message: 'E-mail is not a valid format'
            }
end
