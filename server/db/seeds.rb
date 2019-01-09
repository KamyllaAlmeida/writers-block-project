# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Creating seed file..."

puts "Making Users..."

User.destroy_all


adrian = User.create!(
  first_name: "Adrian",
  last_name: "Dolan",
  description: "I’m a Dundalk native, now living in New Zealand. I’ve spent the last 12 years abroad and began blogging as a means of recording my travels and making everyone back home jealous. ",
  email: "adrian@gmail.com",
  password: '123456' ,
  password_confirmation: '123456',
  image: "https://www.writing.ie/wp-content/uploads/2018/04/Photo-for-writing-blog-220x330.jpg"
)

mila = User.create!(
  first_name: "Mila",
  last_name: "Mariah",
  description: "I grew up on a Greek island with only my sister, a donkey, a dog, and my books for company. I was always reading, often with three or four books on the go at once. ",
  email: "mila@gmail.com",
  password: '123456' ,
  password_confirmation: '123456',
  image: "https://www.writing.ie/wp-content/uploads/2014/07/myauthorpic-mini-220x330.jpg"
)

rose = User.create!(
  first_name: "Rose",
  last_name: "Jenoli",
  description: "Deep and dark with an unexpected twist. That would be my stories. Perhaps a little like life in that respect. This is the first time I have started to publish my stories.",
  email: "rose@gmail.com",
  password: '123456' ,
  password_confirmation: '123456',
  image: "https://www.writing.ie/wp-content/uploads/2018/06/Rosie.jpg"
  
)

kim = User.create!(
  first_name: "Kim",
  last_name: "Kennedy",
  description: "My stories have just been put into print for the first time on the website which is slowly growing.Feedback would be appreciated.",
  email: "kim@gmail.com",
  password: '123456' ,
  password_confirmation: '123456',
  image: "https://www.writing.ie/wp-content/uploads/2018/11/dxReNB3g_400x400-220x330.jpg"
)

alex = User.create!(
  first_name: "Alex",
  last_name: "Koster",
  description: "My name is Alex Koster, I am a teacher, mum, author and mindfulness practitioner and I live in County Tipperary with my husband and two young daughters.",
  email: "alex@gmail.com",
  password: '123456' ,
  password_confirmation: '123456',
  image: "https://www.writing.ie/wp-content/uploads/2018/03/0K7A7348-3-220x330.jpg"
)

alva = User.create!(
  first_name: "Alva",
  last_name: "Holland",
  description: "My first published story appeared in 'Ireland's Own' magazine in May 2015. I was thrilled. The magazine has just accepted a second short story for publication. This has given me an even greater impetus to follow my dream to become a writer, and to keep improving my stories.",
  email: "alva@gmail.com",
  password: '123456' ,
  password_confirmation: '123456',
  image: "https://www.writing.ie/wp-content/uploads/ninja-forms/bylinepicforsurinenglishmay2015-220x287.jpg"
)

puts "DONE!"

puts "Making Genres..."

tragedy = Genre.find_or_create_by! name: 'Tragedy'
sci_fi = Genre.find_or_create_by! name: 'Sci-Fi'
fantasy = Genre.find_or_create_by! name: 'Fantasy'
mythology = Genre.find_or_create_by! name: 'Mythology'
adventure = Genre.find_or_create_by! name: 'Adventure'
mystery = Genre.find_or_create_by! name: 'Mystery'
drama = Genre.find_or_create_by! name: 'Drama'
romance = Genre.find_or_create_by! name: 'Romance'

puts "DONE!"

puts "Making Stories - adrian ------------------------------"

Story.destroy_all

hunter =Story.create!(
  user_id: adrian.id,
  title: "The Hunter's Wife",
  description: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys.",
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://i2.wp.com/geekxpop.com/wp-content/uploads/2018/05/unnamed-18.jpg?resize=450%2C237&ssl=1",
  published: true
)

hunter.segments.create!(
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.",
  position: 0
)

hunter.segments.create!(
  text: "Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.",
  position: 1
)

hunter.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

hunter.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

hunter.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

hunter.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: hunter.id,
  genre_id: mystery.id 
)


premium_harmony =Story.create!(
  user_id: adrian.id,
  title: "Premium Harmony",
  description: "They’ve been married for ten years and for a long time everything was O.K.—swell—but now they argue. Now they argue quite a lot. It’s really all the same argument...",
  text: "They’ve been married for ten years and for a long time everything was O.K.—swell—but now they argue. Now they argue quite a lot. It’s really all the same argument. It has circularity. It is, Ray thinks, like a dog track. When they argue, they’re like greyhounds chasing the mechanical rabbit. You go past the same scenery time after time, but you don’t see it. You see the rabbit.

  He thinks it might be different if they’d had kids, but she couldn’t. They finally got tested, and that’s what the doctor said. It was her problem. A year or so after that, he bought her a dog, a Jack Russell she named Biznezz. She’d spell it for people who asked. She loves that dog, but now they argue anyway.
  
  They’re going to Wal-Mart for grass seed. They’ve decided to sell the house—they can’t afford to keep it—but Mary says they won’t get far until they do something about the plumbing and get the lawn fixed. She says those bald patches make it look shanty Irish. It’s because of the drought. It’s been a hot summer and there’s been no rain to speak of. Ray tells her grass seed won’t grow without rain no matter how good it is. He says they should wait.
  
  Then another year goes by and we’re still there,” she says. We can’t wait another year, Ray. We’ll be bankrupts.”
  
  When she talks, Biz looks at her from his place in the back seat. Sometimes he looks at Ray when Ray talks, but not always. Mostly he looks at Mary.
  
  What do you think?” he says. It’s going to rain just so you don’t have to worry about going bankrupt?”
  
  We’re in it together, in case you forgot,” she says. They’re driving through Castle Rock now. It’s pretty dead. What Ray calls the economy” has disappeared from this part of Maine. The Wal-Mart is on the other side of town, near the high school where Ray is a janitor. The Wal-Mart has its own stoplight. People joke about it.
  
  You’re with her now, Biz,” he says again through his tears. His voice is clogged and thick. It’s a relief to sound just right for the situation. Poor old Mary, poor old Biz. Damn it all!”

  Still crying, and with the purple kickball still tucked under his arm, he goes back into the Quik-Pik. He tells Mr. Ghosh he forgot to get cigarettes. He thinks maybe Mr. Ghosh will give him a pack of Premium Harmonys on the house as well, but Mr. Ghosh’s generosity doesn’t stretch that far. Ray smokes all the way to the hospital with the windows shut and the air-conditioning on. ",
  image: "https://media.newyorker.com/photos/590973632179605b11ad7e72/master/w_727,c_limit/091109_r18939_p646.jpg",
  published: true
)

premium_harmony.segments.create!(
  text: "They’ve been married for ten years and for a long time everything was O.K.—swell—but now they argue. Now they argue quite a lot. It’s really all the same argument. It has circularity. It is, Ray thinks, like a dog track. When they argue, they’re like greyhounds chasing the mechanical rabbit. You go past the same scenery time after time, but you don’t see it. You see the rabbit.",
  position: 0
)

premium_harmony.segments.create!(
  text: "He thinks it might be different if they’d had kids, but she couldn’t. They finally got tested, and that’s what the doctor said. It was her problem. A year or so after that, he bought her a dog, a Jack Russell she named Biznezz. She’d spell it for people who asked. She loves that dog, but now they argue anyway.",
  position: 1
)

