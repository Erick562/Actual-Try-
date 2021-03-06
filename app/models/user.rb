class User < ActiveRecord::Base 
	has_many :articles #you put the connections in the model files 
	before_save {self.email = email.downcase} #makes it so that the email gets put downcase b4 hitting the DB
	validates :username, presence: true, uniqueness: {case_sensitive: false} , length: {minimum: 4, maximum: 20}
	VALID_EMAIL_REGEX = /\A[\w+\-]+@[a-z\d\-_]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: {case_sensitive: true}, length: {minimum: 5, maximum: 20}, format: {with: VALID_EMAIL_REGEX}
end 

#oook so it appears that the hashes are used when you want to add attributes to a statement , get it bro?