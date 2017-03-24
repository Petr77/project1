# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Country.destroy_all
Region.destroy_all
Wine.destroy_all

u1 = User.create email: "textchimp@gmail.com", password: "password", name: "Luke H", dob: Date.new(1978, 12, 30)
u2 = User.create email: "aaa@aaa.com", password: "password", name: "Lucy D", dob: Date.new(1980, 02, 17)
u3 = User.create email: "bbb@bbb.com", password: "password", name: "John L", dob: Date.new(1982, 10, 20)
u4 = User.create email: "ccc@ccc.com", password: "password", name: "Sally M", dob: Date.new(1985, 06, 11)

c1 = Country.create name: "Australia", image: "australia-map_kpzshe", map_image: "mknkxypxmp294p3geqql"
c2 = Country.create name: "France", image: "france-map_qzm7kr", map_image: "r8xmt5v2cmvoh8vu1e3r"
c3 = Country.create name: "Italy", image: "italy-map_oivghh", map_image: "agxgslbkpftjiykgehxr"
c4 = Country.create name: "New Zealand", image: "zealand-map_dqllwu", map_image: "wiknhryuvmwoikktfjtu"
c5 = Country.create name: "Spain", image: "spain-map_j9bpcv", map_image: "qo4uwjkme0w8fohuafpe"

r1 = Region.create name: "Margaret River", country: c1, description: "Margaret River is the major geographical indication wine region in southwest Western Australia, with 5,017 hectares under vine and 215 wineries as at 2012. Margaret River wine region is made up predominately of boutique size wine producers; although winery operations range from the smallest crushing 3.5 tonne per year to the largest around 7000 tonne. The climate of Margaret River is more strongly maritime-influenced than any other major Australian region. It has the lowest mean annual temperature range, of only 7.6 °C, and for good measure has the most marked Mediterranean climate in terms of rainfall, with only 200 millimetres of the annual 1160 millimetres falling between October and April. The low diurnal and seasonal temperature range means an unusually even accumulation of warmth. Overall the climate is similar to that of Bordeaux in a dry vintage. Although the region produces just three percent of total Australian grape production, it produces over 20 percent of Australia's premium wine market. The principal grape varieties are fairly evenly split between red and white; Cabernet Sauvignon, Chardonnay, Sauvignon blanc, Sémillon, Shiraz, Merlot, Chenin blanc and Verdelho."
r2 = Region.create name: "Barossa Valley", country: c1, description: "The Barossa Valley wine region is one of Australia's oldest wine regions.[3] Located in South Australia, the Barossa Valley is about 56 km (35 miles) northeast of the city of Adelaide. Unlike most of Australia whose wine industry was heavily influenced by the British, the wine industry of the Barossa Valley was founded by German settlers fleeing persecution from the Prussian province of Silesia[4] (in what is now Poland). The hot continental climate of the region promoted the production of very ripe grapes that was the linchpin of the early Australian fortified wine industry. As the modern Australian wine industry shifted towards red table wines (particularly those made by the prestigious Cabernet Sauvignon) in the mid-20th century, the Barossa Valley fell out of favor due to its reputation for being largely a Syrah from producers whose grapes were destined for blending. During this period the name sBarossa Valley rarely appeared on wine labels. In the 1980s, the emergence of several boutique families specializing in old vine Shiraz wines began to capture international attention for the distinctive style of Barossa Shiraz, a full bodied red wine with rich chocolate and spice notes. This led to a renaissance in the Barossa Valley which catapulted the region to the forefront of the Australian wine industry. Many of Australia's largest and most notable wineries are either headquartered or own extensive holdings in the Barossa Valley. These include such wineries as Penfolds, Peter Lehmann, Orlando Wines, Seppeltsfield, Wolf Blass and Yalumba. Many Shiraz vines in the Barossa Valley are several decades old, with some vineyards planted with old vines that are 100–150 years old including Turkey Flat in Tanunda that is home to the oldest commercially producing grape vines, originally planted in 1847.[6] Other grape varieties grown in the Barossa Valley include Grenache, Mourvedre, Cabernet Sauvignon, Riesling, Chardonnay and Semillon."
r3 = Region.create name: "Rhone Valley", country: c2
r4 = Region.create name: "Marlborough", country: c4
r5 = Region.create name: "Tuscany", country: c3
r6 = Region.create name: "Bordeaux", country: c2
r7 = Region.create name: "Central Otago", country: c4
r8 = Region.create name: "Piedmont", country: c3
r9 = Region.create name: "Rioja", country: c5

