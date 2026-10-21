# Fill in the Blanks Generator API - Ruby Gem

Fill in the Blanks Generator creates completion puzzles from idioms, proverbs, quotes, science facts, and geography trivia.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_fillintheblanks'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_fillintheblanks
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_fillintheblanks'

# Initialize the client
client = APIVerve::Fillintheblanks::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  category: "random",
  count: 5,
  difficulty: "medium",
  image: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ category: "random", count: 5, difficulty: "medium", image: true })
  puts response["data"]
rescue APIVerve::Fillintheblanks::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Fillintheblanks::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Fillintheblanks::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "puzzles": [
      {
        "id": 1,
        "sentence": "A penny saved is a penny ___.",
        "answer": "EARNED",
        "letterCount": 6,
        "hint": "gained/obtained",
        "firstLetter": null
      },
      {
        "id": 2,
        "sentence": "Actions speak louder than ___.",
        "answer": "WORDS",
        "letterCount": 5,
        "hint": "what we say",
        "firstLetter": null
      },
      {
        "id": 3,
        "sentence": "Don't count your chickens before they ___.",
        "answer": "HATCH",
        "letterCount": 5,
        "hint": "come out of eggs",
        "firstLetter": null
      },
      {
        "id": 4,
        "sentence": "The early bird catches the ___.",
        "answer": "WORM",
        "letterCount": 4,
        "hint": "a crawling creature",
        "firstLetter": null
      },
      {
        "id": 5,
        "sentence": "Don't put all your eggs in one ___.",
        "answer": "BASKET",
        "letterCount": 6,
        "hint": "a container",
        "firstLetter": null
      }
    ],
    "count": 5,
    "difficulty": "medium",
    "category": "idioms",
    "html": "<html><head><title>Fill in the Blanks</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 700px; margin: 0 auto;}h1 {text-align: center; color: #673AB7;}.puzzle {background: #f5f5f5; padding: 20px; margin: 15px 0; border-radius: 10px;}.number {font-weight: bold; color: #673AB7; margin-bottom: 10px;}.sentence {font-size: 18px; line-height: 1.8;}.blank {display: inline-block; min-width: 100px; border-bottom: 2px solid #673AB7; margin: 0 5px;}.hint {font-size: 13px; color: #888; font-style: italic; margin-top: 10px;}.info {font-size: 12px; color: #999; margin-top: 5px;}</style></head><body><h1>Fill in the Blanks</h1><div class='puzzle'><div class='number'>#1</div><div class='sentence'>A penny saved is a penny <span class='blank'></span>.</div><div class='info'>6 letters</div><div class='hint'>Hint: gained/obtained</div></div><div class='puzzle'><div class='number'>#2</div><div class='sentence'>Actions speak louder than <span class='blank'></span>.</div><div class='info'>5 letters</div><div class='hint'>Hint: what we say</div></div><div class='puzzle'><div class='number'>#3</div><div class='sentence'>Don't count your chickens before they <span class='blank'></span>.</div><div class='info'>5 letters</div><div class='hint'>Hint: come out of eggs</div></div><div class='puzzle'><div class='number'>#4</div><div class='sentence'>The early bird catches the <span class='blank'></span>.</div><div class='info'>4 letters</div><div class='hint'>Hint: a crawling creature</div></div><div class='puzzle'><div class='number'>#5</div><div class='sentence'>Don't put all your eggs in one <span class='blank'></span>.</div><div class='info'>6 letters</div><div class='hint'>Hint: a container</div></div></body></html>",
    "image": {
      "imageName": "ba85c6d6-4376-4171-841d-8b4bc97e1095_fillblanks.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/fillintheblanks/ba85c6d6-4376-4171-841d-8b4bc97e1095_fillblanks.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010206&Signature=YRHfh28GKDNvEM4Q07qRcNyg3WnPs7Ee7yg0xXKxKRTmT%2Bg3x%2FThpfWsFTeYScpZlgQTVQ3SU1tZMGH74sZJvAHdVkG6IGA9V2lwIfhHzcfu4Uf4VGKL8%2FIa%2FaLupdtrgDqXSFWOJ9EHHeMKnImAhli1qhlMu%2BIuWAiqfPitDlN5pMklv4R5FACKkZld4LXyA82%2BX8bt%2FESyHciZ5jzlqY1JTacL4kW5uK09bpoo9Ytvs8XOOOjB0my1s%2BIq5z0JEwZzw1Jag%2F5vd09wTXzSXeQMzfo%2FDj73kpU7SilAxEGh%2BuflilyDQTXK7krXcdFUGcD5Nd4Wm%2BW7dP8tQKmbAA%3D%3D",
      "expires": 1766010206793
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/fillintheblanks?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/fillintheblanks?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/fillintheblanks?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
