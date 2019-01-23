require("pry")
require_relative("../models/album")
require_relative("../models/artist")

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({'name' => 'Queen'})
artist1.save()


artist2 = Artist.new({'name' => "Red Hot Chillie Peppers"})
artist2.save()
artist2.name = 'Guns n Roses'
artist2.update()

artist3 = Artist.new({'name' => "Oasis"})
artist3.save()
artist3.delete()

album1 = Album.new({'title' => 'Made in Heaven',
'genre' => 'Rock',
'artist_id' => artist1.id })
album1.save()
album1.title = 'The Game'
album1.update()

album2 = Album.new({'title' => 'The Miracle',
'genre' => 'Rock',
'artist_id' => artist1.id })
album2.save()
album2.delete()

album3 = Album.new({'title' => 'Jazz',
'genre' => 'Rock',
'artist_id' => artist1.id })
album3.save()


album4 = Album.new({'title' => 'G N R Lies ',
'genre' => 'Hard Rock',
'artist_id' => artist2.id })
album4.save()

binding.pry
nil
