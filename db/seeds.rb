# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Activity.destroy_all
Destination.destroy_all
# ActiveRecord::Base.connection.reset_pk_sequence!(’TABLENAME')


italy = Destination.create(location: "Italy", description: "Arguably Europe’s most enticing country, Italy charms visitors with irresistible food, awesome architecture, diverse scenery and unparalleled art. In fact, it's so packed with possibilities it can almost overwhelm.", img_url: "https://www.lonelyplanet.com/travel-blog/tip-article/wordpress_uploads/2015/10/GettyImages-535829613_super.jpg")
paris = Destination.create(location: "France", description: "The City of Light draws millions of visitors every year with its unforgettable ambiance. Of course, the divine cuisine and vast art collections deserve some of the credit as well. The gentle River Seine rambles through the city, flanked by stately museums, centuries-old churches, and blocks of Rococo- and Neoclassic-design architecture, further enhanced by charming trees and glowing streetlamps. Peppering the Seine's cobbled walks and graceful bridges are impossibly chic Parisians, probably on their way to the market, cafe or cinema.", img_url: "http://static.travel.usnews.com/images/destinations/86/eiffel1.jpg")

colosseum = Activity.create(name: "Colosseum", activity_type: "Sight Seeing", description: "For the first time in history, access has been opened to the underground level of the Colosseum. Tours also explore the highest ‘third tier' level, now open for the first time since the 1970s. Hear the echoes of Ancient Roman civilization as you journey through tunnels where lions and tigers once roared from their cages and gladiators sharpened their swords.", price: 115.00, address: "Piazza del Colosseo, 00184, Italy", img_url:"http://i.dailymail.co.uk/i/pix/2016/04/09/12/32FF170400000578-3531310-image-a-13_1460200706507.jpg", destination: italy )
versailles = Activity.create(name: "Versailles", activity_type: "Sight Seeing", description:"Take a tour of Versailles with a difference - by bicycle! It's the only way to see Versailles' expansive gardens plus you'll get to see highlights of Versailles that most visitors miss, including Marie Antoinette's country-style Hameau, the Petit Trianon and the Grand Trianon. You'll also enjoy a picnic by the Grand Canal then take a tour of the Palace of Versailles.", price: 110.00, address: "Central Paris, 15th arrondissement", img_url: "http://images.nationalgeographic.com/wpf/media-live/photos/000/932/overrides/versailles-garden-park-france_93247_600x450.jpg", destination: paris)

colosseum_review = Review.create(rating: 5, quote: "My tour of the colosseum was unreal.", body: "My tour of the colosseum was unreal. The fact that I was standing on ground where warriors would fight to the death was an unforgettable experience. I couldn't believe the energy. Would recommend to anyone.", activity: colosseum)
versailles_review = Review.create(rating: 3, quote: "Biking around Versailles was awesome.", body: "Biking around Versailles was awesome. Unfortunately, it was raining. Besides the weather, I couldn't have enojoyed it more.", activity: versailles)
