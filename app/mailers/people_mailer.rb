class PeopleMailer < ActionMailer::Base
  default from: "unified@post.com"

  def welcome_email(person)
    @person = person
    @url  = 'unified@post.com'
    mail(to: @person.email, subject: 'THANK YOU for registering!')
  end
end
