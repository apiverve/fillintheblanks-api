using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.FillintheBlanksGenerator
{
    /// <summary>
    /// Query options for the Fill in the Blanks Generator API
    /// </summary>
    public class FillintheBlanksGeneratorQueryOptions
    {
        /// <summary>
        /// Category: random, idioms, proverbs, quotes, science, geography
        /// Example: idioms
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }

        /// <summary>
        /// Number of puzzles (1-20)
        /// Example: 5
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Difficulty: easy, medium, hard
        /// Example: medium
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
