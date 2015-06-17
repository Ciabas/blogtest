class User < ActiveRecord::Base
	has_many :post_to_users
	has_many :posts, through: :post_to_users

	has_many :comments

	validates :login, :password, presence: true
	validates :login, format: /[A-Z]*[a-z]*[1-9]*/
	validates :password, length: {in: 6..20}
	validates :age, numericality: { only_integer: true }
	validates :email, format: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

	 scope :old, -> {where(age > 60)}
	 scope :mature, -> {where (age >= 18)}
end