# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all
Review.destroy_all

books = [
  {name: "1984", description: "While 1984 has come and gone, Orwell's narrative is more timely than ever. 1984 presents a negative utopia....", author: "George Orwell, Erich Fromm"},
  {name: "The Catcher in the Rye", description: "Since his debut in 1951 as The Catcher in the Rye, Holden Caulfield has been synonymous with cynical adolescent. Holden narrates the story of a couple of days in his sixteen-year-old life, just after he's been expelled from prep school.", author: "J.D. Salinger"},
  {name: "The Great Gatsby", description: "A portrait of the Jazz Age in all of its decadence and excess, The Great Gatsby captured the spirit of the author's generation and earned itself a permanent place in American mythology. Self-made, self-invented millionaire...", author: "F. Scott Fitzgerald"},
  {name: "The Diary of a Young Girl", description: "Discovered in the attic in which she spent the last years of her life, Anne Frank's remarkable diary has since become a world classic—a powerful reminder of the horrors of war and an eloquent testament...", author: "Anne Frank, Eleanor Roosevelt"},
  {name: "Brave New World", description: "Far in the future, the World Controllers have created the ideal society. Through clever use of genetic engineering, brainwashing and recreational sex and drugs, all its members are happy consumers.", author: "Aldous Huxley"},
  {name: "East of Eden", description: "Set in the rich farmland of California’s Salinas Valley, this sprawling and often brutal novel follows the intertwined destinies of two families—the Trasks and the Hamiltons—whose...", author: "John Steinbeck"},
  {name: "The Old Man and the Sea", description: "Here, for a change, is a fish tale that actually does honor to the author. The Old Man & the Sea revived Hemingway's career, which was foundering under the weight of ...", author: "Ernest Hemingway"},
  {name: "Atlas Shrugged", description: "You must be prepared, when you read this novel, to check every premise at the root of your convictions. This is a mystery story, not about the murder — and rebirth — of man’s...", author: "Ayn Rand"},
  {name: "The Alchemist", description: "Paulo Coelho's enchanting novel has inspired a devoted following around the world. This story, dazzling in its powerful simplicity and inspiring wisdom, is about...", author: "Paulo Coelho"},
  {name: "The Unbearable Lightness of Being", description: "In The Unbearable Lightness of Being, Milan Kundera tells the story of a young woman in love with a man torn between his ...", author: "Milan Kundera, Michael Henry Heim"},
  {name: "The Metamorphosis", description: "It is the story of a young man who, transformed overnight into a giant beetle-like insect, becomes an object of disgrace to his family...", author: "Franz Kafka, Stanley Corngold"},
  {name: "The Master and Margarita", description: "Mikhail Bulgakov's devastating satire of Soviet life was written during the darkest period of Stalin's regime. Combining two distinct yet interwoven...", author: "Mikhail Bulgakov"},
  {name: "Beyond the ice limit", description: "Effective Engineering Solutions’ chief honcho, Eli Glinn, is out of his wheelchair, walking and ready for revenge after his agent Gideon...", author: "Douglas Preston"}
]

books.each do |book|
  Book.create book
end

