class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  def jwt_payload
    { email: email, admin: admin }
  end
  
  def on_jwt_dispatch(token, payload)
    JwtBlacklist.where("exp < ?", Date.today).destroy_all
  end
end