premium_harmony.segments.create!(
  text: "They’re going to Wal-Mart for grass seed. They’ve decided to sell the house—they can’t afford to keep it—but Mary says they won’t get far until they do something about the plumbing and get the lawn fixed. She says those bald patches make it look shanty Irish. It’s because of the drought. It’s been a hot summer and there’s been no rain to speak of. Ray tells her grass seed won’t grow without rain no matter how good it is. He says they should wait.",
  position: 2
)

premium_harmony.segments.create!(
  text: "Then another year goes by and we’re still there,” she says. We can’t wait another year, Ray. We’ll be bankrupts.”",
  position: 3
)

premium_harmony.segments.create!(
  text: "When she talks, Biz looks at her from his place in the back seat. Sometimes he looks at Ray when Ray talks, but not always. Mostly he looks at Mary.",
  position: 4
)

premium_harmony.segments.create!(
  text: "What do you think?” he says. It’s going to rain just so you don’t have to worry about going bankrupt?”",
  position: 5
)

premium_harmony.segments.create!(
  text: "We’re in it together, in case you forgot,” she says. They’re driving through Castle Rock now. It’s pretty dead. What Ray calls the economy” has disappeared from this part of Maine. The Wal-Mart is on the other side of town, near the high school where Ray is a janitor. The Wal-Mart has its own stoplight. People joke about it.",
  position: 6
)

premium_harmony.segments.create!(
  text: "You’re with her now, Biz,” he says again through his tears. His voice is clogged and thick. It’s a relief to sound just right for the situation. Poor old Mary, poor old Biz. Damn it all!”",
  position: 7
)

premium_harmony.segments.create!(
  text: "Still crying, and with the purple kickball still tucked under his arm, he goes back into the Quik-Pik. He tells Mr. Ghosh he forgot to get cigarettes. He thinks maybe Mr. Ghosh will give him a pack of Premium Harmonys on the house as well, but Mr. Ghosh’s generosity doesn’t stretch that far. Ray smokes all the way to the hospital with the windows shut and the air-conditioning on.",
  position: 8
)

GenreStory.create!(
  story_id: premium_harmony.id,
  genre_id: drama.id 
)


the_ones =Story.create!(
  user_id: adrian.id,
  title: "The Ones Who Walk Away",
  description: "With a clamor of bells that set the swallows soaring, the Festival of Summer came to the city Omelas, bright-towered by the sea.",
  text: "With a clamor of bells that set the swallows soaring, the Festival of Summer came to the city Omelas, bright-towered by the sea. The rigging of the boats in harbor sparkled with flags. In the streets between houses with red roofs and painted walls, between old moss-grown gardens and under avenues of trees, past great parks and public buildings, processions moved. 

  Some were decorous: old people in long stiff robes of mauve and grey, grave master workmen, quiet, merry women carrying their babies and chatting as they walked. In other streets the music beat faster, a shimmering of gong and tambourine, and the people went dancing, the procession was a dance. Children dodged in and out, their high calls rising like the swallows' crossing flights, over the music and the singing. All the processions wound towards the north side of the city, where on the great water-meadow called the Green' Fields boys and girls, naked in the bright air, with mudstained feet and ankles and long, lithe arms, exercised their restive horses before the race. 
  
  The horses wore no gear at all but a halter without bit. Their manes were braided with streamers of silver, gold, and green. They flared their nostrils and pranced and boasted to one another; they were vastly excited, the horse being the only animal who has adopted our ceremonies as his own. Far off to the north and west the mountains stood up half encircling Omelas on her bay. 
  
  The air of morning was so clear that the snow still crowning the Eighteen Peaks burned with white-gold fire across the miles of sunlit air, under the dark blue of the sky. There was just enough wind to make the banners that marked the racecourse snap and flutter now and then. In the silence of the broad green meadows one could hear the music winding through the city streets, farther and nearer and ever approaching, a cheerful faint sweetness of the air that from time to time trembled and gathered together and broke out into the great joyous clanging of the bells.
  
  At times one of the adolescent girls or boys who go to see the child does not go home to weep or rage, does not, in fact, go home at all. Sometimes also a man or woman much older falls silent for a day or two, and then leaves home. 
  
  These people go out into the street, and walk down the street alone. They keep walking, and walk straight out of the city of Omelas, through the beautiful gates. They keep walking across the farmlands of Omelas. Each one goes alone, youth or girl man or woman. Night falls; the traveler must pass down village streets, between the houses with yellow-lit windows, and on out into the darkness of the fields. Each alone, they go west or north, towards the mountains. They go on. They leave Omelas, they walk ahead into the darkness, and they do not come back. The place they go towards is a place even less imaginable to most of us than the city of happiness. I cannot describe it at all. It is possible that it does not exist. But they seem to know where they are going, the ones who walk away from Omelas.",
  image: "http://atadpweeblycom.weebly.com/uploads/1/4/7/0/14700948/3429820.jpg?1369165078",
  published: true
)

the_ones.segments.create!(
  text: "With a clamor of bells that set the swallows soaring, the Festival of Summer came to the city Omelas, bright-towered by the sea. The rigging of the boats in harbor sparkled with flags. In the streets between houses with red roofs and painted walls, between old moss-grown gardens and under avenues of trees, past great parks and public buildings, processions moved.",
  position: 0
)

the_ones.segments.create!(
  text: "Some were decorous: old people in long stiff robes of mauve and grey, grave master workmen, quiet, merry women carrying their babies and chatting as they walked. In other streets the music beat faster, a shimmering of gong and tambourine, and the people went dancing, the procession was a dance. Children dodged in and out, their high calls rising like the swallows' crossing flights, over the music and the singing. All the processions wound towards the north side of the city, where on the great water-meadow called the Green' Fields boys and girls, naked in the bright air, with mudstained feet and ankles and long, lithe arms, exercised their restive horses before the race.",
  position: 1
)

the_ones.segments.create!(
  text: "The horses wore no gear at all but a halter without bit. Their manes were braided with streamers of silver, gold, and green. They flared their nostrils and pranced and boasted to one another; they were vastly excited, the horse being the only animal who has adopted our ceremonies as his own. Far off to the north and west the mountains stood up half encircling Omelas on her bay.",
  position: 2
)

the_ones.segments.create!(
  text: "The air of morning was so clear that the snow still crowning the Eighteen Peaks burned with white-gold fire across the miles of sunlit air, under the dark blue of the sky. There was just enough wind to make the banners that marked the racecourse snap and flutter now and then. In the silence of the broad green meadows one could hear the music winding through the city streets, farther and nearer and ever approaching, a cheerful faint sweetness of the air that from time to time trembled and gathered together and broke out into the great joyous clanging of the bells.",
  position: 3
)

the_ones.segments.create!(
  text: "At times one of the adolescent girls or boys who go to see the child does not go home to weep or rage, does not, in fact, go home at all. Sometimes also a man or woman much older falls silent for a day or two, and then leaves home.",
  position: 4
)

