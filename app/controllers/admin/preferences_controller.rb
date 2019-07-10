class Admin::PreferencesController < ApplicationController

  def edit
    @preferences = Preference.first_or_create
  end

  def update
    @preferences = Preference.first
    if @preferences
      @preferences.update(preference_params)
      redirect_to songs_path
    else
      redirect_to :edit
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:id, :artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end
