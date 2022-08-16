class Show < ActiveRecord::Base
    def self.highest_rating
        self.maximum(:rating)
    end

    # def self.most_popular_show
    #     self.where(:rating == highest_rating)
    # end

    def self.popular_shows
        self.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        self.order { |e| e.name.downcase }
    end
end