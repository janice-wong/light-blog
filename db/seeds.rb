require 'faker'

Post.all.destroy_all

5.times do
  Post.create(
    title: Faker::TheFreshPrinceOfBelAir.character,
    post: Faker::TheFreshPrinceOfBelAir.quote,
    user_id: 1
  )
end
