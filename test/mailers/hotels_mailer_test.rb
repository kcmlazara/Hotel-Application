require "test_helper"

class HotelsMailerTest < ActionMailer::TestCase
  test "updated" do
    mail = HotelsMailer.updated
    assert_equal "Updated", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
