class User < ActiveRecord::Base
	validates_presence_of :nome

	#validates_confirmation_of :senha
	#validates_length_of :senha, :minumum => 6, :allow_blank => false

	validates :email,	:presence => true,
						#:format => {:with => /\A[^@]+@[^@\.]+\z/ },
						:uniqueness => true
end
