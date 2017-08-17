require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "host_mail_confirmation" do
    mail = UserMailer.host_mail_confirmation
    assert_equal "Host mail confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
