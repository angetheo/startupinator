################ TEST SEED ###################

# Companies:
companies = ["Snapchat", "Uber", "Dropbox",
         "Lyft", "Tinder", "HotelTonight",
         "Buzzfeed", "Facebook", "Twitter",
         "Yelp", "Craigslist", "Spotify",
         "YouTube", "ChatRoulette", "Pandora",
         "Groupon", "AirBnB", "Instagram",
         "Google Now", "Siri", "Pinterest",
         "WebMD"]
companies.each { |name| Company.create({ name: name })}

# Audiences:
audiences = ["Action Figures", "Action Figure Collectors", "Cats",
             "Dogs", "Babies", "Model Planes", "Clowns",
             "Kim Kardashian Pictures", "Rappers", "Snakes",
             "Hookers", "Erectile Dysfunction", "East German Pornographers",
             "Furniture", "Personal Problems", "Former US Presidents",
             "Professional", "Athletes", "Fruits (edible ones)",
             "Left-handed Hipsters", "Comic Book Movies", "The elderly",
             "really fancy cheese", "Harry Potter Fans", "Questionable massage parlours",
             "Mute Ventriloquists", "Your dad'92s old shirts", "Gypsies",
             "Ventriloquists", "Screenwriters", "Barack Obama",
             "Mansplaining", "travel mugs", "bird watchers",
             "miniature equine aficionado", "reading", "finding a car",
             "storing data", "listening to music", "finding a restaurant",
             "clickbait", "figuring out whats wrong with you", "reliving past misdeeds",
             "cat pictures", "food pictures", "stalking your ex",
             "your ego", "selling your crap", "vegans", "used children'92s toys",
             "skinny opera singers", "programmers", "republicans",
             "democrats", "racists"," playing guitar in subways",
             "acknowledging the elephant in the room", "Gynecologists",
             "sleeping"]
audiences.each { |name| Audience.create({ name: name })}

# Sample Categories
# add more
categories = ["transportation", "dating", "food", "social", "photography"]
categories.each { |name| Category.create({ name: name })}

###############################################
