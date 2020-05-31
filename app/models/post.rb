class Post < ApplicationRecord
   
    default_scope { order('updated_at DESC') }
    belongs_to :user
    has_many :comments
    validates :topic, presence: true, length: { maximum: 30}
    validates :title, presence: true, length: { maximum: 30}
    validates :content, presence: true, length: { maximum: 5000}
   


end
