puts "ユーザー作成中"
User.create!(
  [
    {
      name: 'kosuke',
      email: 'test1@test.com',
      password: '111111',
    },
    {
      name: 'yuuta',
      email: "test2@test.com",
      password: '111111',
    },
  ]
)
puts "カテゴリー作成中"
Category.create!(
  [
    {
      name: 'ゲーム',
    },
    {
      name: 'スポーツ',
    },
    {
      name: '読書',
    },
    {
      name: 'ビジネス',
    },
    {
      name: '料理',
    },
  ]
)
puts "カテゴリー作成完了"
puts "記事作成中"
Article.create!(
  [
    {
      title: 'test article1',
      body: 'test article body1',
      status: 1,
      category_id: 1,
      user_id: 1,
    },
    {
      title: 'test article2',
      body: 'test article body2',
      status: 1,
      category_id: 2,
      user_id: 1,
    },
    {
      title: 'test article3',
      body: 'test article body3',
      status: 2,
      category_id: 3,
      user_id: 1,
    },
    {
      title: 'test article4',
      body: 'test article body4',
      status: 2,
      category_id: 4,
      user_id: 1,
    },
    {
      title: 'test article5',
      body: 'test article body5',
      status: 2,
      category_id: 5,
      user_id: 1,
    },
    {
      title: 'test article6',
      body: 'test article body6',
      status: 2,
      category_id: 1,
      user_id: 2,
    },
    {
      title: 'test article7',
      body: 'test article body7',
      status: 2,
      category_id: 2,
      user_id: 2,
    },
    {
      title: 'test article8',
      body: 'test article body8',
      status: 1,
      category_id: 3,
      user_id: 2,
    },
    {
      title: 'test article9',
      body: 'test article body9',
      status: 1,
      category_id: 4,
      user_id: 2,
    },
    {
      title: 'test article10',
      body: 'test article body10',
      status: 1,
      category_id: 5,
      user_id: 2,
    },

  ]
)
puts "記事作成完了"
