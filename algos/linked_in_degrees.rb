class Person
  attr_accessor :list_of_friends
end

class DegreeFinder
  def find(subject,person)
    deg = 0
    if !subject.list_of_friends.nil? && !person.list_of_friends.nil?
      subject.list_of_friends.each do |subjectfriend|
        if person == subjectfriend
          deg = 1
        elsif person.list_of_friends.include? subjectfriend
          deg = 2
        else
          person.list_of_friends.each do |personfriend|
            if (!subjectfriend.list_of_friends.nil?) && (subjectfriend.list_of_friends.include? personfriend)
              deg = 3
            end
          end
        end
      end
    end
    deg
  end
end

#I could also have used
#      if subject.list_of_friends.include? person
#        deg = 1
#        return deg
#      end

# for the first degree and eliminated the first if condition but since something.include? is also a kind of iteration, i din't bother.
