class Yesno < ActiveRecord::Base
	validates :content, presence: true,length: { minimum: 5 }
	validates :score, presence: true 
	validates :answer, presence: true , length: {minimum: 1}
end
