class YelpQueriesController < ApplicationController
  respond_to :json

  def create
    @query = YelpQuery.new
    @results = YelpResult.load(@query.fetch!(params[:query]))
    # @results = YelpResult.load(mock_dumplings)
    render :json => { :results => @results }
  end

  def mock_dumplings
    [{"is_claimed"=>true, "rating"=>3.5, "mobile_url"=>"http://m.yelp.com/biz/king-of-noodles-san-francisco-3", "rating_img_url"=>"http://s3-media1.ak.yelpcdn.com/assets/2/www/img/5ef3eb3cb162/ico/stars/v1/stars_3_half.png", "review_count"=>343, "name"=>"King Of Noodles", "snippet_image_url"=>"http://s3-media1.ak.yelpcdn.com/photo/AGFUlfB2kLg2yaGj0EeyRg/ms.jpg", "rating_img_url_small"=>"http://s3-media1.ak.yelpcdn.com/assets/2/www/img/2e909d5d3536/ico/stars/v1/stars_small_3_half.png", "url"=>"http://www.yelp.com/biz/king-of-noodles-san-francisco-3", "phone"=>"4155668318", "snippet_text"=>"I think it is not The king in name, king in fact in the world of Noodles. All kind of exceptional noodles you can find here in 15 minutes. Just wait and...", "image_url"=>"http://s3-media1.ak.yelpcdn.com/bphoto/p-Y3H1hxM9rDU7R7fqN30A/ms.jpg", "categories"=>[["Chinese", "chinese"]], "display_phone"=>"+1-415-566-8318", "rating_img_url_large"=>"http://s3-media3.ak.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", "id"=>"king-of-noodles-san-francisco-3", "is_closed"=>false, "location"=>{"cross_streets"=>"17th Ave & 18th Ave", "city"=>"San Francisco", "display_address"=>["1639 Irving St", "(b/t 17th Ave & 18th Ave)", "Inner Sunset", "San Francisco, CA 94122"], "geo_accuracy"=>8, "neighborhoods"=>["Inner Sunset"], "postal_code"=>"94122", "country_code"=>"US", "address"=>["1639 Irving St"], "coordinate"=>{"latitude"=>37.7635262, "longitude"=>-122.4757204}, "state_code"=>"CA"}}, {"is_claimed"=>true, "rating"=>4.0, "mobile_url"=>"http://m.yelp.com/biz/kingdom-of-dumpling-san-francisco-2", "rating_img_url"=>"http://s3-media4.ak.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", "review_count"=>1043, "name"=>"Kingdom of Dumpling", "snippet_image_url"=>"http://s3-media1.ak.yelpcdn.com/photo/6o8r-5OUP3_TxTMVKBfcGA/ms.jpg", "rating_img_url_small"=>"http://s3-media4.ak.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png", "url"=>"http://www.yelp.com/biz/kingdom-of-dumpling-san-francisco-2", "phone"=>"4155666143", "snippet_text"=>"So good! I came to this tiny whole in the wall place with a friend on a Friday night. We had to wait a half hour for a table but it was worth it. The food...", "image_url"=>"http://s3-media1.ak.yelpcdn.com/bphoto/vojYioqorzEeMqQ0Cgu3HA/ms.jpg", "categories"=>[["Chinese", "chinese"]], "display_phone"=>"+1-415-566-6143", "rating_img_url_large"=>"http://s3-media2.ak.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", "id"=>"kingdom-of-dumpling-san-francisco-2", "is_closed"=>false, "location"=>{"cross_streets"=>"27th Ave & 28th Ave", "city"=>"San Francisco", "display_address"=>["1713 Taraval St", "(b/t 27th Ave & 28th Ave)", "Parkside", "San Francisco, CA 94116"], "geo_accuracy"=>8, "neighborhoods"=>["Parkside"], "postal_code"=>"94116", "country_code"=>"US", "address"=>["1713 Taraval St"], "coordinate"=>{"latitude"=>37.7426454, "longitude"=>-122.4845974}, "state_code"=>"CA"}}, {"is_claimed"=>false, "rating"=>3.5, "mobile_url"=>"http://m.yelp.com/biz/shanghai-dumpling-king-san-francisco", "rating_img_url"=>"http://s3-media1.ak.yelpcdn.com/assets/2/www/img/5ef3eb3cb162/ico/stars/v1/stars_3_half.png", "review_count"=>1467, "name"=>"Shanghai Dumpling King", "snippet_image_url"=>"http://s3-media2.ak.yelpcdn.com/photo/ejipT-DvIbayve6g2_4nIA/ms.jpg", "rating_img_url_small"=>"http://s3-media1.ak.yelpcdn.com/assets/2/www/img/2e909d5d3536/ico/stars/v1/stars_small_3_half.png", "url"=>"http://www.yelp.com/biz/shanghai-dumpling-king-san-francisco", "phone"=>"4153872088", "snippet_text"=>"I've been here twice now, the first time just based on the review on Yelp, and the second time because we were pretty impressed and craving some soup...", "image_url"=>"http://s3-media2.ak.yelpcdn.com/bphoto/9igv-bP7oRVYre0p9BzB7w/ms.jpg", "categories"=>[["Shanghainese", "shanghainese"], ["Dim Sum", "dimsum"]], "display_phone"=>"+1-415-387-2088", "rating_img_url_large"=>"http://s3-media3.ak.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", "id"=>"shanghai-dumpling-king-san-francisco", "is_closed"=>false, "location"=>{"cross_streets"=>"35th Ave & 34th Ave", "city"=>"San Francisco", "display_address"=>["3319 Balboa St", "(b/t 35th Ave & 34th Ave)", "Outer Richmond", "San Francisco, CA 94121"], "geo_accuracy"=>8, "neighborhoods"=>["Outer Richmond"], "postal_code"=>"94121", "country_code"=>"US", "address"=>["3319 Balboa St"], "coordinate"=>{"latitude"=>37.775596, "longitude"=>-122.494492}, "state_code"=>"CA"}}, {"is_claimed"=>false, "rating"=>4.0, "mobile_url"=>"http://m.yelp.com/biz/dumpling-kitchen-san-francisco", "rating_img_url"=>"http://s3-media4.ak.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", "review_count"=>238, "name"=>"Dumpling Kitchen", "snippet_image_url"=>"http://s3-media2.ak.yelpcdn.com/photo/Bhmd4YeIy_IbUnd9PyduaA/ms.jpg", "rating_img_url_small"=>"http://s3-media4.ak.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png", "url"=>"http://www.yelp.com/biz/dumpling-kitchen-san-francisco", "phone"=>"4156828938", "snippet_text"=>"BEST shanghai dumplings in San Francisco! \n\nTRUST ME! It's affordable and family friendly. Love mom & pop shops!", "image_url"=>"http://s3-media4.ak.yelpcdn.com/bphoto/5mUKAyVQd7FM0u9rLI8Fdw/ms.jpg", "categories"=>[["Chinese", "chinese"]], "display_phone"=>"+1-415-682-8938", "rating_img_url_large"=>"http://s3-media2.ak.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", "id"=>"dumpling-kitchen-san-francisco", "is_closed"=>false, "location"=>{"cross_streets"=>"29th Ave & 30th Ave", "city"=>"San Francisco", "display_address"=>["1935 Taraval St", "(b/t 29th Ave & 30th Ave)", "Parkside", "San Francisco, CA 94116"], "geo_accuracy"=>8, "neighborhoods"=>["Parkside"], "postal_code"=>"94116", "country_code"=>"US", "address"=>["1935 Taraval St"], "coordinate"=>{"latitude"=>37.7424547, "longitude"=>-122.4870303}, "state_code"=>"CA"}}, {"is_claimed"=>false, "rating"=>3.5, "mobile_url"=>"http://m.yelp.com/biz/shanghai-house-san-francisco", "rating_img_url"=>"http://s3-media1.ak.yelpcdn.com/assets/2/www/img/5ef3eb3cb162/ico/stars/v1/stars_3_half.png", "review_count"=>354, "name"=>"Shanghai House", "snippet_image_url"=>"http://s3-media1.ak.yelpcdn.com/photo/tuFGbNEvohgSq_kQ_gxbQQ/ms.jpg", "rating_img_url_small"=>"http://s3-media1.ak.yelpcdn.com/assets/2/www/img/2e909d5d3536/ico/stars/v1/stars_small_3_half.png", "url"=>"http://www.yelp.com/biz/shanghai-house-san-francisco", "phone"=>"4158319288", "snippet_text"=>"But why the low ratings?\n\nThis place is small so seating is limited.  Make sure you get here I'd say before 7pm or after 8:15pm.\n\nDO get the bean curd...", "image_url"=>"http://s3-media1.ak.yelpcdn.com/bphoto/VW4uxSEREqWtiYXjP31wmg/ms.jpg", "categories"=>[["Chinese", "chinese"]], "display_phone"=>"+1-415-831-9288", "rating_img_url_large"=>"http://s3-media3.ak.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", "id"=>"shanghai-house-san-francisco", "is_closed"=>false, "location"=>{"cross_streets"=>"37th Ave & 38th Ave", "city"=>"San Francisco", "display_address"=>["3641 Balboa St", "(b/t 37th Ave & 38th Ave)", "Outer Richmond", "San Francisco, CA 94121"], "geo_accuracy"=>8, "neighborhoods"=>["Outer Richmond"], "postal_code"=>"94121", "country_code"=>"US", "address"=>["3641 Balboa St"], "coordinate"=>{"latitude"=>37.7755946, "longitude"=>-122.4980411}, "state_code"=>"CA"}}]
  end
end
