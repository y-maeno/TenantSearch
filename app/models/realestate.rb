class Realestate
  include ActiveModel::Model

  attr_accessor :min_size_lt, :max_size_gt, :floor_eq, :restaurant_eq

  # validates :area, presence: true
  # validates :floor, presence: true
  # validates :restaurant, presence: true

end