the_ones.segments.create!(
  text: "These people go out into the street, and walk down the street alone. They keep walking, and walk straight out of the city of Omelas, through the beautiful gates. They keep walking across the farmlands of Omelas. Each one goes alone, youth or girl man or woman. Night falls; the traveler must pass down village streets, between the houses with yellow-lit windows, and on out into the darkness of the fields. Each alone, they go west or north, towards the mountains. They go on. They leave Omelas, they walk ahead into the darkness, and they do not come back. The place they go towards is a place even less imaginable to most of us than the city of happiness. I cannot describe it at all. It is possible that it does not exist. But they seem to know where they are going, the ones who walk away from Omelas.",
  position: 5
)

GenreStory.create!(
  story_id: the_ones.id,
  genre_id: tragedy.id 
)


broads =Story.create!(
  user_id: adrian.id,
  title: "Jimmy Nolan - Broads",
  description: "Jimmy Nolan has a thing for broads—loud, brassy women who sit with their legs open and drink beer straight from the bottle—women who always say exactly what they’re thinking and, for better or worse, mean what they say.",
  text: "Jimmy Nolan has a thing for broads—loud, brassy women who sit with their legs open and drink beer straight from the bottle—women who always say exactly what they’re thinking and, for better or worse, mean what they say.

  Jimmy Nolan has a hard time meeting broads. He’s not quite sure if this is the result of geography, circumstance, or personal limitation. Jimmy’s ex-girlfriend Marissa was the antithesis of a broad—pale, thin, precise, and polite with a watery voice and weak handshake. She says Jimmy isn’t the kind of guy broads go for and, more than once during the course of their three-year relationship, she turned up her nose when Jimmy ogled a broad passing by.
  
  Jimmy Nolan would like to think he is the kind of guy broads go for. He likes his steak rare, enjoys a cold Budweiser, and has a hearty laugh that echoes in any room. His problem, however, is that he models himself after caricatures of who he thinks broads like. And, unfortunately for Jimmy, he’s a nice guy. He opens doors and covers his lap with a napkin at dinner, never interrupts a conversation, and always says please and thank you. Then there are his hands—slender, almost delicate hands that are finely veined, the skin stretched smoothly over bone without blemish.
  
  It is this habit of placing his napkin on his lap that first got the attention of Greta, a waitress, a broad among broads, at his favorite diner. Greta is charmed by Jimmy’s manners and his demeanor, and how, even when he only comes in for coffee and a danish, he still takes the time to use his napkin properly. Greta doesn’t claim to know much, but she knows men. She knows that their hands and their minds wander and that they will say most anything to get into the pants of a broad like her. Knowing so much about men is exhausting for Greta. Each day, when she sees Jimmy Nolan, Greta is grateful to see the kind of man she knows nothing about.
  
  Suddenly Greta throws herself back, her head hitting the dirty mirror. Jimmy blinks. Her cunt spasms around his hand, wetness oozing over his wrist, trickling along his forearm. He leans down, licking some of the moisture. It is entirely satisfying.
  
  Don’t stop, Greta says, through clenched teeth.
  
  Jimmy does as he’s told and continues fucking Greta, but harder. His hand feels raw, knuckles chafed. He catches a glimpse of them in the mirror, their bodies at awkward angles, practically entwined. Jimmy likes what he sees. After a final husky groan, so low Jimmy can hardly hear it, Greta’s body stills. He tries to pull his hand out, but Greta shakes her head.
  
  Not yet, she says.
  
  They sit there, leaning against one another for a long while. Jimmy can hear the cook cleaning up the kitchen, leaving out the back door. They are silent, save for slow, heavy breathing. Finally, Greta kisses Jimmy’s chin and nods. Slowly, Jimmy slides his hand out of Greta’s pussy. He traces the soft, exquisitely soft folds with his narrow pinky. Greta takes his wrist again, pulls her hand to her lips, kisses the open palm, then closes his fingers over the memory of her lips. He smiles widely. Jimmy Nolan is dizzy, delirious. He is slightly incredulous to be holding a broad like Greta in the palm of his slender, almost delicate hand.",
  image: "https://guernica-wpengine.netdna-ssl.com/wp-content/uploads/2012/10/guernica-broads1.jpeg",
  published: true
)

broads.segments.create!(
  text: "Jimmy Nolan has a thing for broads—loud, brassy women who sit with their legs open and drink beer straight from the bottle—women who always say exactly what they’re thinking and, for better or worse, mean what they say.",
  position: 0
)

broads.segments.create!(
  text: "Jimmy Nolan has a hard time meeting broads. He’s not quite sure if this is the result of geography, circumstance, or personal limitation. Jimmy’s ex-girlfriend Marissa was the antithesis of a broad—pale, thin, precise, and polite with a watery voice and weak handshake. She says Jimmy isn’t the kind of guy broads go for and, more than once during the course of their three-year relationship, she turned up her nose when Jimmy ogled a broad passing by.",
  position: 1
)

broads.segments.create!(
  text: "Jimmy Nolan would like to think he is the kind of guy broads go for. He likes his steak rare, enjoys a cold Budweiser, and has a hearty laugh that echoes in any room. His problem, however, is that he models himself after caricatures of who he thinks broads like. And, unfortunately for Jimmy, he’s a nice guy. He opens doors and covers his lap with a napkin at dinner, never interrupts a conversation, and always says please and thank you. Then there are his hands—slender, almost delicate hands that are finely veined, the skin stretched smoothly over bone without blemish.",
  position: 2
)


GenreStory.create!(
  story_id: broads.id,
  genre_id: romance.id 
)

puts "Adrian stories DONE!"


puts "Making Stories - mila------------------------------"


