class Yorum < ApplicationRecord
	belongs_to :kitap
	belongs_to :user
end
