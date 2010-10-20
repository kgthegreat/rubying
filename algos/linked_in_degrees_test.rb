require 'linked_in_degrees.rb'
require 'test/unit'

class LinkedInDegreesTest < Test::Unit::TestCase

  def test_finder_returns_0_if_subject_has_nil_friends
    subject = Person.new
    person = Person.new

    degreefinder = DegreeFinder.new
    assert_equal 0 , degreefinder.find(subject,person)

  end

  def test_finder_returns_0_if_subject_has_empty_friends
    subject = Person.new
    person = Person.new
    subject.list_of_friends = []
    degreefinder = DegreeFinder.new
    assert_equal 0 , degreefinder.find(subject,person)

  end

  def test_finder_returns_0_if_person_has_nil_friends
    subject = Person.new
    person = Person.new
    friend = Person.new
    subject.list_of_friends = [friend]
    degreefinder = DegreeFinder.new
    assert_equal 0 , degreefinder.find(subject,person)

  end

  def test_finder_returns_0_if_subject_and_person_not_connected
    subject = Person.new
    person = Person.new
    subjectconnection = Person.new
    personconnection = Person.new
    subject.list_of_friends = [subjectconnection]
    person.list_of_friends = [personconnection]
    degreefinder = DegreeFinder.new
    assert_equal 0 , degreefinder.find(subject,person)
  end

  def test_finder_returns_1_if_subject_and_person_directly_connected
    subject = Person.new
    person = Person.new
    subject.list_of_friends = [person]
    person.list_of_friends = [subject]
    degreefinder = DegreeFinder.new
    assert_equal 1 , degreefinder.find(subject,person)
  end

  def test_finder_returns_2_if_subject_and_person_connected_through_another_person
    subject = Person.new
    person = Person.new
    connection = Person.new
    subject.list_of_friends = [connection]
    person.list_of_friends = [connection]
    degreefinder = DegreeFinder.new
    assert_equal 2 , degreefinder.find(subject,person)
  end

  def test_finder_returns_3_if_subject_and_person_connected_through_two_different_person_who_are_friends
    subject = Person.new
    person = Person.new
    subjectconnection = Person.new
    personconnection = Person.new
    subject.list_of_friends = [subjectconnection]
    person.list_of_friends = [personconnection]
    subjectconnection.list_of_friends = [personconnection]
    degreefinder = DegreeFinder.new
    assert_equal 3 , degreefinder.find(subject,person)
  end

end
