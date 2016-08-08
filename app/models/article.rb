class Article < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 10, maximum: 30}
	validates :description, presence: true, length: { minimum: 20, maximum: 70}
end