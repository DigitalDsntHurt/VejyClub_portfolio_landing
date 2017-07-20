class SignupMailer < ApplicationMailer
	default from: 'join@vejy.club'

	def someone_joined_alert
		mail(to: 'nick@vejy.club', subject: 'Someone joined Vejy Club...')
	end
end
