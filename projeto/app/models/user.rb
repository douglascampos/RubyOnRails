class User < ActiveRecord::Base
	validates_presence_of :nome ,:password

	validates_confirmation_of :password
	validates_length_of :password, :minumum => 6, :allow_blank => false

	validates :email,	:presence => true,
						#:format => {:with => /\A[^@]+@[^@\.]+\z/ },
						:uniqueness => true
	#has_secure_password
end
