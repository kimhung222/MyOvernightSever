class Multiple < ActiveRecord::Base
	validates :content, presence: true,length: { minimum: 5 }
	validates :score, presence: true 
	validates :answer, presence: true , length: {minimum: 1}
	validates :A,presence: true, length: {minimum: 1}
	validates :B,presence: true, length: {minimum: 1}
	validates :C,presence: true, length: {minimum: 1}
	validates :D,presence: true, length: {minimum: 1}

end
