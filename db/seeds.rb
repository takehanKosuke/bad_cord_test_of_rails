puts "ユーザー作成中"
User.create!(
  [
    {
      name: 'kosuke',
      email: 'test1@test.com',
      password: '111111',
      role: 2,
    },
    {
      name: 'yuuta',
      email: "test2@test.com",
      password: '111111',
      role: 1,
    },
  ]
)
puts "記事作成中"
Article.create!(
  [
    {
      title: 'test article1',
      body: 'test article body1',
      user_id: 1,
    },
    {
      title: 'test article2',
      body: 'test article body2',
      user_id: 1,
    },
    {
      title: 'test article3',
      body: 'test article body3',
      user_id: 1,
    },
    {
      title: 'test article4',
      body: 'test article body4',
      user_id: 1,
    },
    {
      title: 'test article5',
      body: 'test article body5',
      user_id: 1,
    },
    {
      title: 'test article6',
      body: 'test article body6',
      user_id: 2,
    },
    {
      title: 'test article7',
      body: 'test article body7',
      user_id: 2,
    },
    {
      title: 'test article8',
      body: 'test article body8',
      user_id: 2,
    },
    {
      title: 'test article9',
      body: 'test article body9',
      user_id: 2,
    },
    {
      title: 'test article10',
      body: 'test article body10',
      user_id: 2,
    },
  ]
)
puts "記事作成完了"
