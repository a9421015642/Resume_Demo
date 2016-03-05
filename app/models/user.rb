class User < ActiveRecord::Base
  has_one :basic_information
  has_many :works
  has_many :skills
  has_many :autobiographies
  has_many :connections , through: :skills


  has_secure_password validations: false

  #presence: true 一定會有值
  validates :name, presence: true
  validates :password_digest, presence: true
  #uniqueness: true 唯一值
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :name, length: { maximum: 20 }
  
end