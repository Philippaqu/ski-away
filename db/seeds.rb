# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
testimonials = ["This place was the perfect launching pad for a fun girls weekend. Kathie has impeccable taste when it comes to decor and restaurant recommendations! The best Airbnb I’ve stayed in.",
  "Kathie’s apartment was better than advertised! Such a charming place and quiet neighborhood. Kathie was very responsive to questions and provided an extensive list of places to check out. I highly recommend Kathie as your next host!",
  "Staying at Kathie's was super lovely. The space was wonderful and had absolutely everything we needed. Kathie left a lot of great recommendations for food and activities and was extremely helpful.",
  "The space was clean and comfortable and had excellent location! My partner and I enjoyed evening walks into downtown and around the Montford neighborhood. Love the décor! Thank you for your hospitality Kathie."
]

descriptions = ["Our apartments are private, modern, cozy, and fully furnished. This unit has a south facing balcony and it's own picture perfect mountain view. This is a family run establishment providing you a world class atmosphere for your stay - active, indulgent, or relaxing, we look forward to welcoming you. The space Our home is centrally located and a 5-10 minute walk from every amenity St. Anton Offers. We are a newer home with modern furnishings. Special requests will be considered. translated by Google Our home is centrally located and a 5-10 minute walk from every amenity St. Anton Offers. We are a newer home with modern furnishings. Special requests will be considered. Guest access All units are completely private, self contained and fully furnished. They can be accessed from the main entrance. This is a private home, all apartments are accessed from inside, and there is space within the entrance and hall for guests to store their ski and winter gear, so you do not need to bring it inside the unit. translated by Google All units are completely private, self contained and fully furnished. They can be accessed from the main entrance. This is a private home, all apartments are accessed from inside, and there is space within the entrance and hall for guests to store their ski and winter gear, so you do not need to bring it inside the unit. Interaction with guests Interaction is based on your individual needs, but you can expect a warm welcome when you arrive, help with your luggage, and we are there to assist should you need us. translated by Google Interaction is based on your individual needs, but you can expect a warm welcome when you arrive, help with your luggage, and we are there to assist should you need us. Other things to note This home is not wheel chair accessible or great for anyone who has trouble with walking as there are steep stairs leading to the entrance. translated by Google This home is not wheel chair accessible or great for anyone who has trouble with walking as there are steep stairs leading to the entrance.",
"Very nice studio apartment in the very centre of St.Anton. One of best positions in the village very close all the bars, restaurants & clubs. Fully equipped kitchen. Car parking. Airport transfers arranged. Free Internet. Only 7 day bookings Sat - Sat from 23 Dec - 7th April. If you are interested in other dates / trip length please message with your request. The space Amazing position right in the centre of St.Anton",
"A beautiful modern flat with large windows and a private terrace (with bbq and a Finnish sauna) and entry looking towards the best view in St.Anton. Ski-in / ski-out (via field, snow conditions permitting) and breathtaking hiking / biking trails starting behind the house. Other things to note Please send an enquiry about shorter and longer stays off-season and during Christmas time. During the ski season only Saturday-Saturday unless otherewise agreed. Cleaning price includes local tourist taxes during the season. Check-in 16:00, check-out 10:00. Please recycle!",
"Enjoy a fantastic holiday in the lovely village of St Anton. Our location is just at the edge of town, very beautiful, no noise. Walking distance to the skilift and to the center of town. Lots of nice bars around. Beautiful surroundings, lovely walks in nature. The space Very spacious apartment with a beautiful view. big living room with dining space and kitchen and two comfy sofa beds, big bedroom with kingsize bed, bathroom with good shower and bath, also a separate toilet and a big entry hall. downstairs you can use the pool table and the wellness (included in the price)",]

appartment_headers = ["Studio appartment village center", "Gabriela's Gateaway", "Cosy appartment in Swiss Alps", "Entire house close to slopes"]

addresses = ["Dorfstraße 8 6580  St. Anton am Arlberg", "Gemeinde St. Anton am Arlberg Dorfstraße 46 6580 St. Anton am Arlberg", "Bundesstr. 59 6754 Klösterle am Arlberg Vorarlberg", "St. Christoph 1, 6580 Sankt Christoph am Arlberg"]

users = []
10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456",
    )
  user.save
  users << user
end




appartments = []
4.times do
  appartment = Appartment.create(
address: addresses.shuffle.pop,
description: descriptions.sample,
user_id: users.sample,
price: rand(50..350),
header: appartment_headers.sample,
appartment_type: ["Entire house", "Entire appartment", "Room"].sample,
    )
  appartment.save
  appartments << appartment
end


4.times do
  review = Review.create(
    testimonial: testimonials.shuffle.pop,
    user_id: users.sample,
    appartment_id: appartments.sample,
    rating: rand(1..5))
  review.save
end

