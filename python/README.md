Fill in the Blanks Generator API
============

Fill in the Blanks Generator creates completion puzzles from idioms, proverbs, quotes, science facts, and geography trivia.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Fill in the Blanks Generator API](https://apiverve.com/marketplace/fillintheblanks?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-fillintheblanksgenerator
```

Using `pip3`:

```bash
pip3 install apiverve-fillintheblanksgenerator
```

---

## Configuration

Before using the fillintheblanks API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_fillintheblanksgenerator.apiClient import FillintheblanksAPIClient

# Initialize the client with your APIVerve API key
api = FillintheblanksAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "count": 5,
    "difficulty": "medium"
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Fill in the Blanks Generator API documentation is found here: [https://docs.apiverve.com/ref/fillintheblanks](https://docs.apiverve.com/ref/fillintheblanks?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_fillintheblanksgenerator.apiClient import FillintheblanksAPIClient

# Initialize the client with your APIVerve API key
api = FillintheblanksAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "category": "random",
    "count": 5,
    "difficulty": "medium"
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `FillintheblanksAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_fillintheblanksgenerator.apiClient import FillintheblanksAPIClient, FillintheblanksAPIClientError

api = FillintheblanksAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "count": 5,
    "difficulty": "medium"
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except FillintheblanksAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_fillintheblanksgenerator.apiClient import FillintheblanksAPIClient, FillintheblanksAPIClientError

api = FillintheblanksAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "count": 5,
    "difficulty": "medium"
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except FillintheblanksAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_fillintheblanksgenerator.apiClient import FillintheblanksAPIClient, FillintheblanksAPIClientError

query = {
    "category": "random",
    "count": 5,
    "difficulty": "medium"
}

# Using context manager ensures proper cleanup
with FillintheblanksAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except FillintheblanksAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_fillintheblanksgenerator.apiClient import FillintheblanksAPIClient

# Enable debug mode
api = FillintheblanksAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "category": "random",
    "count": 5,
    "difficulty": "medium"
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_fillintheblanksgenerator.apiClient import FillintheblanksAPIClient

api = FillintheblanksAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "count": 5,
    "difficulty": "medium"
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