faery_handbag =Story.create!(
  user_id: mila.id,
  title: "The Faery Handbag",
  description: "I used to go to thrift stores with my friends. We’d take the train into Boston, and go to The Garment District, which is this huge vintage clothing warehouse.",
  text: "I used to go to thrift stores with my friends. We’d take the train into Boston, and go to The Garment District, which is this huge vintage clothing warehouse. Everything is arranged by color, and somehow that makes all of the clothes beautiful. It’s kind of like if you went through the wardrobe in the Narnia books, only instead of finding Aslan and the White Witch and horrible Eustace, you found this magic clothing world–instead of talking animals, there were feather boas and wedding dresses and bowling shoes, and paisley shirts and Doc Martens and everything hung up on racks so that first you have black dresses, all together, like the world’s largest indoor funeral, and then blue dresses–all the blues you can imagine–and then red dresses and so on. Pink-reds and orangey reds and purple-reds and exit-light reds and candy reds. Sometimes I would close my eyes and Natasha and Natalie and Jake would drag me over to a rack, and rub a dress against my hand. “Guess what color this is.

  We had this theory that you could learn how to tell, just by feeling, what color something was. For example, if you’re sitting on a lawn, you can tell what color green the grass is, with your eyes closed, depending on how silky-rubbery it feels. With clothing, stretchy velvet stuff always feels red when your eyes are closed, even if it’s not red. Natasha was always best at guessing colors, but Natasha is also best at cheating at games and not getting caught.
  
  One time we were looking through kid’s t-shirts and we found a Muppets t-shirt that had belonged to Natalie in third grade. We knew it belonged to her, because it still had her name inside, where her mother had written it in permanent marker, when Natalie went to summer camp. Jake bought it back for her, because he was the only one who had money that weekend. He was the only one who had a job.
  
  Maybe you’re wondering what a guy like Jake is doing in The Garment District with a bunch of girls. The thing about Jake is that he always has a good time, no matter what he’s doing. He likes everything, and he likes everyone, but he likes me best of all. Wherever he is now, I bet he’s having a great time and wondering when I’m going to show up. I’m always running late. But he knows that.
  
  We had this theory that things have life cycles, the way that people do. The life cycle of wedding dresses and feather boas and t-shirts and shoes and handbags involves the Garment District. If clothes are good, or even if they’re bad in an interesting way, the Garment District is where they go when they die. You can tell that they’re dead, because of the way that they smell. When you buy them, and wash them, and start wearing them again, and they start to smell like you, that’s when they reincarnate. But the point is, if you’re looking for a particular thing, you just have to keep looking for it. You have to look hard.
  
  Down in the basement at the Garment Factory they sell clothing and beat-up suitcases and teacups by the pound. You can get eight pounds worth of prom dresses–a slinky black dress, a poufy lavender dress, a swirly pink dress, a silvery, starry lame dress so fine you could pass it through a key ring– for eight dollars. I go there every week, hunting for Grandmother Zofia’s faery handbag.
  
  The faery handbag: It’s huge and black and kind of hairy. Even when your eyes are closed, it feels black. As black as black ever gets, like if you touch it, your hand might get stuck in it, like tar or black quicksand or when you stretch out your hand at night, to turn on a light, but all you feel is darkness.
  
  Once I decided that, everything became perfectly clear. First I put down “kirif which means “happy news, and then I got a “b, an “o, an “l, an “e, a “f, another “i, an “s, and a “z. So then I could make “kirif into “bolekirifisz, which could mean “the happy result of a combination of diligent effort and patience.
  
  I would find the faery handbag. The tiles said so. I would work the clasp and go into the handbag and have my own adventures and would rescue Jake. Hardly any time would have gone by before we came back out of the handbag. Maybe I’d even make friends with that poor dog and get to say goodbye, for real, to Zofia. Rustan would show up again and be really sorry that he’d missed Zofia’s funeral and this time he would be brave enough to tell my mother the whole story. He would tell her that he was her father. Not that she would believe him. Not that you should believe this story. Promise me that you won’t believe a word.",
  image: "https://www.vibrational-alchemy.com/faeries/faeries.jpg",
  published: true
)

faery_handbag.segments.create!(
  text: "I used to go to thrift stores with my friends. We’d take the train into Boston, and go to The Garment District, which is this huge vintage clothing warehouse. Everything is arranged by color, and somehow that makes all of the clothes beautiful. It’s kind of like if you went through the wardrobe in the Narnia books, only instead of finding Aslan and the White Witch and horrible Eustace, you found this magic clothing world–instead of talking animals, there were feather boas and wedding dresses and bowling shoes, and paisley shirts and Doc Martens and everything hung up on racks so that first you have black dresses, all together, like the world’s largest indoor funeral, and then blue dresses–all the blues you can imagine–and then red dresses and so on. Pink-reds and orangey reds and purple-reds and exit-light reds and candy reds. Sometimes I would close my eyes and Natasha and Natalie and Jake would drag me over to a rack, and rub a dress against my hand. “Guess what color this is.",
  position: 0
)

faery_handbag.segments.create!(
  text: "We had this theory that you could learn how to tell, just by feeling, what color something was. For example, if you’re sitting on a lawn, you can tell what color green the grass is, with your eyes closed, depending on how silky-rubbery it feels. With clothing, stretchy velvet stuff always feels red when your eyes are closed, even if it’s not red. Natasha was always best at guessing colors, but Natasha is also best at cheating at games and not getting caught.",
  position: 1
)

faery_handbag.segments.create!(
  text: "One time we were looking through kid’s t-shirts and we found a Muppets t-shirt that had belonged to Natalie in third grade. We knew it belonged to her, because it still had her name inside, where her mother had written it in permanent marker, when Natalie went to summer camp. Jake bought it back for her, because he was the only one who had money that weekend. He was the only one who had a job.",
  position: 2
)

faery_handbag.segments.create!(
  text: "Maybe you’re wondering what a guy like Jake is doing in The Garment District with a bunch of girls. The thing about Jake is that he always has a good time, no matter what he’s doing. He likes everything, and he likes everyone, but he likes me best of all. Wherever he is now, I bet he’s having a great time and wondering when I’m going to show up. I’m always running late. But he knows that.",
  position: 3
)

faery_handbag.segments.create!(
  text: "We had this theory that things have life cycles, the way that people do. The life cycle of wedding dresses and feather boas and t-shirts and shoes and handbags involves the Garment District. If clothes are good, or even if they’re bad in an interesting way, the Garment District is where they go when they die. You can tell that they’re dead, because of the way that they smell. When you buy them, and wash them, and start wearing them again, and they start to smell like you, that’s when they reincarnate. But the point is, if you’re looking for a particular thing, you just have to keep looking for it. You have to look hard.",
  position: 4
)

faery_handbag.segments.create!(
  text: "Down in the basement at the Garment Factory they sell clothing and beat-up suitcases and teacups by the pound. You can get eight pounds worth of prom dresses–a slinky black dress, a poufy lavender dress, a swirly pink dress, a silvery, starry lame dress so fine you could pass it through a key ring– for eight dollars. I go there every week, hunting for Grandmother Zofia’s faery handbag.",
  position: 5
)

faery_handbag.segments.create!(
  text: "The faery handbag: It’s huge and black and kind of hairy. Even when your eyes are closed, it feels black. As black as black ever gets, like if you touch it, your hand might get stuck in it, like tar or black quicksand or when you stretch out your hand at night, to turn on a light, but all you feel is darkness.",
  position: 6
)

faery_handbag.segments.create!(
  text: "I would find the faery handbag. The tiles said so. I would work the clasp and go into the handbag and have my own adventures and would rescue Jake. Hardly any time would have gone by before we came back out of the handbag. Maybe I’d even make friends with that poor dog and get to say goodbye, for real, to Zofia. Rustan would show up again and be really sorry that he’d missed Zofia’s funeral and this time he would be brave enough to tell my mother the whole story. He would tell her that he was her father. Not that she would believe him. Not that you should believe this story. Promise me that you won’t believe a word.",
  position: 7
)

GenreStory.create!(
  story_id: faery_handbag.id,
  genre_id: fantasy.id 
)


magic_beg =Story.create!(
  user_id: mila.id,
  title: "Magic for Beginners",
  description: "In one episode of The Library, a boy named Jeremy Mars, fifteen years old, sits on the roof of his house in Plantagenet, Vermont.",
  text: "FOX IS A TELEVISION CHARACTER, and she isn't dead yet. But she will be, soon. She's a character on a television show called The Library. You've never seen The Library on TV, but I bet you wish you had. 
    
  In one episode of The Library, a boy named Jeremy Mars, fifteen years old, sits on the roof of his house in Plantagenet, Vermont. It's eight o'clock at night, a school night, and he and his friend Elizabeth should be studying for the math quiz that their teacher, Mr. Cliff, has been hinting at all week long. Instead they've sneaked out onto the roof. It's cold. They don't know everything they should know about X, when X is the square root of Y. They don't even know Y. They ought to go in. 
      
  But there's nothing good on TV and the sky is very beautiful. They have jackets on, and up in the corners where the sky begins are patches of white in the darkness, still, where there's snow, up on the mountains. Down in the trees around the house, some animal is making a small, anxious sound: Why cry? Why cry? 
      
  What's that one? Elizabeth says, pointing at a squarish configuration of stars. 
      
  That's The Parking Structure, Jeremy says. And right next to that is The Big Shopping Mall and The Lesser Shopping Mall. 
    
  Jeremy isn't sure he's ready to see this episode again so soon, anyway, especially not with Amy. He goes upstairs and takes a shower. Elizabeth's family have a large and distracting selection of shampoos. They don't mind when Jeremy uses their bathroom.",
  image: "https://riverplacecapital.com/wp-content/uploads/2018/11/magic-time-002.jpg",
  published: true
)

