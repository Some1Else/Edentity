Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :facebook, '236728149743944', '4de99fe177db9d443b25c2c5bdb38d7c', scope: 'email,user_birthday,read_stream,read_friendlists,read_mailbox,read_requests,user_events,friends_events,user_groups,user_hometown,friends_hometown,user_likes,friends_likes,user_location,friends_location,user_photos,user_relationships,user_relationship_details,user_status,user_subscriptions,user_work_history,friends_work_history,user_actions.music,user_actions.news,user_actions.video'
end