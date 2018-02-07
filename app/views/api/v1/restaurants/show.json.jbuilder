json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.reviews do |review|
  json.extract! review, :id, :content, :user_id
  json.user do
    json.id review
    # json.email review.user.email
  end
end