magic_beg.segments.create!(
  text: "FOX IS A TELEVISION CHARACTER, and she isn't dead yet. But she will be, soon. She's a character on a television show called The Library. You've never seen The Library on TV, but I bet you wish you had.",
  position: 0
)

magic_beg.segments.create!(
  text: "In one episode of The Library, a boy named Jeremy Mars, fifteen years old, sits on the roof of his house in Plantagenet, Vermont. It's eight o'clock at night, a school night, and he and his friend Elizabeth should be studying for the math quiz that their teacher, Mr. Cliff, has been hinting at all week long. Instead they've sneaked out onto the roof. It's cold. They don't know everything they should know about X, when X is the square root of Y. They don't even know Y. They ought to go in.",
  position: 1
)

magic_beg.segments.create!(
  text: "But there's nothing good on TV and the sky is very beautiful. They have jackets on, and up in the corners where the sky begins are patches of white in the darkness, still, where there's snow, up on the mountains. Down in the trees around the house, some animal is making a small, anxious sound: Why cry? Why cry?",
  position: 2
)

magic_beg.segments.create!(
  text: "What's that one? Elizabeth says, pointing at a squarish configuration of stars.",
  position: 3
)

magic_beg.segments.create!(
  text: "That's The Parking Structure, Jeremy says. And right next to that is The Big Shopping Mall and The Lesser Shopping Mall.",
  position: 4
)

magic_beg.segments.create!(
  text: "Jeremy isn't sure he's ready to see this episode again so soon, anyway, especially not with Amy. He goes upstairs and takes a shower. Elizabeth's family have a large and distracting selection of shampoos. They don't mind when Jeremy uses their bathroom.",
  position: 5
)


GenreStory.create!(
  story_id: magic_beg.id,
  genre_id: fantasy.id 
)

the_princess_frog =Story.create!(
  user_id: mila.id,
  title: "The Princess and the Frog",
  description: "She was hit with a wave of guilt for making the poor frog cry. She tucked him in bed beside her and kissed him gently.",
  text: "Jimmy Nolan has a thing for broads—loud, brassy women who sit with their legs open and drink beer straight from the bottle—women who always say exactly what they’re thinking and, for better or worse, mean what they say.

  Jimmy Nolan has a hard time meeting broads. He’s not quite sure if this is the result of geography, circumstance, or personal limitation. Jimmy’s ex-girlfriend Marissa was the antithesis of a broad—pale, thin, precise, and polite with a watery voice and weak handshake. She says Jimmy isn’t the kind of guy broads go for and, more than once during the course of their three-year relationship, she turned up her nose when Jimmy ogled a broad passing by.
  
  Jimmy Nolan would like to think he is the kind of guy broads go for. He likes his steak rare, enjoys a cold Budweiser, and has a hearty laugh that echoes in any room. His problem, however, is that he models himself after caricatures of who he thinks broads like. And, unfortunately for Jimmy, he’s a nice guy. He opens doors and covers his lap with a napkin at dinner, never interrupts a conversation, and always says please and thank you. Then there are his hands—slender, almost delicate hands that are finely veined, the skin stretched smoothly over bone without blemish.
  
  It is this habit of placing his napkin on his lap that first got the attention of Greta, a waitress, a broad among broads, at his favorite diner. Greta is charmed by Jimmy’s manners and his demeanor, and how, even when he only comes in for coffee and a danish, he still takes the time to use his napkin properly. Greta doesn’t claim to know much, but she knows men. She knows that their hands and their minds wander and that they will say most anything to get into the pants of a broad like her. Knowing so much about men is exhausting for Greta. Each day, when she sees Jimmy Nolan, Greta is grateful to see the kind of man she knows nothing about.
  
  Suddenly Greta throws herself back, her head hitting the dirty mirror. Jimmy blinks. Her cunt spasms around his hand, wetness oozing over his wrist, trickling along his forearm. He leans down, licking some of the moisture. It is entirely satisfying.
  
  Don’t stop, Greta says, through clenched teeth.
  
  Jimmy does as he’s told and continues fucking Greta, but harder. His hand feels raw, knuckles chafed. He catches a glimpse of them in the mirror, their bodies at awkward angles, practically entwined. Jimmy likes what he sees. After a final husky groan, so low Jimmy can hardly hear it, Greta’s body stills. He tries to pull his hand out, but Greta shakes her head.
  
  Not yet, she says.
  
  They sit there, leaning against one another for a long while. Jimmy can hear the cook cleaning up the kitchen, leaving out the back door. They are silent, save for slow, heavy breathing. Finally, Greta kisses Jimmy’s chin and nods. Slowly, Jimmy slides his hand out of Greta’s pussy. He traces the soft, exquisitely soft folds with his narrow pinky. Greta takes his wrist again, pulls her hand to her lips, kisses the open palm, then closes his fingers over the memory of her lips. He smiles widely. Jimmy Nolan is dizzy, delirious. He is slightly incredulous to be holding a broad like Greta in the palm of his slender, almost delicate hand.",
  image: "https://www.sheknows.com/wp-content/uploads/2018/08/princess-frog-inside-scoop_rrpcwn.jpeg",
  published: true
)

the_princess_frog.segments.create!(
  text: "She was hit with a wave of guilt for making the poor frog cry. She tucked him in bed beside her and kissed him gently.",
  position: 0
)

the_princess_frog.segments.create!(
  text: "Now, the problem with playing alone was that no one was ever there to catch the ball if she tossed it too high in the air.  One day, as she was running around lilies and daisies and hedges and roses, she tossed her ball higher in the air than she ever had before.",
  position: 1
)

the_princess_frog.segments.create!(
  text: "Her beautiful golden ball had plopped right into a small pond nearby! She ran over to the pond and watched sadly as the golden sphere sank deeper and deeper into the water.  The princess looked down at her dress.  She was wearing her favourite golden dress; the sparkles and gems on the front of the brilliant gown were rare and she was afraid that if she entered the water she would destroy her outfit. Frustrated with her situation, the princess began to cry.",
  position: 2
)

the_princess_frog.segments.create!(
  text: "Suddenly, the Princess heard a strange noise coming from the middle of the water.  Hop!  Hop!",
  position: 3
)

the_princess_frog.segments.create!(
  text: "Do you not know how to swim? asked a small frog. Hop!  The Princess looked up and scrunched her face up at the sight of the green creature sitting on the lily pad.",
  position: 4
)

the_princess_frog.segments.create!(
  text: "I do, she replied.",
  position: 5
)

