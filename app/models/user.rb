class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :authentication_keys => [:name]
  validates :name, presence: true, allow_blank: false, uniqueness: true
  validates :password, length: { minimum: 8 }
end
