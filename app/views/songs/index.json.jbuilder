json.array!(@songs) do |song|
  json.extract! song, :id, :title, :length_in_seconds
  json.url song_url(song, format: :json)
end