the_princess_frog.segments.create!(
  text: "Well, why don't you come on in? he asked.",
  position: 6
)

the_princess_frog.segments.create!(
  text: "I don't want to spoil my beautiful gold dress! the Princess replied, rolling her eyes at the frog.",
  position: 7
)


GenreStory.create!(
  story_id: the_princess_frog.id,
  genre_id: romance.id 
)


the_spaceship =Story.create!(
  user_id: mila.id,
  title: "The Spaceship 2000",
  description: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys.",
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "http://www.entropiaplanets.com/w/images/5/56/Imperium_Spaceship_Concept_Art_02.jpg",
  published: true
)

the_spaceship.segments.create!(
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.",
  position: 0
)

the_spaceship.segments.create!(
  text: "Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.",
  position: 1
)

the_spaceship.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

the_spaceship.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

the_spaceship.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

the_spaceship.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: the_spaceship.id,
  genre_id: sci_fi.id 
)



puts "Mila stories DONE!"

puts "Making Stories - rose------------------------------"


hunger_games =Story.create!(
  user_id: rose.id,
  title: "The Hunger Games",
  description: "The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded.",
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://672149.smushcdn.com/1059611/wp-content/uploads/2018/03/Hungergames-thumb-square.jpg?lossy=1&strip=1&webp=1",
  published: true
)

hunger_games.segments.create!(
  text: "The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts. Early in its history, a rebellion led by a 13th district against the Capitol resulted in its destruction and the creation of an annual televised event known as the Hunger Games. In punishment, and as a reminder of the power and grace of the Capitol, each district must yield one boy and one girl between the ages of 12 and 18 through a lottery system to participate in the games. The 'tributes' are chosen during the annual Reaping and are forced to fight to the death, leaving only one survivor to claim victory.",
  position: 0
)

hunger_games.segments.create!(
  text: "Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.",
  position: 1
)

hunger_games.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

hunger_games.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

hunger_games.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

hunger_games.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: hunger_games.id,
  genre_id: sci_fi.id 
)


hope_tragedy =Story.create!(
  user_id: rose.id,
  title: "Hope: A Tragedy",
  description: "At the start of Shalom Auslander’s staggeringly nervy new novel Hope: A Tragedy, a doleful Jewish non-farmer named Solomon Kugel climbs fearfully into the attic of his recently acquired farmhouse.",
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "http://positivepsychology.org.uk/wp-content/uploads/2009/10/hope-min.jpg",
  published: true
)

hope_tragedy.segments.create!(
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.",
  position: 0
)

hope_tragedy.segments.create!(
  text: "No such luck. The tapping is from a typewriter. And the typist, a stooped, foul-mouthed old lady who does not suffer fools gladly, is the single person about whom Jewish writers most avidly fantasize: Anne Frank.",
  position: 1
)

hope_tragedy.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

hope_tragedy.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

hope_tragedy.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

hope_tragedy.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: hope_tragedy.id,
  genre_id: tragedy.id 
)


modern_tragedy =Story.create!(
  user_id: rose.id,
  title: "Modern Tragedy",
  description: "In Modern Tragedy, Williams bridges the gap between literary and socio-economic study, tracing the notion of tragedy.",
  text: "It was the hunter's first time outside Montana. He woke, stricken still with the hours-old vision of ascending through rose-lit cumulus, of houses and barns like specks deep in the snowed-in valleys, all the scrolling country below looking December—brown and black hills streaked with snow, flashes of iced-over lakes, the long braids of a river gleaming at the bottom of a canyon. Above the wing the sky had deepened to a blue so pure he knew it would bring tears to his eyes if he looked long enough.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://i1.sndcdn.com/artworks-000301847871-i3kiom-t500x500.jpg",
  published: true
)

modern_tragedy.segments.create!(
  text: "Williams bridges the gap between literary and socio-economic study, tracing the notion of tragedy from its philosophical and dramatic origins with Aristotle. In addition, Williams discusses tragedy in Chaucher, Nietzche, Brecht, Sartre and other leading figures in the history of thought, as well as elements of tragic experience – both political and personal - in socialist revolutions of the 20th century.",
  position: 0
)

modern_tragedy.segments.create!(
  text: "No such luck. The tapping is from a typewriter. And the typist, a stooped, foul-mouthed old lady who does not suffer fools gladly, is the single person about whom Jewish writers most avidly fantasize: Anne Frank.",
  position: 1
)

modern_tragedy.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

modern_tragedy.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

modern_tragedy.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

modern_tragedy.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: modern_tragedy.id,
  genre_id: tragedy.id 
)

romeo_j =Story.create!(
  user_id: rose.id,
  title: "Romeo and Juliet",
  description: "Romeo and Juliet is a tragedy written by William Shakespeare early in his career about two young star-crossed lovers whose deaths ultimately reconcile their feuding families.",
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "http://www.oklahomashakespeare.com/sites/osp/uploads/images/R_and_J_graphic.jpg",
  published: true
)

romeo_j.segments.create!(
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.",
  position: 0
)

romeo_j.segments.create!(
  text: "Romeo and Juliet begins as the Chorus introduces two feuding families of Verona: the Capulets and the Montagues. On a hot summer's day, the young men of each faction fight until the Prince of Verona intercedes and threatens to banish them. Soon after, the head of the Capulet family plans a feast. His goal is to introduce his daughter Juliet to a Count named Paris who seeks to marry Juliet. ",
  position: 1
)

romeo_j.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

romeo_j.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

romeo_j.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

romeo_j.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: romeo_j.id,
  genre_id: tragedy.id 
)


puts "DONE!"

puts "Making Stories - kin ------------------------------"


p_w =Story.create!(
  user_id: kim.id,
  title: "Peter and Wendy",
  description: "Peter Pan; or, the Boy Who Wouldn't Grow Up or Peter and Wendy is J. M. Barrie's most famous work, in the form of a 1904 play and a 1911 novel. ",
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://www.napavalleynow.com/wp-content/uploads/sites/www.napavalleynow.com/images/2018/04/peter_x_wendy__to_neverland_by_elalendi-400x284.png",
  published: true
)

p_w.segments.create!(
  text: "All children, except one, grow up. They soon know that they will grow up, and the way Wendy knew was this. One day when she was two years old she was playing in a garden, and she plucked another flower and ran with it to her mother. I suppose she must have looked rather delightful, for Mrs. Darling put her hand to her heart and cried, 'Oh, why can't you remain like this for ever!' This was all that passed between them on the subject, but henceforth Wendy knew that she must grow up. You always know after you are two. Two is the beginning of the end.",
  position: 0
)

p_w.segments.create!(
  text: "Of course they lived at 14, and until Wendy came her mother was the chief one. She was a lovely lady, with a romantic mind and such a[Pg 2] sweet mocking mouth. Her romantic mind was like the tiny boxes, one within the other, that come from the puzzling East, however many you discover there is always one more; and her sweet mocking mouth had one kiss on it that Wendy could never get, though there it was, perfectly conspicuous in the right-hand corner.",
  position: 1
)

p_w.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

p_w.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

p_w.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

p_w.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: p_w.id,
  genre_id: fantasy.id 
)

