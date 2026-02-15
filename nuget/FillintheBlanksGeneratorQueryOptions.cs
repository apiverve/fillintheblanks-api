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
        /// Puzzle category
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }

        /// <summary>
        /// Number of puzzles
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Difficulty level
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
