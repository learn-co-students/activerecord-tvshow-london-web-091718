class Show < ActiveRecord::Base
#GIVES THE MAXIUMUM
  def self.highest_rating
    Show.maximum(:rating)
  end
#USED HELPER METHOD, BUT ARRAY OF ALL SHOWS THAT == HEIGHEST RATING RETURNED SO SELECTED FIRST [0]
  def self.most_popular_show # USED
    Show.where("rating = ?", self.highest_rating)[0]
  end
#GIVES THE MINIMUM
  def self.lowest_rating
    Show.minimum(:rating)
  end
#USED HELPER METHOD, BUT ARRAY OF ALL SHOWS THAT == HEIGHEST RATING RETURNED SO SELECTED FIRST [0]
  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating)[0]
  end
#SUMS THE RATINGS COLUMN
  def self.ratings_sum
    Show.sum(:rating)
  end
#ARRAY OF SHOWS >5
  def self.popular_shows
    Show.where("rating > 5")
  end
#ORDERS BY COL NAME
  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end
# Multiple ways to order   
  # Client.order(created_at: :desc)
  # # OR
  # Client.order(created_at: :asc)
  # # OR
  # Client.order("created_at DESC")
  # # OR
  # Client.order("created_at ASC")


end
