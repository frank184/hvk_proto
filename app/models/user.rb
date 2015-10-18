class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_and_belongs_to_many :addresses

  before_validation :set_default_user_role

  validates_presence_of :role_id

  private

    def set_default_user_role
      unless self.role_id.present?
        self.role_id = Role::CLIENT
      end
    end

end