reviews = [
  {text: "1984 is not a particularly good novel, but it is a very good essay. On the novel front, the characters are bland and you only care about them because of the awful things they live through. As a novel all the political exposition is heavyhanded...", author: "John Wiswell", book_id: 1},
  {text: "In George Orwell's 1984, Winston Smith is an open source developer who writes his code offline because his ISP has installed packet sniffers that are regulated by the government under the Patriot Act. It's really for his own protection, though.", author: "Dave", book_id: 1},
  {text: "WAR IS PEACE. FREEDOM IS SLAVERY. IGNORANCE IS STRENGTH. Those words keep sounding in my head since I read this book. Gosh, probably the most haunting not to mention frightening book I've ever read. 1984 should also be included in the horror genre.", author: "Silvana", book_id: 1},
  {text: "I was worried as hell about reading this book again. The last time I read it was about a thousand years ago when I was just a kid. I was lousy with angst just like good old Holden back then. I really was.", author: "Matt", book_id: 2},
  {text: "Classic. Yes. THE great American novel. Hmph, so I heard. I suppose it should make one more interested, or at least feel more compelled to read something (or re-read as is the case here) when it has 'classic' and 'everyone else loves it!'.", author: "Kat", book_id: 3},
  {text: "Great Gatsby is a beautiful story. Fitzgerald's symbolism is deep and profound. I believe that for every reader this story of love and loss has something different to say. It touches the heart in so many different ways. ", author: "Richard", book_id: 3},
  {text: "I read this book when I was about 8 and then again when I was 14. I think that it is good 8 and up.", author: "Caroline", book_id: 4},
  {text: "I really loved this! I read it in sixth grade and it has really good role models and messages.", author: "Brat", book_id: 4},
  {text: "Brave New World is a classic written to make its readers uncomfortable. It accomplishes its point well. Still, it is only getting 3 stars from me, as I rate books based on my personal level of enjoyment rather than literary value.", author: "Nataliya", book_id: 5},
  {text: "Such a happy tale. Now I remember why I don't read dystopia all that often, it's depressing. I liked this novel but I do think it's the weakest out of the Big Dystopia 3 (the other two being Nineteen Eighty-Four and Fahrenheit 451).", author: "Barry", book_id: 5},
  {text: "To cut a long story short, the inescapable destiny of every society is to morph into a dystopia. Alternatively, a biting satire on capitalism and consumerism.", author: "Samanta", book_id: 5},
  {text: "I am on a golden roll of amazingly fantastic books!! East of Eden by John Steinbeck was our book club pick for this month. I almost didn't read it. You see, it's an old friend...", author: "Kristin", book_id: 6},
  {text: "Parts of this book are god-like. At different stages in the beginning, middle, and end, I burnt through pages like this was some sort of mystery-thriller, but obviously with all the depth of Steinbeck...", author: "Brian", book_id: 6},
  {text: "I think this is the best-known story in the world because it is everybody's story. I think it is the symbol story of the human soul. ...The greatest terror a child can have is that he is not loved", author: "Madeline", book_id: 6},
  {text: "There isn't any symbolism. The sea is the sea. The old man is an old man. The boy is a boy and the fish is a fish. The sharks are all sharks no better and no worse. All the symbolism that people say is shit.", author: "Madeline", book_id: 7},
  {text: "Sad book. Read it, but know it is sad. This is probably written at about a 4th grade reading level, and the audience is at least that broad.", author: "Greg", book_id: 7},
  {text: "I don't know if any other author would have been able to spend 140 pages on a subject as simple as this (although Dickens probably could), but Ernest Hemingway succeeded in the attempt, creating a timeless classic. ", author: "Robert", book_id: 7},
  {text: "This book, as much as I detest it, is actually rather useful. Those who have read it tend to be those whom I most especially desire to avoid. Because those who have read it are invariably proud of the fact--ostentatiously", author: "Seth", book_id: 8},
  {text: "Based on everything I've heard about Rand, in conversation and online, from her supporters and her detractors, or in interviews with the author or articles by her, I feel there is no reason to believe that this...'.", author: "Kelly", book_id: 8},
  {text: "'When you really want something, the whole universe conspires in helping you to achieve it' This book has crossed the boundaries of books, and has taken a life of its own, creating a movement all around the globe.", author: "Nikita", book_id: 9},
  {text: "This book definitely wins the award for Most Pretentious Title Ever", author: "Tom", book_id: 10},
  {text: "13% and I'm done. I have had a run of books that have bored me, or annoyed me, or just did nothing for me. This one is... You know, I don't even know how to describe this one.", author: "Jess", book_id: 10},
  {text: "I spent part of my lazy weekend reading this book on the grassy hills of The Huntington Library surrounded by gardens, art, and beauty. Even the serene surroundings and my sensational reading date could not make up for this book.", author: "Anton", book_id: 10},
  {text: "Far be it from me to analyze this unique work from Kafka. He never explained it himself, so we are free to make of it what we will.", author: "Peter", book_id: 11},
  {text: "A classic story, and one of my favorites by Kafka. I re-read this one yesterday, and all of the emotions that I felt the first time I discovered this title, immediately came flooding back.", author: "Kristina", book_id: 11},
  {text: "I had vivid memories of the first reading, although if you had asked me to describe them, I wouldn’t have been able to. All I can recall is something fluid and magical.", author: "Albert", book_id: 12},
  {text: "Re-reading can be a terribly useful practice. I enjoyed the book enough before I suppose, but not nearly so much as this time.", author: "John", book_id: 12},
  {text: "I enjoyed Beyond The Ice Limit, and finished it in two days. I've read virtually all of these authors' books -- their stand-alones, partnered and individual stories", author: "Frank", book_id: 13},
  {text: "There is nothing, as far as my opinion goes, as fine as reading a new book by Preston and Child. This is no exception!! If you love Crew this one is for you.", author: "Kate", book_id: 13}
 ]

reviews.each do |review|
  Review.create review
end
