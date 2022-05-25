# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
# 2. decrypt the encrypted string
# 3. check if decrypted value matches secret

secret = "tacos"
encrypted_secret = BCrypt::Password.create(secret)

puts encrypted_secret

decrypted_secret = BCrypt::Password.new(encrypted_secret)

puts "Is the password 'pupies'?"
puts decrypted_secret == 'pupies'

puts "Is the password 'tacos'?"
puts decrypted_secret == 'tacos'