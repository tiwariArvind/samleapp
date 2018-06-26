class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # enum role: [:user, :vip, :admin]
  # after_initialize :set_default_role, :if => :new_record?

  # def set_default_role
  #   self.role ||= :admin
  # end
  #before_action :authenticate_user!

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  #include CanCan::Ability




  #enum role: [:superadmin]
  #after_initialize :set_default_role, :if => :new_record?

  # def set_default_role
  #   self.role ||= :superadmin
  # end
  # def initialize(user)
  #   can :read, :all . # permissions for every user, even if not logged in
  #   if user.present?  # additional permissions for logged in users (they can manage their posts)
  #     can :manage, Post, user_id: user.id
  #     if user.admin?  # additional permissions for administrators
  #       can :manage, :all
  #     end
  #   end
  # end

end
