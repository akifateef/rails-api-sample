json.array! @artists do |artist|
  json.(artist, :id, :name, :label)
  json.albums artist.albums, partial: 'albums/album', as: :album
end
