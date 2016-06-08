class CommentNotifier < ApplicationMailer
  default :from => 'littletolargecomments@gmail.com'

    # send a signup email to the user, pass in the user object that   contains the user's email address
    def send_comment_email(user)
    @user = user
    mail( :to => 'littletolargecomments@gmail.com',
      :subject => 'Comment from a User' )
    end
end