v1 = r3.varieties.create name: "Shiraz"
v1 = r2.varieties.create name: "Shiraz", , description: "Shiraz and Syrah are two names for the same variety. Europe vintners only use the name syrah. Food pairings: meat (steak, beef, wild game, stews, etc.) Districts: syrah excels in California, in Australia, and in France’s Rhone Valley. Typical taste in varietal wine: aromas and flavors of wild black fruit (such as blackcurrant), with overtones of black pepper spice and roasting meat. The abundance of fruit sensations is often complemented by warm alcohol and gripping tannins. Toffee notes if present come not from the fruit but from the wine having rested in oak barrels. The shiraz variety gives hearty, spicy reds. While shiraz is used to produce many average wines it can produce some of the world’s finest, deepest, and darkest reds with intense flavors and excellent longevity. You’ll discover Syrahs of value and elegance by reading my reviews of French wines."
v2 = r1.varieties.create name: "Cabernet Sauvignon"
v2 = r6.varieties.create name: "Cabernet Sauvignon"
v3 = r4.varieties.create name: "Pinot Noir"
v4 = r5.varieties.create name: "Sangiovese"
v5 = r8.varieties.create name: "Nebbiolo"
v6 = r7.varieties.create name: "Sauvignon Blanc"
v7 = r9.varieties.create name: "Tempranillo"
v8 = r6.varieties.create name: "Merlot"

w1 = Wine.create name: "Penfold's Shiraz", variety: v1, region: r2, user: u1, image: "pc2m0ifz0rnicz3hmh3n", description: "Penfolds Koonunga Hill Shiraz Cabernet Sauvignon has established itself as one of Australia's favourite premium red wines. Since its first vintage in 1976, Koonunga Hill's reputation has been built upon its affordable price, its approachability in its youth, with the potential to develop if carefully cellared. Penfolds Koonunga Hill Shiraz Cabernet is very much a reflection of the Penfolds winemaking style and philosophy. Sourced from premium vineyards across South Australia, the wine is known for its full-flavoured style with excellent Shiraz and Cabernet fruit, firm yet well-rounded structure and balanced oak. Made as a traditional 'Australian blend', the Shiraz component provides fleshy fruit flavour while Cabernet provides a frame of fine grained tannins."
w2 = Wine.create name: "Cloudy Bay Pinot Noir", variety: v3, region: r4, user: u2, image: "ayk6csksptothos4ugwc"
w3 = Wine.create name: "Xanadu Cabernet Sauvignon", variety: v2, region: r1, user: u1, image: "dhstqtxt1ndh5vispchu"
w4 = Wine.create name: "Barolo", variety: v5, region: r8, user: u2, image: "vy8ij1ifq6nxy417ti8e"
w5 = Wine.create name: "Chianti Ruffino DOCG", variety: v4, region: r5, user: u3, image: "
ohdcb6uyyln9bkylpfyj"
w6 = Wine.create name: "Oyster Bay Sauvignon Blanc", variety: v6, region: r4, user: u3, image: "rg8ypquitct1e9z50rle"
w7 = Wine.create name: "Rioja Campo Viejo", variety: v7, region: r9, user: u4, image: "sl2um7fwde2shd2bovq9"
w8 = Wine.create name: "Château Lafite Rothschild Pauillac", variety: v2, region: r6, user: u4, image: "cb7xadhvvpbmipzkli0c"
w8 = Wine.create name: "Château Petrus", variety: v8, region: r6, user: u4, image: "
rlrq8jvls32xreisbshz"
