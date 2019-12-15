puts 'ユーザー作成中'
User.where(
  id: 1,
  name: 'kosuke',
  email: 'test1@test.com',
  password: '111111',
  role: 2
).first_or_create!

User.where(
  id: 2,
  name: 'yuuta',
  email: 'test2@test.com',
  password: '111111',
  role: 1,
).first_or_create!


puts '記事作成中'
(1..5).to_a each do |i|
  Article.where(id: i).first_or_create!(
    id: i,
    title: "test article#{i}",
    body: "test article body#{i}",
    user_id: 1,
  )
end
(6..10).to_a each do |i|
  Article.where(id: i).first_or_create!(
    id: i,
    title: "test article#{i}",
    body: "test article body#{i}",
    user_id: 1,
  )
end
puts '記事作成完了'
