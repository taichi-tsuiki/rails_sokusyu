class User < ApplicationRecord
    has_secure_password
    valitates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
