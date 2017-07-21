class NewHavenLead < ApplicationRecord
	#validates :name, :email, :zip, :presence => true
	#validates :zip, :length => { :is => 5 }
	#validates :email, :length => { :minimum => 9 }
	after_create :send_nick_an_email

	private
	def send_nick_an_email
		Gmail.connect( ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"]) do |gmail|
			email = gmail.compose do
	  			to "nick@vejy.club"
	  			subject "Someone joined Vejy Club..."
	  			body "Find out who."
			end
			email.deliver!
		end
	end
end
