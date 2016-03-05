class BasicInformation < ActiveRecord::Base
  belongs_to  :user

  has_many :skills

  validates :user_id, presence: true 
  validates :chinesename, presence: true
  validates :gender, presence: true
  validates :military_service, presence: true
  validates :telephone, presence: true
  validates :phone, presence: true

  validates :user_id, uniqueness: true
end

b = BasicInformation.new
b.valid? # => true
b.errors[:chinesename] # => []