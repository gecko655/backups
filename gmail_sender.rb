# require
# gem install gmail
require "gmail"

USERNAME = "from_address@hoge.jp"
PASSWORD = "password"
def mail(subject, body, to)

  gmail = Gmail.new(USERNAME, PASSWORD)

  message =
    gmail.compose do
      to to
      subject subject
      html_part do
        content_type "text/plain; charset=UTF-8"
        body body
      end
    end

  message.deliver!
  gmail.logout
end

to="to_address1@hoge.jp, to_address2.hoge.jp"
subject="subject"
body=<<-"EOS"

Body
Body

EOS

mail(subject, body, to)

