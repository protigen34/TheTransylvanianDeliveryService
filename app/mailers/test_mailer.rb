class TestMailer < ApplicationMailer
  def send_email
    mail( :to => "somepleb271@yahoo.com",
    :subject => 'Just a test' )
  end
end
