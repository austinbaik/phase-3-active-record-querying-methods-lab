class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum('rating')
    end

    def self.most_popular_show
        # Show.where(Show.maximum("rating"))
        find_show = Show.where(rating: self.maximum('rating'))
        find_show[0]
        # grabbing the show "where" the show the max rating 
        #where returns the row 
    end


    def self.lowest_rating
        Show.minimum('rating')
    end

    def self.least_popular_show
        # Show.where(Show.maximum("rating"))
        Show.where("rating = ?", self.minimum('rating')).first
        # grabbing the show "where" the show the min rating 
        #where returns the row 
    end

    def self.ratings_sum
        Show.sum("rating")
    end

    def self.popular_shows
        Show.where('rating >5')
    end

    def self.shows_by_alphabetical_order
        Show.order('name')
    end

end 