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
Performer.delete_all



kyle = User.create(
	user_type: "admin",
	first_name: "Kyle",
	last_name: "Kremski",
	password_hash: "$$$$",
	email: "kkremski@gmail.com",
	zip: 60647
	)


rob = User.create(
	user_type: "admin",
	first_name: "Rob",
	last_name: "Dale",
	password_hash: "$$$$",
	email: "robzd1@gmail.com",
	zip: 60647
	)



kyles = Venue.create(name: "Kyle's House", user_id: kyle.id)
robs = Venue.create(name: "Rob's House", user_id: rob.id)

Package.create(name: "NHL Center Ice")
Package.create(name: "NFL Sunday Ticket")

Subscription.create(venue_id: 1, package_id: 1)
Subscription.create(venue_id: 2, package_id: 2)


bruins = Performer.create(name: "Boston Bruins")
sabres = Performer.create(name: "Buffalo Sabres")
wings = Performer.create(name: "Detroit Red Wings")
panthers = Performer.create(name: "Florida Panthers")
canadiens = Performer.create(name: "Montreal Canadiens")
senators = Performer.create(name: "Ottawa Senators")
lightning = Performer.create(name: "Tampa Bay Lightning")
leafs = Performer.create(name: "Toronto Maple Leafs")
hurricanes = Performer.create(name: "Carolina Hurricanes")
jackets = Performer.create(name: "Columbus Blue Jackets")
devils = Performer.create(name: "New Jersey Devils")
islanders = Performer.create(name: "New York Islanders")
rangers = Performer.create(name: "New York Rangers")
flyers = Performer.create(name: "Philadelphia Flyers")
penguins = Performer.create(name: "Pittsburgh Penguins")
capitals = Performer.create(name: "Washington Capitals")
ducks = Performer.create(name: "Anaheim Ducks")
coyotes = Performer.create(name: "Arizona Coyotes")
flames = Performer.create(name: "Calgary Flames")
oilers = Performer.create(name: "Edmonton Oilers")
kings = Performer.create(name: "Los Angeles Kings")
sharks = Performer.create(name: "San Jose Sharks")
canucks = Performer.create(name: "Vancouver Canucks")
blackhawks = Performer.create(name: "Chicago Blackhawks")
avalanche = Performer.create(name: "Colorado Avalanche")
stars = Performer.create(name: "Dallas Stars")
wild = Performer.create(name: "Minnesota Wild")
predators = Performer.create(name: "Nashville Predators")
blues = Performer.create(name: "St. Louis Blues")
jets = Performer.create(name: "Winnipeg Jets")


bills = Performer.create(name: "Buffalo Bills")
dolphins = Performer.create(name: "Miami Dolphins")
patriots = Performer.create(name: "New England Patriots")
jets = Performer.create(name: "New York Jets")
ravens = Performer.create(name: "Baltimore Ravens")
bengals = Performer.create(name: "Cincinnati Bengals")
browns = Performer.create(name: "Cleveland Browns")
steelers = Performer.create(name: "Pittsburgh Steelers")
texans = Performer.create(name: "Houston Texans")
colts = Performer.create(name: "Indianapolis Colts")
jaguars = Performer.create(name: "Jacksonville Jaguars")
titans = Performer.create(name: "Tennessee Titans")
broncos = Performer.create(name: "Denver Broncos")
chiefs = Performer.create(name: "Kansas City Chiefs")
raiders = Performer.create(name: "Oakland Raiders")
chargers = Performer.create(name: "San Diego Chargers")
cowboys = Performer.create(name: "Dallas Cowboys")
giants = Performer.create(name: "New York Giants")
eagles = Performer.create(name: "Philadelphia Eagles")
redskins = Performer.create(name: "Washington Redskins")
bears = Performer.create(name: "Chicago Bears")
lions = Performer.create(name: "Detroit Lions")
packers = Performer.create(name: "Green Bay Packers")
vikings = Performer.create(name: "Minnesota Vikings")
falcons = Performer.create(name: "Atlanta Falcons")
panthers = Performer.create(name: "Carolina Panthers")
saints = Performer.create(name: "New Orleans Saints")
buccaneers = Performer.create(name: "Tampa Bay Buccaneers")
cardinals = Performer.create(name: "Arizona Cardinals")
rams = Performer.create(name: "Los Angeles Rams")
fortyniners = Performer.create(name: "San Francisco 49ers")
seahawks = Performer.create(name: "Seattle Seahawks")


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
	event_id: 1
)

Broadcast.create(
	name: "Cowboys @ Packers on Fox",
	event_id: 2
)



Tag.create(
	broadcast_id: 1,
	performer_id: islanders.id
	)

Tag.create(
	broadcast_id: 1,
	performer_id: rangers.id
	)

Tag.create(
	broadcast_id: 2,
	performer_id: cowboys.id
	)
Tag.create(
	broadcast_id: 2,
	performer_id: packers.id
	)


Rsvp.create(user_id: rob.id, event_id: ir.id)
Rsvp.create(user_id: kyle.id, event_id: cp.id)



# Review