require 'test/unit'
require '../secret_santa'

class Secret_Santa_Test < Test::Unit::TestCase

  def test_person_equal_method_returns_true_if_persons_have_same_firstname_lastname_email
    adam1 = Person.new('Adam','Boston','adam@boston.com')
    adam2 = Person.new('Adam','Boston','adam@boston.com')
    assert(adam1==adam2)
  end

  def test_person_equal_method_returns_false_if_persons_have_different_firstname
    michael = Person.new('Michael','Boston','adam@boston.com')
    adam = Person.new('Adam','Boston','adam@boston.com')
    assert(!(michael==adam))
  end

  def test_person_isfamily_method_returns_true_if_lastname_is_same
    michael = Person.new('Michael','Boston','adam@boston.com')
    adam = Person.new('Adam','Boston','adam@boston.com')
    assert(michael.isFamily? adam)
  end

end
