class Card < ActiveRecord::Base
	validates :japanese, :english, presence: true,
				length: {minimum: 1}
end

