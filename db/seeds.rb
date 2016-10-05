# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Rsvp.delete_all
Event.delete_all
Venue.delete_all
Review.delete_all
Subscription.delete_all
Package.delete_all
Broadcast.delete_all
Tag.delete_all
Tagging.delete_all
GlobalBroadcast.delete_all


kyle = User.create(
	user_type: "admin",
	first_name: "Kyle",
	last_name: "Kremski",
	password: 'password',
	email: "kkremski@gmail.com",
	zip: 60647
	)


rob = User.create(
	user_type: "admin",
	first_name: "Rob",
	last_name: "Dale",
	password: 'password',
	email: "robzd1@gmail.com",
	zip: 60647
	)



kyles = Venue.create(name: "Kyle's House", user_id: kyle.id)
robs = Venue.create(name: "Rob's House", user_id: rob.id)

Package.create(name: "NHL Center Ice")
Package.create(name: "NFL Sunday Ticket")

Subscription.create(venue_id: 1, package_id: 1)
Subscription.create(venue_id: 2, package_id: 2)


bruins = Tag.create(name: "Boston Bruins")
sabres = Tag.create(name: "Buffalo Sabres")
wings = Tag.create(name: "Detroit Red Wings")
panthers = Tag.create(name: "Florida Panthers")
canadiens = Tag.create(name: "Montreal Canadiens")
senators = Tag.create(name: "Ottawa Senators")
lightning = Tag.create(name: "Tampa Bay Lightning")
leafs = Tag.create(name: "Toronto Maple Leafs")
hurricanes = Tag.create(name: "Carolina Hurricanes")
jackets = Tag.create(name: "Columbus Blue Jackets")
devils = Tag.create(name: "New Jersey Devils")
islanders = Tag.create(name: "New York Islanders")
rangers = Tag.create(name: "New York Rangers")
flyers = Tag.create(name: "Philadelphia Flyers")
penguins = Tag.create(name: "Pittsburgh Penguins")
capitals = Tag.create(name: "Washington Capitals")
ducks = Tag.create(name: "Anaheim Ducks")
coyotes = Tag.create(name: "Arizona Coyotes")
flames = Tag.create(name: "Calgary Flames")
oilers = Tag.create(name: "Edmonton Oilers")
kings = Tag.create(name: "Los Angeles Kings")
sharks = Tag.create(name: "San Jose Sharks")
canucks = Tag.create(name: "Vancouver Canucks")
blackhawks = Tag.create(name: "Chicago Blackhawks")
avalanche = Tag.create(name: "Colorado Avalanche")
stars = Tag.create(name: "Dallas Stars")
wild = Tag.create(name: "Minnesota Wild")
predators = Tag.create(name: "Nashville Predators")
blues = Tag.create(name: "St. Louis Blues")
jets = Tag.create(name: "Winnipeg Jets")


bills = Tag.create(name: "Buffalo Bills")
dolphins = Tag.create(name: "Miami Dolphins")
patriots = Tag.create(name: "New England Patriots")
jets = Tag.create(name: "New York Jets")
ravens = Tag.create(name: "Baltimore Ravens")
bengals = Tag.create(name: "Cincinnati Bengals")
browns = Tag.create(name: "Cleveland Browns")
steelers = Tag.create(name: "Pittsburgh Steelers")
texans = Tag.create(name: "Houston Texans")
colts = Tag.create(name: "Indianapolis Colts")
jaguars = Tag.create(name: "Jacksonville Jaguars")
titans = Tag.create(name: "Tennessee Titans")
broncos = Tag.create(name: "Denver Broncos")
chiefs = Tag.create(name: "Kansas City Chiefs")
raiders = Tag.create(name: "Oakland Raiders")
chargers = Tag.create(name: "San Diego Chargers")
cowboys = Tag.create(name: "Dallas Cowboys")
giants = Tag.create(name: "New York Giants")
eagles = Tag.create(name: "Philadelphia Eagles")
redskins = Tag.create(name: "Washington Redskins")
bears = Tag.create(name: "Chicago Bears")
lions = Tag.create(name: "Detroit Lions")
packers = Tag.create(name: "Green Bay Packers")
vikings = Tag.create(name: "Minnesota Vikings")
falcons = Tag.create(name: "Atlanta Falcons")
panthers = Tag.create(name: "Carolina Panthers")
saints = Tag.create(name: "New Orleans Saints")
buccaneers = Tag.create(name: "Tampa Bay Buccaneers")
cardinals = Tag.create(name: "Arizona Cardinals")
rams = Tag.create(name: "Los Angeles Rams")
fortyniners = Tag.create(name: "San Francisco 49ers")
seahawks = Tag.create(name: "Seattle Seahawks")


