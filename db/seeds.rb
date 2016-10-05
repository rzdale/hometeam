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
	event_id: 1
)

Broadcast.create(
	name: "Cowboys @ Packers on Fox",
	event_id: 2
)



Tagging.create(
	broadcast_id: 1,
	performer_id: islanders.id
	)

Tagging.create(
	broadcast_id: 1,
	performer_id: rangers.id
	)

Tagging.create(
	broadcast_id: 2,
	performer_id: cowboys.id
	)
Tagging.create(
	broadcast_id: 2,
	performer_id: packers.id
	)


Rsvp.create(user_id: rob.id, event_id: ir.id)
Rsvp.create(user_id: kyle.id, event_id: cp.id)



Review.create(
	reviewer_id: rob.id,
	reviewee_id: kyle.id,
	star_rating: 4,
	comments: "Pretty sure this is actually Jon's place."
	)