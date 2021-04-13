class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  
  enum role: [:patient, :therapist, :admin]

  has_many :tasks, dependent: :nullify

  has_many :patients, :class_name => "User", :foreign_key => "therapist_id"
  belongs_to :therapist, :class_name => "User", optional: true

  after_initialize do
    if self.new_record?
      self.role ||= :standard
    end
  end

end
