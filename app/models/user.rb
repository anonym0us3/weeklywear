class User < ActiveRecord::Base
  has_secure_password

  before_save { self.email = email.downcase }

  has_many :tshirts, dependent: :destroy
  has_many :votes, dependent: :destroy
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :username, :email, :password,
    presence: true,
    length: { maximum: 255 }

  VALID_EMAIL_REGEX = /\A[\w+\-.\+]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

  VALID_PASSWORD_REGEX = /\S.{7,}/
  validates :password,
    format: { with: VALID_PASSWORD_REGEX }

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
  
end
