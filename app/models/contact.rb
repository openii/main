class Contact < MailForm::Base
	attribute :name, 	:validate => true
	attribute :email,	:validate =>  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	#/\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

	attribute :message
	attribute :nickname, 	:captcha => true

	def headers
		{
			:subject => "Openii Contact",
			:to => "mhernand78@gmail.com",
			:from => %("#{name}" <#{email}>)

		}
	end
end