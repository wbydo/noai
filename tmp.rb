require 'json'

messages = [
  "こんにちは",
  "hibikiさんこんにちは",
  "おいしいラーメン屋さんを教えて",
  "鶏そばヒバリがおすすめですよ",
  "いいね",
  "ありがとうございます",
]

data = messages.map.with_index do |m, idx|
  {
    id: idx,
    user: idx%2 == 0 ? 'userA' : 'system',
    message: m
  }
end

File.open('hibiki.json', 'w') do |f|
  f.write(JSON.dump(data))
end
