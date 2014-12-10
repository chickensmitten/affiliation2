class Post < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'

  validates :description, presence: true

  self.per_page = 10

end
