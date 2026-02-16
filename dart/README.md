# Fill in the Blanks Generator API - Dart/Flutter Client

Fill in the Blanks Generator creates completion puzzles from idioms, proverbs, quotes, science facts, and geography trivia.

[![pub package](https://img.shields.io/pub/v/apiverve_fillintheblanks.svg)](https://pub.dev/packages/apiverve_fillintheblanks)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Fill in the Blanks Generator API](https://apiverve.com/marketplace/fillintheblanks?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_fillintheblanks: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_fillintheblanks/apiverve_fillintheblanks.dart';

void main() async {
  final client = FillintheblanksClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'category': 'random',
      'count': 5,
      'difficulty': 'medium'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
        "sentence": "The early bird catches the ___.",
        "answer": "WORM",
        "letterCount": 4,
        "hint": "a crawling creature",
        "firstLetter": null
      },
      {
        "id": 4,
        "sentence": "When in Rome, do as the ___ do.",
        "answer": "ROMANS",
        "letterCount": 6,
        "hint": "people from Rome",
        "firstLetter": null
      },
      {
        "id": 5,
        "sentence": "Every cloud has a silver ___.",
        "answer": "LINING",
        "letterCount": 6,
        "hint": "inner layer",
        "firstLetter": null
      }
    ],
    "count": 5,
    "difficulty": "medium",
    "category": "idioms",
    "html": "<html><head><title>Fill in the Blanks</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 700px; margin: 0 auto;}h1 {text-align: center; color: #673AB7;}.puzzle {background: #f5f5f5; padding: 20px; margin: 15px 0; border-radius: 10px;}.number {font-weight: bold; color: #673AB7; margin-bottom: 10px;}.sentence {font-size: 18px; line-height: 1.8;}.blank {display: inline-block; min-width: 100px; border-bottom: 2px solid #673AB7; margin: 0 5px;}.hint {font-size: 13px; color: #888; font-style: italic; margin-top: 10px;}.info {font-size: 12px; color: #999; margin-top: 5px;}</style></head><body><h1>Fill in the Blanks</h1><div class='puzzle'><div class='number'>#1</div><div class='sentence'>A penny saved is a penny <span class='blank'></span>.</div><div class='info'>6 letters</div><div class='hint'>Hint: gained/obtained</div></div><div class='puzzle'><div class='number'>#2</div><div class='sentence'>Actions speak louder than <span class='blank'></span>.</div><div class='info'>5 letters</div><div class='hint'>Hint: what we say</div></div><div class='puzzle'><div class='number'>#3</div><div class='sentence'>The early bird catches the <span class='blank'></span>.</div><div class='info'>4 letters</div><div class='hint'>Hint: a crawling creature</div></div><div class='puzzle'><div class='number'>#4</div><div class='sentence'>When in Rome, do as the <span class='blank'></span> do.</div><div class='info'>6 letters</div><div class='hint'>Hint: people from Rome</div></div><div class='puzzle'><div class='number'>#5</div><div class='sentence'>Every cloud has a silver <span class='blank'></span>.</div><div class='info'>6 letters</div><div class='hint'>Hint: inner layer</div></div></body></html>"
  }
}
```

## API Reference

- **API Home:** [Fill in the Blanks Generator API](https://apiverve.com/marketplace/fillintheblanks?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/fillintheblanks](https://docs.apiverve.com/ref/fillintheblanks?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
