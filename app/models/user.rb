class User < ApplicationRecord
  has_secure_password

  validates :name , presence: true
  
  # uniquenessは着けない。https://github.com/rails/rails/pull/35350
  validates :email , presence: true

end
