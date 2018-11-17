class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:common, :admin]

  has_many :reservation_requests

  def role_to_label
    if common?
      "Usuario"
    elsif admin?
      "Admin / Practicante"
    end
  end

end
