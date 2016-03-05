class Skill <ActiveRecord::Base
  belongs_to :user
  
  #validates :title, :uniqueness => { :case_sensitive => false }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :status, presence: true
  validates :category, presence: true
  validates :title,  case_sensitive: false 
  validates :title, uniqueness: { scope: :user_id }
end