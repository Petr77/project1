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

c1 = Country.create name: "Australia", image: "mknkxypxmp294p3geqql"
c2 = Country.create name: "France", image: "qo4uwjkme0w8fohuafpe"
c3 = Country.create name: "Italy", image: "agxgslbkpftjiykgehxr"
c4 = Country.create name: "New Zealand", image: "r8xmt5v2cmvoh8vu1e3r"
c5 = Country.create name: "Spain", image: "wiknhryuvmwoikktfjtu"

r1 = Region.create name: "Margaret River", country: c1, description: "desc"
r2 = Region.create name: "Barossa Valley", country: c1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
r3 = Region.create name: "Rhone Valley", country: c2
r4 = Region.create name: "Marlborough", country: c4
r5 = Region.create name: "Tuscany", country: c3
r6 = Region.create name: "Bordeaux", country: c2
r7 = Region.create name: "Central Otago", country: c4
r8 = Region.create name: "Piedmont", country: c3
r9 = Region.create name: "Rioja", country: c5

v1 = r3.varieties.create name: "Shiraz"
v2 = r1.varieties.create name: "Cabernet Sauvignon"
v3 = r4.varieties.create name: "Pinot Noir"
v4 = r5.varieties.create name: "Sangiovese"
v5 = r8.varieties.create name: "Nebbiolo"
v6 = r7.varieties.create name: "Sauvignon Blanc"
v7 = r9.varieties.create name: "Tempranillo"

w1 = Wine.create name: "Penfold's Shiraz", variety: v1, region: r2, user: u1
w2 = Wine.create name: "Cloudy Bay Pinot Noir", variety: v3, region: r4, user: u2
w3 = Wine.create name: "Xanadu Cabernet Sauvignon", variety: v2, region: r1, user: u1
w4 = Wine.create name: "Barolo", variety: v5, region: r8, user: u2
w5 = Wine.create name: "Chianti DOCG", variety: v4, region: r5, user: u3
w6 = Wine.create name: "Oyster Bay Sauvignon Blanc", variety: v6, region: r4, user: u3
w7 = Wine.create name: "Rioja Campo Viejo", variety: v7, region: r9, user: u4
w8 = Wine.create name: "Château Lafite Rothschild Pauillac", variety: v2, region: r6, user: u4
