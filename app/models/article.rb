class Article < ApplicationRecord
	has_many :comments, as: :commentable
	has_many :magazines
	has_many :readers, through: :magazines
end
