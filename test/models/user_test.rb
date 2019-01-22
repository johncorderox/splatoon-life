require 'test_helper'

class UserTest < ActiveSupport::TestCase

test 'valid user' do

end

test 'invalid without username' do
user = User.new(email: "abc@123.com", encrypted_password: "$2a$11$KO4PQA6kxTgn.hwhFJWSU.fRdNt7q7wbjeYXXV.7b8VcpzePteCu2", location: "USA", username: "test", favorite_weapon: "Splat Charger", splatoon_game: "Splatoon 2", timezone: "PST", voice_chat: true, language: "English", friend_code: "AHS-13-AS33SDX")
assert user.valid?
end
#
test 'invalid without email' do

end

test 'invalud without splatoon_game' do

end

test 'invalid without timezone' do

end

test 'invalid without voice_chat' do

end

test 'invalid without language' do

end

test 'invalid without friend code' do

end

end


# test length, test boolean, unique
