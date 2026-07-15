declare module '@apiverve/fillintheblanks' {
  export interface fillintheblanksOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface fillintheblanksResponse {
    status: string;
    error: string | null;
    data: FillintheBlanksGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface FillintheBlanksGeneratorData {
      puzzles:    Puzzle[];
      count:      number | null;
      difficulty: null | string;
      category:   null | string;
      html:       null | string;
      image:      Image;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }
  
  interface Puzzle {
      id:          number | null;
      sentence:    null | string;
      answer:      null | string;
      letterCount: number | null;
      hint:        null | string;
      firstLetter: null;
  }

  export default class fillintheblanksWrapper {
    constructor(options: fillintheblanksOptions);

    execute(callback: (error: any, data: fillintheblanksResponse | null) => void): Promise<fillintheblanksResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: fillintheblanksResponse | null) => void): Promise<fillintheblanksResponse>;
    execute(query?: Record<string, any>): Promise<fillintheblanksResponse>;
  }
}
