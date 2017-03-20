# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create email: "textchimp@gmail.com", password: "password", name: "Luke H", dob: Date.new(1978, 12, 30)
u2 = User.create email: "aaa@aaa.com", password: "password", name: "Lucy D", dob: Date.new(1980, 02, 17)
u3 = User.create email: "bbb@bbb.com", password: "password", name: "John L", dob: Date.new(1982, 10, 20)
u4 = User.create email: "ccc@ccc.com", password: "password", name: "Sally M", dob: Date.new(1985, 06, 11)

c1 = Country.create name: "Australia"
c2 = Country.create name: "France"
c3 = Country.create name: "Italy"
c4 = Country.create name: "New Zealand"
c5 = Country.create name: "Spain"

r1 = Region.create name: "Margaret River", country: c1
r2 = Region.create name: "Barossa Valley", country: c1
r3 = Region.create name: "Rhone Valley", country: c2
r4 = Region.create name: "Marlborough", country: c4
r5 = Region.create name: "Tuscany", country: c3
r6 = Region.create name: "Bordeaux", country: c2
r7 = Region.create name: "Central Otago", country: c4
r8 = Region.create name: "Piedmont", country: c3
r9 = Region.create name: "Rioja", country: c5

v1 = Variety.create name: "Shiraz", region: r3
v2 = Variety.create name: "Cabernet Sauvignon", region: r1
v3 = Variety.create name: "Pinot Noir", region: r4
v4 = Variety.create name: "Sangiovese", region: r5
v5 = Variety.create name: "Nebbiolo", region: r8
v6 = Variety.create name: "Sauvigon Blanc", region: r7
v7 = Variety.create name: "Tempranillo", region: r9

w1 = Wine.create name: "Rusty Shack", variety: v1, region: r1, user: u1
w2 = Wine.create name: "Cloudy Bay Pinot Noir", variety: v3, region: r4, user: u2
w3 = Wine.create name: "Xanadu Cabernet Sauvignon", variety: v2, region: r1, user: u1
w4 = Wine.create name: "Barolo", variety: v5, region: r8, user: u2
w5 = Wine.create name: "Chianti DOC", variety: v4, region: r5, user: u3
w6 = Wine.create name: "Oyster Bay Sauvignon Blanc", variety: v6, region: r4, user: u3
w7 = Wine.create name: "Rioja Campo Viejo", variety: v7, region: r9, user: u4
w8 = Wine.create name: "Château Lafite Rothschild Pauillac", variety: v2, region: r6, user: u4
