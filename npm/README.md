# Fill in the Blanks Generator API

Fill in the Blanks Generator creates completion puzzles from idioms, proverbs, quotes, science facts, and geography trivia.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Javascript Wrapper for the [Fill in the Blanks Generator API](https://apiverve.com/marketplace/fillintheblanks)

---

## Installation

Using npm:
```shell
npm install @apiverve/fillintheblanks
```

Using yarn:
```shell
yarn add @apiverve/fillintheblanks
```

---

## Configuration

Before using the Fill in the Blanks Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart)

The Fill in the Blanks Generator API documentation is found here: [https://docs.apiverve.com/ref/fillintheblanks](https://docs.apiverve.com/ref/fillintheblanks).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const fillintheblanksAPI = require('@apiverve/fillintheblanks');
const api = new fillintheblanksAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  category: "idioms",
  count: 5,
  difficulty: "medium"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  category: "idioms",
  count: 5,
  difficulty: "medium"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  category: "idioms",
  count: 5,
  difficulty: "medium"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
