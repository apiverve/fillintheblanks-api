declare module '@apiverve/fillintheblanks' {
  export interface fillintheblanksOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface fillintheblanksResponse {
    status: string;
    error: string | null;
    data: FillintheBlanksGeneratorData;
    code?: number;
  }


  interface FillintheBlanksGeneratorData {
      puzzles:    Puzzle[];
      count:      number;
      difficulty: string;
      category:   string;
      html:       string;
  }
  
  interface Puzzle {
      id:          number;
      sentence:    string;
      answer:      string;
      letterCount: number;
      hint:        string;
      firstLetter: null;
  }

  export default class fillintheblanksWrapper {
    constructor(options: fillintheblanksOptions);

    execute(callback: (error: any, data: fillintheblanksResponse | null) => void): Promise<fillintheblanksResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: fillintheblanksResponse | null) => void): Promise<fillintheblanksResponse>;
    execute(query?: Record<string, any>): Promise<fillintheblanksResponse>;
  }
}
