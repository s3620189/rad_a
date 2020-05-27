class Post < ApplicationRecord
   
    before_save :new_topic
    belongs_to :user
    has_many :comments
    validates :topic, presence: true, length: { maximum: 30}
    validates :title, presence: true, length: { maximum: 30}
    validates :content, presence: true, length: { maximum: 5000}
   

   def new_topic
     if self.topic == nil
        self.topic = "New"
     end
   end
end
