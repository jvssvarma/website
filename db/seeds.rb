# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |a|
  Article.create(title: "#{a} article testing", content: "Kombucha iceland wayfarers, #{a} hell of williamsburg la croix meh pok pok. Kombucha edison bulb fashion axe lumbersexual, copper mug disrupt tacos mixtape. Narwhal YOLO DIY locavore photo booth subway tile, waistcoat tofu cornhole neutra jianbing kickstarter salvia chia williamsburg. Keffiyeh vice meggings hot chicken, YOLO health goth organic skateboard fanny pack tote bag. Whatever raclette disrupt 8-bit dreamcatcher 90's humblebrag skateboard, VHS pinterest gentrify typewriter. 8-bit raclette disrupt, pickled plaid gentrify vaporware sustainable blog portland fixie. Celiac chia tattooed plaid DIY.")
  Guide.create(title: "#{a} guide testing", content: "Biodiesel glossier synth, #{a} bespoke sustainable irony. Echo park tilde live-edge bicycle rights leggings, lo-fi ugh chia humblebrag. Artisan forage fashion axe, intelligentsia cardigan stumptown vexillologist marfa. Try-hard brunch trust fund aesthetic bitters keffiyeh. Master cleanse vegan yr chia selfies cornhole. Viral vape squid taxidermy edison bulb. Chia irony post-ironic, pok pok kombucha la croix shoreditch crucifix chartreuse messenger bag thundercats PBR&B.")
end
