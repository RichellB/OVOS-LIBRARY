class SongsController < ApplicationController

    def index
         render json: Song.all 
  
      end
  
      def create
       # newSong = Song.create(title: params['title'], artist: params['artist'])
       # render json: SongSerializer.new(newSong)

       song = Item.create(params[:song])
       render json: song
      end