ir = Event.create(
	name: "Islanders @ Rangers",
	time: DateTime.parse('13 Oct 2016 19:00:00+03:30'),
	venue_id: kyles.id
)


cp = Event.create(
	name: "Cowboys @ Packers",
	time: DateTime.parse('16 Oct 2016 06:25:00+03:30'),
	venue_id: robs.id
)



Broadcast.create(
	name: "Islanders @ Rangers on MSG",
	time: DateTime.parse('13 Oct 2016 19:00:00+03:30'),
	event_id: 1
)

Broadcast.create(
	name: "Cowboys @ Packers on Fox",
	time: DateTime.parse('16 Oct 2016 06:25:00+03:30'),
	event_id: 2
)



Tagging.create(
	broadcast_id: 1,
	tag_id: islanders.id
	)

Tagging.create(
	broadcast_id: 1,
	tag_id: rangers.id
	)

Tagging.create(
	broadcast_id: 2,
	tag_id: cowboys.id
	)

Tagging.create(
	broadcast_id: 2,
	tag_id: packers.id
	)


Rsvp.create(user_id: rob.id, event_id: ir.id)
Rsvp.create(user_id: kyle.id, event_id: cp.id)



Review.create(
	reviewer_id: rob.id,
	reviewee_id: kyle.id,
	star_rating: 4,
	comments: "Pretty sure this is actually Jon's place."
	)








