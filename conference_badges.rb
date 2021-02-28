# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    badges = []
    names.each{|person| badges << "Hello, my name is #{person}." }
    names = badges
end

=begin
def assign_rooms(attendees)
    room = 1 
    var_1 = []
    attendees.each do |person| 
         var_1 << "Hello, #{person}! You'll be assigned to room #{room}!"
        room +=1
    end
    attendees = var_1
end
=end


def assign_rooms(attendees)
    var_1 = []
    (attendees).each_with_index {|person, index|
    var_1 << "Hello, #{person}! You'll be assigned to room #{index+1}!"
    index +=1
    }
    attendees = var_1
end

=begin
def printer(attendees)
    temp = []
    attendees.each do |user|
        temp << batch_badge_creator(user)
        temp << assign_rooms(user)
    end
    attendees = temp
    return attendees
end
=end

def printer(attendees)
    batch_badge_creator(attendees).each{|user| puts user}
    assign_rooms(attendees).each{|user| puts user}
end

   # Question 4
    # The method `printer` should output first the results of the batch_badge_creator method and then of the assign_rooms method to the screen - this way you can output
    # the badges and room assignments one at a time.
    # To make this test pass, make sure you are iterating through your badges and room assignments lists.

#it 'should puts the list of badges and room_assignments' do
#      badges_and_room_assignments.each_line do |line|
        # $stdout is a Ruby global varibale that represents the current standard output.
        # In this case, the standard output is your terminal screen. This test, then,
        # is checking to see whether or not your terminal screen receives the correct
        # printed output.
      