moving_castle =Story.create!(
  user_id: kim.id,
  title: "Howl's Moving Castle",
  description: "Howl's Moving Castle is a fantasy novel by British author Diana Wynne Jones, first published in 1986 by Greenwillow Books of New York. ",
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "http://static.tvtropes.org/pmwiki/pub/images/howls-moving-castle_7410.jpg",
  published: true
)

moving_castle.segments.create!(
  text: "Sophie is trapped in her life as the responsible eldest daughter who runs the family hat business and has nothing to look forward to. Everything changes when the evil Witch of the Waste bursts into her shop and, for mysterious reasons, turns her into an old woman. Wandering away from town she finds herself alone in the wilderness at night, and stumbles across the titular castle, owned by a wizard rumored to take the souls of young girls.",
  position: 0
)

moving_castle.segments.create!(
  text: "Once there she makes a deal with a captive fire demon -- if she breaks the contract between the demon and Howl, the demon will lift the spell on Sophie. There's only one problem -- no one can tell her what the contract is, or how to break it.",
  position: 1
)

moving_castle.segments.create!(
  text: "He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.",
  position: 2
)

moving_castle.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

moving_castle.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

moving_castle.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: moving_castle.id,
  genre_id: fantasy.id 
)

hobbit =Story.create!(
  user_id: kim.id,
  title: "The Hobbit Bilbo ",
  description: "Bilbo Baggins is a hobbit who lives a quiet life, until it is upset by a visit from a wizard named Gandalf.",
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://c.o0bg.com/rf/image_960w/Boston/2011-2020/2014/12/04/BostonGlobe.com/Arts/Images/HBT-FP-0022.jpg",
  published: true
)

hobbit.segments.create!(
  text: "Bilbo Baggins is a hobbit who lives a quiet life, until it is upset by a visit from a wizard named Gandalf. He wants Bilbo to help a group of dwarves take back the Mountain from Smaug, a dragon. Bilbo is unsure he wants to help, but he is drawn into the adventure by Gandalf, who tells the dwarves Bilbo is a burglar.",
  position: 0
)

hobbit.segments.create!(
  text: "The thirteen dwarves are led by Thorin Oakenshield, whose grandfather left a map and key to the Mountain in the care of Gandalf. The group encounters a few setbacks, such as the loss of the pony carrying their food supplies. Another occurs when Bilbo and the dwarves are captured by trolls, but Gandalf manages, through some trickery to free them.",
  position: 1
)

hobbit.segments.create!(
  text: "One night the group is forced to take shelter in a cave during a bad storm. The cave is the home of goblins, who capture them. Gandalf helps them escape, but Bilbo is left behind, after he is knocked unconscious.",
  position: 2
)

hobbit.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

hobbit.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

hobbit.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: hobbit.id,
  genre_id: adventure.id 
)


treasure_island =Story.create!(
  user_id: kim.id,
  title: "Treasure Island ",
  description: "From the moment young Jim Hawkins first encounters the sinister Blind Pew at the Admiral Benbow Inn until the climactic battle for treasure on a tropic isle.",
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://images-eu.ssl-images-amazon.com/images/I/81ukmBi4-5L.png",
  published: true
)

treasure_island.segments.create!(
  text: "Jim Hawkins is a young boy who lives at his parents’ inn, the Admiral Benbow, near Bristol, England, in the eighteenth century. An old sea captain named Billy Bones dies in the inn after being presented with a black spot, or official pirate verdict of guilt or judgment. Jim is stirred to action by the spot and its mysterious, accurate portent of Billy’s death. Hastily, Jim and his mother unlock Billy’s sea chest, finding a logbook and map inside. Hearing steps outside, they leave with the documents before Billy’s pursuers ransack the inn.",
  position: 0
)

treasure_island.segments.create!(
  text: "Jim realizes that the contents he has snatched from the sea chest must be valuable, so he takes one of the documents he has found to some local acquaintances, Dr. Livesey and Squire Trelawney. Excited, they recognize it as a map for a huge treasure that the infamous pirate Captain Flint has buried on a distant island. Trelawney immediately starts planning an expedition. Naïve in his negotiations to outfit his ship, the Hispaniola, Trelawney is tricked into hiring one of Flint’s former mates, Long John Silver, and many of Flint’s crew. Only the captain, Smollett, is trustworthy. The ship sets sail for Treasure Island with nothing amiss, until Jim overhears Silver’s plans for mutiny. Jim tells the captain about Silver and the rest of the rebellious crew.",
  position: 1
)

treasure_island.segments.create!(
  text: "One night the group is forced to take shelter in a cave during a bad storm. The cave is the home of goblins, who capture them. Gandalf helps them escape, but Bilbo is left behind, after he is knocked unconscious.",
  position: 2
)

treasure_island.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

treasure_island.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

treasure_island.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: treasure_island.id,
  genre_id: adventure.id 
)

puts "DONE!"

puts "Making Stories - alex ------------------------------"


lightning_t =Story.create!(
  user_id: alex.id,
  title: "The Lightning Thief",
  description: "Percy Jackson is a good kid, but he can't seem to focus on his schoolwork or control his temper.",
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://www.monmouth.edu/events/wp-content/uploads/sites/19/2018/07/lightning_thief_thumb.jpg",
  published: true
)

lightning_t.segments.create!(
  text: "Meet Percy Jackson. He is twelve years old, and he decides to tell us the story of his past year. On the first day of summer, just after his sixth-grade year, Percy discovers that something is wrong with him. Or rather, something is right with him. He learns that he is a half-blood: half-human, half-god. He is taken to Camp Half-Blood in New York, a camp for kids just like him that is safe from monsters that like to attack half-bloods. ",
  position: 0
)

lightning_t.segments.create!(
  text: "At camp, Percy learns more information about himself: his father is Poseidon, god of the Sea and brother to Zeus and Hades. When Zeus's master bolt (the thing that allows him to create lightning whenever he wants) is stolen, Poseidon is blamed for the theft. Zeus tells Poseidon that the master bolt must be returned to Mount Olympus by the summer solstice, or else he will declare war on Poseidon. Poseidon is miffed that his brother Zeus would even accuse him of such a thing.",
  position: 1
)

lightning_t.segments.create!(
  text: "Percy sets out on a quest to retrieve Zeus's master bolt, which is believed to be in Hades's captivity in the Underworld. Helping Percy are Grover, his BFF, and Annabeth, a smart demi-goddess and daughter of Athena. The three take a bus, a train, a truck, and a taxi cab to make their way across America, from New York to Los Angeles, where the gates of the Underworld are located. They stop in St. Louis, Denver, and Las Vegas along the way. During their quest, they battle vicious monsters like Medusa, they find disaster on the observation deck of the Gateway Arch, they are tricked by the god of war (Ares), they nearly lose their memories in an enchanted Vegas casino, and they are almost stretched to death.",
  position: 2
)

lightning_t.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

lightning_t.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

lightning_t.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: lightning_t.id,
  genre_id: adventure.id 
)

