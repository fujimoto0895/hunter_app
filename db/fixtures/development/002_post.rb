Post.seed do |post|
  post.id = 1
  post.user_id = 1
  post.title = "自然の恵みに感謝して"
  post.body = "先輩から呼びかけがあり向った。総勢5名でイノシシ解体をした。脂がないから肉は煮込みがお勧めだと教えてくれた。"
  post.photo = Rails.root.join("db/fixtures/images/photo1.jpg").open
end
Post.seed do |post|
  post.id = 2
  post.user_id = 2
  post.title = "シカが増えすぎて深刻化"
  post.body = "地域のイベントでジビエ料理をふるまうなどの取り組みを行ってきました。"
  post.photo = Rails.root.join("db/fixtures/images/photo2.jpg").open
end
Post.seed do |post|
  post.id = 3
  post.user_id = 3
  post.title = "猟友会から頂いたオレンジ色のハンターベストとキャップ。"
  post.body = "銃猟をするときはマストアイテムです。わな猟でも身分証明の代わりになります。
  迷彩服を着た怪しい男がウロウロするのと、猟友会の刺繍入りのベスト着てる人だと印象が違います。"
  post.photo = Rails.root.join("db/fixtures/images/photo3.jpg").open
end
Post.seed do |post|
  post.id = 4
  post.user_id = 4
  post.title = "山菜採り"
  post.body = "獲物がいなかったので山菜とりました。"
  post.photo = Rails.root.join("db/fixtures/images/photo4.jpg").open
end
Post.seed do |post|
  post.id = 5
  post.user_id = 5
  post.title = "皮なめし"
  post.body = "今回はイノシシの毛皮をミョウバンでなめしました。"
  post.photo = Rails.root.join("db/fixtures/images/photo5.jpg").open
end
Post.seed do |post|
  post.id = 6
  post.user_id = 6
  post.title = "畑荒らされました"
  post.body = "収穫直前で残念"
  post.photo = Rails.root.join("db/fixtures/images/photo6.jpg").open
end

