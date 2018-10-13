class User < ApplicationRecord
    has_secure_password # Encripta la contraseña
end
