require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bryan = Follower.new('Bryan', 29, 'Keep at it!')
susan = Follower.new('Susan', 27, 'Lovin it.')
molly = Follower.new('Molly', 32, 'I\'m here for it.')
delavonte = Follower.new('Delavonte', 43, 'Don\'t act like we both ain\'t thinkin\' it.')
reggie = Follower.new('Reggie', 51, 'Deee-vine!')
chunks = Follower.new('Chunks', 26, 'Are you gonna finish that?')
uncle = Follower.new('Uncle', 12, 'The book was better.')
steve = Follower.new('Steve', 35, 'Always wear cute pajamas to bed...')
skeeter = Follower.new('Skeeter', 11, 'His real name was Samuel Clemens!')
donk = Follower.new('Donk', 32, 'OMG I\'m dead.')
shirly = Follower.new('Shirly', 25, 'Who done it?')
dr_shrimp = Follower.new('Dr. Shrimp', 51, 'Spring Break!! Wooo!!!')

finders_keepers = Cult.new('Finders Keepers', 'Utah', 1985, 'Why not?', 30)
club_sandwiches = Cult.new('Club Sandwiches', 'Church', 1999, 'Avocado is always extra.', 40)
movie_theater_shushers = Cult.new('Movie Theater Shushers', 'Miles Away', 2047, 'The guy from Back to the Future framed Roger Rabbit!!')
tae_bo = Cult.new('Tae Bo', 'Utah', 2001, 'Double-time!!')
cyclists = Cult.new('cyclists', 'Busy Roads', 2008, 'On your left!!')

follow1 = bryan.join_cult(2018, finders_keepers)
follow2 = movie_theater_shushers.recruit_follower(1843, bryan)

follow3 = susan.join_cult(2019, finders_keepers)
follow4 = susan.join_cult(2016, club_sandwiches)
follow5 = tae_bo.recruit_follower(2004, susan)

follow6 = club_sandwiches.recruit_follower(2017, molly)
follow7 = movie_theater_shushers.recruit_follower(1701, molly)

follow8 = movie_theater_shushers.recruit_follower(2017, delavonte)
follow9 = delavonte.join_cult(2002, tae_bo)
follow10 = delavonte.join_cult(2003, club_sandwiches)
follow11 = finders_keepers.recruit_follower(2009, delavonte)

follow12 = club_sandwiches.recruit_follower(2017, reggie)
follow13 = movie_theater_shushers.recruit_follower(1745, reggie)

follow14 = club_sandwiches.recruit_follower(2017, chunks)
follow15 = movie_theater_shushers.recruit_follower(1745, chunks)

follow16 = club_sandwiches.recruit_follower(2017, uncle)
follow17 = movie_theater_shushers.recruit_follower(1745, uncle)

follow18 = club_sandwiches.recruit_follower(2017, steve)
follow19 = movie_theater_shushers.recruit_follower(1745, steve)

follow20 = club_sandwiches.recruit_follower(2017, shirly)
follow21 = movie_theater_shushers.recruit_follower(1745, shirly)

follow22 = tae_bo.recruit_follower(2017, donk)
follow23 = movie_theater_shushers.recruit_follower(1745, donk)

follow24 = tae_bo.recruit_follower(2017, skeeter)

follow25 = tae_bo.recruit_follower(2017, dr_shrimp)

follow26 = tae_bo.recruit_follower(2017, reggie)
follow27 = finders_keepers.recruit_follower(1745, reggie)
follow28 = cyclists.recruit_follower(2010, reggie)


binding.pry


puts 'Mwahahaha!' # just in case pry is buggy and exits