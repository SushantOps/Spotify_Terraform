resource "spotify_playlist" "Bollywood" {
  name =" My playlist"
  description = "This is Bollywood playlist"

  tracks = ["16kiQQ4BoLHDyj5W2fkfNK"]
}

data "spotify_search_track" "Arijit_Singh" {
  artist = "Arijit_Singh"

}

resource "spotify_playlist" "Jarvis_playlist" {
  name = "Jarvis_playlist"
  tracks = flatten([data.spotify_search_track.Arijit_Singh.tracks[0].id,
  data.spotify_search_track.Arijit_Singh.tracks[1].id,
  data.spotify_search_track.Arijit_Singh.tracks[2].id,
  data.spotify_search_track.Arijit_Singh.tracks[3].id])
}