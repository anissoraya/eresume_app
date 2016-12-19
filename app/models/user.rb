class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,  request_keys: [:subdomain],
         :authentication_keys => [:login]
         attr_accessor :login

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  validate :validate_username

  has_attached_file :avatar, styles: { medium: "320x400>", thumb: "160x200>" }, default_url: "https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

    def validate_username
      if User.where(email: username).exists?
        errors.add(:username, :invalid)
      end
      if User.where(subdomain: subdomain).exists?
        errors.add(:subdomain, :invalid)
      end
    end

    def login=(login)
      @login = login
    end

    def login
      @login || self.username || self.email
    end

    def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        if conditions[:username].nil?
            where(conditions).first
        else
        where(username: conditions[:username]).first
        end
      end
    end

    #def self.find_for_authentication(warden_conditions)
    #  where(:email => warden_conditions[:email], :subdomain => warden_conditions[:subdomain]).first
    #end

    has_one :personal_detail, dependent: :destroy
    has_many :educations, dependent: :destroy
    has_many :employment_histories, dependent: :destroy
    has_one :summary, dependent: :destroy
    has_many :skills, dependent: :destroy
    has_many :languages, dependent: :destroy
    has_many :projects, dependent: :destroy
    has_many :references, dependent: :destroy
    has_one :user_layout, dependent: :destroy
    has_many :video_galleries, dependent: :destroy
    has_many :certificates, dependent: :destroy
end
