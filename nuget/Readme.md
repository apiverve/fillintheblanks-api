APIVerve.API.FillintheBlanksGenerator API
============

Fill in the Blanks Generator creates completion puzzles from idioms, proverbs, quotes, science facts, and geography trivia.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [APIVerve.API.FillintheBlanksGenerator API](https://apiverve.com/marketplace/fillintheblanks)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.FillintheBlanksGenerator
```

Using the Package Manager:
```
nuget install APIVerve.API.FillintheBlanksGenerator
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.FillintheBlanksGenerator
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.FillintheBlanksGenerator"
5. Click on the APIVerve.API.FillintheBlanksGenerator package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the fillintheblanks API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The APIVerve.API.FillintheBlanksGenerator API documentation is found here: [https://docs.apiverve.com/ref/fillintheblanks](https://docs.apiverve.com/ref/fillintheblanks).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
APIVerve.API.FillintheBlanksGenerator API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
using (var apiClient = new FillintheBlanksGeneratorAPIClient("[YOUR_API_KEY]"))
{
    var queryOptions = new FillintheBlanksGeneratorQueryOptions {
  category = "idioms",
  count = 5,
  difficulty = "medium"
};
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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
