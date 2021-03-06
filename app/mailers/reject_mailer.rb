class RejectMailer < ActionMailer::Base
  default from: "ch12b034@smail.iitm.ac.in"

  def reject_notify(requestbook,user)
    @book = requestbook.book
    @user = user
    mail(to:@user.username.downcase+"@smail.iitm.ac.in",subject:"Student Library: Book Request rejected")
  end
end
