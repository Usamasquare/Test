class Reader < ApplicationRecord
	has_many :magazines
	has_many :articles, through: :magazines
end
