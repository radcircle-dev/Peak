class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments
  has_many :songs
  has_many :features

  validates :prname, presence: true
  validates :email, presence: true

  def to_s
    "#{prname}"
  end
end
