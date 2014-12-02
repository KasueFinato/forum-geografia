require 'test_helper'

class UsuarioMailerTest < ActionMailer::TestCase
  test "cadastrado" do
    mail = UsuarioMailer.cadastrado
    assert_equal "Cadastrado", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
