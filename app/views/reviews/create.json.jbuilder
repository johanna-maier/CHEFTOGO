# 2 scenarios

# review is correctly submitted > new review in HTML and also blank form
# if it doesnt save > send form with errors
# for this, we

if @review.persisted?
  json.inserted_item json.partial!('shared/review_box.html.erb', locals: { offer: @offer})
  json.form json.partial!('form.html.erb', locals: {offer: @offer, review: Review.new})
else
  json.form json.partial!('form.html.erb', locals: {offer: @offer, review: @review})
end