lightning_t =Story.create!(
  user_id: alex.id,
  title: "The Lightning Thief",
  description: "Percy Jackson is a good kid, but he can't seem to focus on his schoolwork or control his temper.",
  text: "An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father’s choice, the County Paris. With the help of Juliet’s nurse, the women arrange for the couple to marry the next day, but Romeo’s attempt to halt a street fight leads to the death of Juliet’s own cousin, Tybalt, for which Romeo is banished. In a desperate attempt to be reunited with Romeo, Juliet follows the Friar’s plot and fakes her own death. The message fails to reach Romeo, and believing Juliet dead, he takes his life in her tomb. Juliet wakes to find Romeo’s corpse beside her and kills herself. The grieving family agree to end their feud.
  
  Now it was dark. The airplane descended over Chicago, its galaxy of electric lights, the vast neighborhoods coming clearer as the plane glided toward the airport—streetlights, headlights, stacks of buildings, ice rinks, a truck turning at a stoplight, scraps of snow atop a warehouse and winking antennae on faraway hills, finally the long converging parallels of blue runway lights, and they were down.

  He walked into the airport, past the banks of monitors. Already he felt as if he'd lost something, some beautiful perspective, some lovely dream fallen away. He had come to Chicago to see his wife, whom he had not seen in twenty years. She was there to perform her magic for a higher-up at the state university. Even universities, apparently, were interested in what she could do. Outside the terminal the sky was thick and gray and hurried by wind. Snow was coming. A woman from the university met him and escorted him to her Jeep. He kept his gaze out the window.
  
  They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?

  Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.

  But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.
  ",
  image: "https://www.monmouth.edu/events/wp-content/uploads/sites/19/2018/07/lightning_thief_thumb.jpg",
  published: true
)

lightning_t.segments.create!(
  text: "Meet Percy Jackson. He is twelve years old, and he decides to tell us the story of his past year. On the first day of summer, just after his sixth-grade year, Percy discovers that something is wrong with him. Or rather, something is right with him. He learns that he is a half-blood: half-human, half-god. He is taken to Camp Half-Blood in New York, a camp for kids just like him that is safe from monsters that like to attack half-bloods. ",
  position: 0
)

lightning_t.segments.create!(
  text: "At camp, Percy learns more information about himself: his father is Poseidon, god of the Sea and brother to Zeus and Hades. When Zeus's master bolt (the thing that allows him to create lightning whenever he wants) is stolen, Poseidon is blamed for the theft. Zeus tells Poseidon that the master bolt must be returned to Mount Olympus by the summer solstice, or else he will declare war on Poseidon. Poseidon is miffed that his brother Zeus would even accuse him of such a thing.",
  position: 1
)

lightning_t.segments.create!(
  text: "Percy sets out on a quest to retrieve Zeus's master bolt, which is believed to be in Hades's captivity in the Underworld. Helping Percy are Grover, his BFF, and Annabeth, a smart demi-goddess and daughter of Athena. The three take a bus, a train, a truck, and a taxi cab to make their way across America, from New York to Los Angeles, where the gates of the Underworld are located. They stop in St. Louis, Denver, and Las Vegas along the way. During their quest, they battle vicious monsters like Medusa, they find disaster on the observation deck of the Gateway Arch, they are tricked by the god of war (Ares), they nearly lose their memories in an enchanted Vegas casino, and they are almost stretched to death.",
  position: 2
)

lightning_t.segments.create!(
  text: "They were in the car for forty-five minutes, passing first the tall, lighted architecture of downtown, then naked suburban oaks, heaps of ploughed snow, gas stations, power towers, and telephone wires. The woman said, So you regularly attend your wife's performances?",
  position: 3
)

lightning_t.segments.create!(
  text: "Before long his wife stepped onto the deck and came down to join him. There were things he had been preparing to say: something about a final belief, an expression of gratitude for providing a reason to leave the valley, if only for a night. He wanted to tell her that although the wolves were gone, may always have been gone, they still came to him in dreams. That they could run there, fierce and unfettered, was surely enough. She would understand. She had understood long before he did.",
  position: 4
)

lightning_t.segments.create!(
  text: "But he was afraid to speak. He could see that speaking would be like dashing some very fragile bond to pieces, like kicking a dandelion gone to seed; the wispy, tenuous sphere of its body would scatter in the wind. So instead they stood together, the snow fluttering down from the clouds to melt into the water, where their reflected images trembled like two people trapped against the glass of a parallel world, and he reached, finally, to take her hand.",
  position: 5
)

GenreStory.create!(
  story_id: lightning_t.id,
  genre_id: adventure.id 
)
































puts "DONE!"

puts "Making Stories_likes..."

@user1 = User.first
@user2 = User.second
@story1 = Story.first
@story2 = Story.second
@story3 = Story.third
@story4 = Story.find(4)
@story5 = Story.find(5)
@story6 = Story.find(6)
@story7 = Story.find(7)
@story8 = Story.find(8)
@story9 = Story.find(9)
@story10 = Story.find(10)
@story11 = Story.find(11)


StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story1.id
)

StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story2.id
)

StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story3.id
)
StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story4.id
)
StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story5.id
)
StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story6.id
)
StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story7.id
)

StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story8.id
)
StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story9.id
)
StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story10.id
)
StoriesLike.create!(
  user_id: @user1.id,
  story_id: @story11.id
)


StoriesLike.create!(
  user_id: @user2.id,
  story_id: @story2.id
)



puts "Making Segments..."


puts "Feedbacks..."

@seg1 = Segment.first
@seg2 = Segment.second

Feedback.create!(
  segment_id: @seg1.id,
  user_id: @user1.id,
  text: "Pro et libris denique, discere cotidieque id eos. Eu dissentiet disputationi vix, ut accumsan qualisque eos, ad pri sale facilisis. No nec verear splendide, eam quem enim ei. Assum dissentiunt quo in. Eius necessitatibus cu cum, id eum habeo adipiscing. Duo ex commodo scriptorem, vim ex quas everti lobortis."
  )

  Feedback.create!(
  segment_id: @seg2.id,
  user_id: @user2.id,
  text: "Et copiosae facilisis consequuntur qui. Quem democritum vim ea, vim everti sadipscing in. Nam quando homero cetero ea, te est natum dictas inimicus, his tota facilisi te. Per iriure utroque facilis ut."
  )

  Feedback.create!(
  segment_id: @seg2.id,
  user_id: @user1.id,
  text: "Pro et libris denique, discere cotidieque id eos. Eu dissentiet disputationi vix, ut accumsan qualisque eos, ad pri sale facilisis. No nec verear splendide, eam quem enim ei. Assum dissentiunt quo in. Eius necessitatibus cu cum, id eum habeo adipiscing. Duo ex commodo scriptorem, vim ex quas everti lobortis."
  )



puts "DONE!"


puts "Making Followers..."

adrian.following_relationships.create!(
  follower_id: alva.id
)

adrian.following_relationships.create!(
  follower_id: rose.id
)

kim.following_relationships.create!(
  follower_id: rose.id
)

kim.following_relationships.create!(
  follower_id: adrian.id
)

rose.following_relationships.create!(
  follower_id: kim.id
)

rose.following_relationships.create!(
  follower_id: adrian.id
)

# For testing duplication of followers
# rose.following_relationships.create!(
#   follower_id: adrian.id
# )

alva.following_relationships.create!(
  follower_id: rose.id
)

alva.following_relationships.create!(
  follower_id: adrian.id
)

alva.following_relationships.create!(
  follower_id: kim.id
)

puts "DONE!"


puts "Making Comments..."

@story1.comments.create!(
  user_id: alva.id,
  text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
)
@story1.comments.create!(
  user_id: rose.id,
  text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."
)


puts "DONE!"


