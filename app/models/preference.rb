class Preference < ActiveRecord::Base
    validates :allow_create_artists, inclusion: { in: [true, false] }
    validates :allow_create_songs, inclusion: { in: [true, false] }

end
