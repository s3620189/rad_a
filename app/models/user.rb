class User < ApplicationRecord
    has_one_attached :image01
    has_many :posts
    has_many :comments
    attr_accessor :remember_token
    before_save{self.email=email.downcase}
    validates :username, presence: true, length: { maximum:25}
    VALID_PHONE_REGEX = /\d[0-9]\)*\z/
    validates :phone, presence: true, length: { in: 10..13},numericality: { only_integer: true },
                      format: {with: VALID_PHONE_REGEX}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255},
                      format: {with: VALID_EMAIL_REGEX},
                      uniqueness: {case_sensitive: false}
    validates :city, presence: true, length: { maximum:25}
    VALID_PASS_REGEX =/[a-zA-Z0-9]/
    has_secure_password
    validates :password, presence: true, length: { in: 8..20 }, allow_nil: true,
                         format: {with: VALID_PASS_REGEX}

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end 

    def User.new_token
        SecureRandom.urlsafe_base64
    end

    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    def authenticated?(remember_token)
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

    def forget
        update_attribute(:remember_digest, nil)
    end
end