GlobalBroadcast.create(time: DateTime.parse("2016-10-06	8:25 PM	-04:00").utc, name: "Arizona Cardinals at San Francisco 49ers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 1:00 PM -04:00").utc, name: "Chicago Bears at Indianapolis Colts") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 1:00 PM -04:00").utc, name: "Tennessee Titans at Miami Dolphins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 1:00 PM -04:00").utc, name: "Philadelphia Eagles at Detroit Lions") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 1:00 PM -04:00").utc, name: "New York Jets at Pittsburgh Steelers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 1:00 PM -04:00").utc, name: "New England Patriots at Cleveland Browns") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 1:00 PM -04:00").utc, name: "Washington Redskins at Baltimore Ravens") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 1:00 PM -04:00").utc, name: "Houston Texans at Minnesota Vikings") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 4:05 PM -04:00").utc, name: "Atlanta Falcons at Denver Broncos") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 4:25 PM -04:00").utc, name: "Buffalo Bills at Los Angeles Rams") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 4:25 PM -04:00").utc, name: "San Diego Chargers at Oakland Raiders") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 4:25 PM -04:00").utc, name: "Cincinnati Bengals at Dallas Cowboys") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-09 8:30 PM -04:00").utc, name: "New York Giants at Green Bay Packers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-10 8:30 PM -04:00").utc, name: "Tampa Bay Buccaneers at Carolina Panthers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-13 8:25 PM -04:00").utc, name: "Denver Broncos at San Diego Chargers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Carolina Panthers at New Orleans Saints") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Jacksonville Jaguars at Chicago Bears") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Pittsburgh Steelers at Miami Dolphins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Baltimore Ravens at New York Giants") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "San Francisco 49ers at Buffalo Bills") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Cleveland Browns at Tennessee Titans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Cincinnati Bengals at New England Patriots") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Philadelphia Eagles at Washington Redskins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 1:00 PM -04:00").utc, name: "Los Angeles Rams at Detroit Lions") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 4:05 PM -04:00").utc, name: "Kansas City Chiefs at Oakland Raiders") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 4:25 PM -04:00").utc, name: "Atlanta Falcons at Seattle Seahawks") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 4:25 PM -04:00").utc, name: "Dallas Cowboys at Green Bay Packers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-16 8:30 PM -04:00").utc, name: "Indianapolis Colts at Houston Texans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-17 8:30 PM -04:00").utc, name: "New York Jets at Arizona Cardinals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-20 8:25 PM -04:00").utc, name: "Chicago Bears at Green Bay Packers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 9:30 AM -04:00").utc, name: "New York Giants at Los Angeles Rams") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "Washington Redskins at Detroit Lions") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "Baltimore Ravens at New York Jets") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "Oakland Raiders at Jacksonville Jaguars") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "Cleveland Browns at Cincinnati Bengals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "New Orleans Saints at Kansas City Chiefs") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "Indianapolis Colts at Tennessee Titans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "Minnesota Vikings at Philadelphia Eagles") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 1:00 PM -04:00").utc, name: "Buffalo Bills at Miami Dolphins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 4:05 PM -04:00").utc, name: "Tampa Bay Buccaneers at San Francisco 49ers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 4:05 PM -04:00").utc, name: "San Diego Chargers at Atlanta Falcons") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 4:25 PM -04:00").utc, name: "New England Patriots at Pittsburgh Steelers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-23 8:30 PM -04:00").utc, name: "Seattle Seahawks at Arizona Cardinals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-24 8:30 PM -04:00").utc, name: "Houston Texans at Denver Broncos") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-27 8:25 PM -04:00").utc, name: "Jacksonville Jaguars at Tennessee Titans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 9:30 AM -04:00").utc, name: "Washington Redskins at Cincinnati Bengals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 1:00 PM -04:00").utc, name: "New England Patriots at Buffalo Bills") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 1:00 PM -04:00").utc, name: "Seattle Seahawks at New Orleans Saints") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 1:00 PM -04:00").utc, name: "Oakland Raiders at Tampa Bay Buccaneers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 1:00 PM -04:00").utc, name: "New York Jets at Cleveland Browns") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 1:00 PM -04:00").utc, name: "Green Bay Packers at Atlanta Falcons") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 1:00 PM -04:00").utc, name: "Detroit Lions at Houston Texans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 1:00 PM -04:00").utc, name: "Kansas City Chiefs at Indianapolis Colts") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 4:05 PM -04:00").utc, name: "San Diego Chargers at Denver Broncos") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 4:25 PM -04:00").utc, name: "Arizona Cardinals at Carolina Panthers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-30 8:30 PM -04:00").utc, name: "Philadelphia Eagles at Dallas Cowboys") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-10-31 8:30 PM -04:00").utc, name: "Minnesota Vikings at Chicago Bears") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-03 8:25 PM -04:00").utc, name: "Atlanta Falcons at Tampa Bay Buccaneers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 1:00 PM -04:00").utc, name: "Philadelphia Eagles at New York Giants") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 1:00 PM -04:00").utc, name: "Pittsburgh Steelers at Baltimore Ravens") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 1:00 PM -04:00").utc, name: "Dallas Cowboys at Cleveland Browns") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 1:00 PM -04:00").utc, name: "New York Jets at Miami Dolphins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 1:00 PM -04:00").utc, name: "Jacksonville Jaguars at Kansas City Chiefs") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 1:00 PM -04:00").utc, name: "Detroit Lions at Minnesota Vikings") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 4:05 PM -04:00").utc, name: "New Orleans Saints at San Francisco 49ers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 4:05 PM -04:00").utc, name: "Carolina Panthers at Los Angeles Rams") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 4:25 PM -04:00").utc, name: "Indianapolis Colts at Green Bay Packers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 4:25 PM -04:00").utc, name: "Tennessee Titans at San Diego Chargers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-06 8:30 PM -04:00").utc, name: "Denver Broncos at Oakland Raiders") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-07 8:30 PM -04:00").utc, name: "Buffalo Bills at Seattle Seahawks") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-10 8:25 PM -04:00").utc, name: "Cleveland Browns at Baltimore Ravens") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Atlanta Falcons at Philadelphia Eagles") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Los Angeles Rams at New York Jets") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Green Bay Packers at Tennessee Titans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Kansas City Chiefs at Carolina Panthers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Houston Texans at Jacksonville Jaguars") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Chicago Bears at Tampa Bay Buccaneers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Minnesota Vikings at Washington Redskins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 1:00 PM -04:00").utc, name: "Denver Broncos at New Orleans Saints") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 4:05 PM -04:00").utc, name: "Miami Dolphins at San Diego Chargers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 4:25 PM -04:00").utc, name: "San Francisco 49ers at Arizona Cardinals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 4:25 PM -04:00").utc, name: "Dallas Cowboys at Pittsburgh Steelers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-13 8:30 PM -04:00").utc, name: "Seattle Seahawks at New England Patriots") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-14 8:30 PM -04:00").utc, name: "Cincinnati Bengals at New York Giants") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-17 8:25 PM -04:00").utc, name: "New Orleans Saints at Carolina Panthers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Pittsburgh Steelers at Cleveland Browns") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Tennessee Titans at Indianapolis Colts") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Tampa Bay Buccaneers at Kansas City Chiefs") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Arizona Cardinals at Minnesota Vikings") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Jacksonville Jaguars at Detroit Lions") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Chicago Bears at New York Giants") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Buffalo Bills at Cincinnati Bengals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 1:00 PM -04:00").utc, name: "Baltimore Ravens at Dallas Cowboys") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 4:05 PM -04:00").utc, name: "Miami Dolphins at Los Angeles Rams") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 4:25 PM -04:00").utc, name: "New England Patriots at San Francisco 49ers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 4:25 PM -04:00").utc, name: "Philadelphia Eagles at Seattle Seahawks") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-20 8:30 PM -04:00").utc, name: "Green Bay Packers at Washington Redskins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-21 8:30 PM -04:00").utc, name: "Houston Texans at Oakland Raiders") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-24 12:30 PM -04:00").utc, name: "Minnesota Vikings at Detroit Lions") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-24 4:30 PM -04:00").utc, name: "Washington Redskins at Dallas Cowboys") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-24 8:30 PM -04:00").utc, name: "Pittsburgh Steelers at Indianapolis Colts") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "Jacksonville Jaguars at Buffalo Bills") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "Cincinnati Bengals at Baltimore Ravens") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "Arizona Cardinals at Atlanta Falcons") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "San Diego Chargers at Houston Texans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "Los Angeles Rams at New Orleans Saints") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "Tennessee Titans at Chicago Bears") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "San Francisco 49ers at Miami Dolphins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 1:00 PM -04:00").utc, name: "New York Giants at Cleveland Browns") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 4:05 PM -04:00").utc, name: "Seattle Seahawks at Tampa Bay Buccaneers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 4:25 PM -04:00").utc, name: "Carolina Panthers at Oakland Raiders") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 4:25 PM -04:00").utc, name: "Kansas City Chiefs at Denver Broncos") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-27 8:30 PM -04:00").utc, name: "New England Patriots at New York Jets") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-11-28 8:30 PM -04:00").utc, name: "Green Bay Packers at Philadelphia Eagles") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-01 8:25 PM -04:00").utc, name: "Dallas Cowboys at Minnesota Vikings") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "Houston Texans at Green Bay Packers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "Miami Dolphins at Baltimore Ravens") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "Denver Broncos at Jacksonville Jaguars") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "San Francisco 49ers at Chicago Bears") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "Kansas City Chiefs at Atlanta Falcons") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "Los Angeles Rams at New England Patriots") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "Philadelphia Eagles at Cincinnati Bengals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 1:00 PM -04:00").utc, name: "Detroit Lions at New Orleans Saints") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 4:05 PM -04:00").utc, name: "Buffalo Bills at Oakland Raiders") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 4:25 PM -04:00").utc, name: "New York Giants at Pittsburgh Steelers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 4:25 PM -04:00").utc, name: "Tampa Bay Buccaneers at San Diego Chargers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 4:25 PM -04:00").utc, name: "Washington Redskins at Arizona Cardinals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-04 8:30 PM -04:00").utc, name: "Carolina Panthers at Seattle Seahawks") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-05 8:30 PM -04:00").utc, name: "Indianapolis Colts at New York Jets") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-08 8:25 PM -04:00").utc, name: "Oakland Raiders at Kansas City Chiefs") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Minnesota Vikings at Jacksonville Jaguars") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Cincinnati Bengals at Cleveland Browns") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Denver Broncos at Tennessee Titans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Chicago Bears at Detroit Lions") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "New Orleans Saints at Tampa Bay Buccaneers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Pittsburgh Steelers at Buffalo Bills") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Houston Texans at Indianapolis Colts") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "San Diego Chargers at Carolina Panthers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Washington Redskins at Philadelphia Eagles") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 1:00 PM -04:00").utc, name: "Arizona Cardinals at Miami Dolphins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 4:05 PM -04:00").utc, name: "New York Jets at San Francisco 49ers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 4:25 PM -04:00").utc, name: "Seattle Seahawks at Green Bay Packers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 4:25 PM -04:00").utc, name: "Atlanta Falcons at Los Angeles Rams") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-11 8:30 PM -04:00").utc, name: "Dallas Cowboys at New York Giants") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-12 8:30 PM -04:00").utc, name: "Baltimore Ravens at New England Patriots") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-15 8:25 PM -04:00").utc, name: "Los Angeles Rams at Seattle Seahawks") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-17 8:25 PM -04:00").utc, name: "Miami Dolphins at New York Jets") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Tennessee Titans at Kansas City Chiefs") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Cleveland Browns at Buffalo Bills") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Green Bay Packers at Chicago Bears") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Indianapolis Colts at Minnesota Vikings") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Tampa Bay Buccaneers at Dallas Cowboys") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Detroit Lions at New York Giants") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Philadelphia Eagles at Baltimore Ravens") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 1:00 PM -04:00").utc, name: "Jacksonville Jaguars at Houston Texans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 4:05 PM -04:00").utc, name: "New Orleans Saints at Arizona Cardinals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 4:05 PM -04:00").utc, name: "San Francisco 49ers at Atlanta Falcons") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 4:25 PM -04:00").utc, name: "New England Patriots at Denver Broncos") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 4:25 PM -04:00").utc, name: "Oakland Raiders at San Diego Chargers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-18 8:30 PM -04:00").utc, name: "Pittsburgh Steelers at Cincinnati Bengals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-19 8:30 PM -04:00").utc, name: "Carolina Panthers at Washington Redskins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-22 8:25 PM -04:00").utc, name: "New York Giants at Philadelphia Eagles") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "New York Jets at New England Patriots") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "Atlanta Falcons at Carolina Panthers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "Miami Dolphins at Buffalo Bills") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "Tampa Bay Buccaneers at New Orleans Saints") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "Washington Redskins at Chicago Bears") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "Tennessee Titans at Jacksonville Jaguars") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "San Diego Chargers at Cleveland Browns") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 1:00 PM -04:00").utc, name: "Minnesota Vikings at Green Bay Packers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 4:05 PM -04:00").utc, name: "Indianapolis Colts at Oakland Raiders") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 4:25 PM -04:00").utc, name: "San Francisco 49ers at Los Angeles Rams") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 4:25 PM -04:00").utc, name: "Arizona Cardinals at Seattle Seahawks") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-24 8:25 PM -04:00").utc, name: "Cincinnati Bengals at Houston Texans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-25 4:30 PM -04:00").utc, name: "Baltimore Ravens at Pittsburgh Steelers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-25 8:30 PM -04:00").utc, name: "Denver Broncos at Kansas City Chiefs") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-12-26 8:30 PM -04:00").utc, name: "Detroit Lions at Dallas Cowboys") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Buffalo Bills at New York Jets") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Buffalo Bills").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Jets").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Baltimore Ravens at Cincinnati Bengals") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Baltimore Ravens").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cincinnati Bengals").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Jacksonville Jaguars at Indianapolis Colts") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Jacksonville Jaguars").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Indianapolis Colts").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Houston Texans at Tennessee Titans") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Houston Texans").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tennessee Titans").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "New York Giants at Washington Redskins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New York Giants").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Washington Redskins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "New England Patriots at Miami Dolphins") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New England Patriots").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Miami Dolphins").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Dallas Cowboys at Philadelphia Eagles") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Dallas Cowboys").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Philadelphia Eagles").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "New Orleans Saints at Atlanta Falcons") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "New Orleans Saints").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Atlanta Falcons").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Chicago Bears at Minnesota Vikings") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Chicago Bears").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Minnesota Vikings").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Cleveland Browns at Pittsburgh Steelers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Cleveland Browns").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Pittsburgh Steelers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Green Bay Packers at Detroit Lions") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Green Bay Packers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Detroit Lions").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 1:00 PM -04:00").utc, name: "Carolina Panthers at Tampa Bay Buccaneers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Carolina Panthers").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Tampa Bay Buccaneers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 4:25 PM -04:00").utc, name: "Kansas City Chiefs at San Diego Chargers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Kansas City Chiefs").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Diego Chargers").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 4:25 PM -04:00").utc, name: "Arizona Cardinals at Los Angeles Rams") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Arizona Cardinals").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Los Angeles Rams").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 4:25 PM -04:00").utc, name: "Oakland Raiders at Denver Broncos") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Oakland Raiders").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Denver Broncos").id, broadcast_type: "global")

GlobalBroadcast.create(time: DateTime.parse("2016-01-01 4:25 PM -04:00").utc, name: "Seattle Seahawks at San Francisco 49ers") 
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "Seattle Seahawks").id, broadcast_type: "global")
Tagging.create( broadcast_id: GlobalBroadcast.last.id, tag_id: Tag.find_by(name: "San Francisco 49ers").id, broadcast_type: "global")