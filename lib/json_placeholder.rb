require 'open-uri'

module JsonPlaceholder
  def self.data_import!
    retrieve_albums
    retrieve_photos
    retrieve_users
    # need to add relations after the data is loaded
    Album.add_relations!
    Photo.add_relations!
  end

  def self.retrieve_albums
    album_data = JSON.parse(open("http://jsonplaceholder.typicode.com/albums").read)
    Album.delete_all
    album_data.each do |hash|
      Album.create(
        title: hash["title"],
        retrieved_id: hash["id"],
        retrieved_user_id: hash["userId"],
      )
    end
  end

  def self.retrieve_photos
    photo_data = JSON.parse(open("http://jsonplaceholder.typicode.com/photos").read)
    Photo.delete_all
    photo_data.each do |hash|
      Photo.create(
        title: hash["title"] ,
        retrieved_id: hash["id"] ,
        retrieved_album_id: hash["albumId"] ,
        thumbnail_url: hash["thumbnailUrl"] ,
        url: hash["url"] ,
      )
    end 
  end

  def self.retrieve_users
    user_data = JSON.parse(open("http://jsonplaceholder.typicode.com/users").read)
    User.delete_all
    user_data.each do |hash|
      User.create(
        name: hash["name"], 
        user_name: hash["username"],
        email: hash["email"], 
        address_street: hash["address"]["street"],       # flattening this data structure
        address_suite: hash["address"]["suite"],
        address_city: hash["address"]["city"],
        address_zip_code: hash["address"]["zipcode"],
        phone: hash["phone"],
        website: hash["website"], 
        password: hash["password"], 
        retrieved_id: hash["id"],
      )
    end
  end
end
