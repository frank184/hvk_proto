class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  ### RELATIONSHIPS ###
  belongs_to :role
  has_and_belongs_to_many :addresses

  has_and_belongs_to_many :pets
  has_and_belongs_to_many :dogs, -> { dogs }, class_name: 'Pet'
  has_and_belongs_to_many :cats, -> { cats }, class_name: 'Pet'

  ### SCOPES ###
  scope :clients, -> { where role_id: Role::CLIENT }
  scope :employees, -> { where role_id: Role::EMPLOYEE }
  scope :admins, -> { where role_id: Role::SYSTEM_ADMINISTRATOR }

  ### VALIDATION ###
  before_validation :set_default_user_role
  validates_presence_of :role_id

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :phone_number

  ### CAN'T SEE ME BETCH! ###
  private

    def set_default_user_role
      unless self.role_id.present?
        self.role_id = Role::CLIENT
      end
    end

end
