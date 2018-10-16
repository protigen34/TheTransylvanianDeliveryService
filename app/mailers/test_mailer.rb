class TestMailer < ApplicationMailer

def send_email
    mail( :to => "my-email@yahoo.com",
    :subject => 'Just a test' )
end
end

