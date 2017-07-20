class NewHavenLead < ApplicationRecord
	after_create :send_nick_an_email

	private
	def send_nick_an_email
		#@uname = "#{ENV['GMAIL_UNAME']}"
		#@pwd = "#{ENV['GMAIL_PSWD']}" 
		#@uname = "nick@vejy.club"
		#@pwd = "SilverDollarBroccoli"
		@uname = ENV["GMAIL_USERNAME"]
		@pwd = ENV["GMAIL_PASSWORD"]
		Gmail.connect( @uname, @pwd) do |gmail|
			email = gmail.compose do
	  			to "nick@vejy.club"
	  			subject "Someone joined Vejy Club..."
	  			body "Find out who."
			end
			email.deliver!
		end
		puts "\n\n============\n\n"
		p "output"
		p ENV["GMAIL_USERNAME"]
		p ENV["GMAIL_PASSWORD"]
		puts "\n\n============\n\n"
	end
end
