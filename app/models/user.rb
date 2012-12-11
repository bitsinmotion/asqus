class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :authentications, :dependent => :delete_all
  has_many :groups, :through => :user_groups

  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :current_location, :birth_date, :sex

  include ActiveModel::Validations

  class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors.add attribute, (options[:message] || "is not an email") unless
        value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    end
  end

  validates :name, :presence => true, :length => { :maximum => 30 }
  validates :email, :presence => true, :uniqueness => true, :email => true


  def apply_omniauth(auth)
    info = auth['extra']['raw_info']
    self.email = info['email']
    self.name = info['first_name'] + ' ' + info['last_name']
    # self.sex = info['sex']
    # self.current_location = info['current_location']
    authentications.build(:provider => auth['provider'], :uid => auth['uid'], :token => auth['credentials']['token'])
  end  


end
