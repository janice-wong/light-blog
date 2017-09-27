json.array! @sorted_posts.each do |post|
  json.partial! 'posts.json.jbuilder', post: post
end
