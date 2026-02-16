/// Response models for the Fill in the Blanks Generator API.

/// API Response wrapper.
class FillintheblanksResponse {
  final String status;
  final dynamic error;
  final FillintheblanksData? data;

  FillintheblanksResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory FillintheblanksResponse.fromJson(Map<String, dynamic> json) => FillintheblanksResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FillintheblanksData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Fill in the Blanks Generator API.

class FillintheblanksData {
  List<FillintheblanksDataPuzzlesItem>? puzzles;
  int? count;
  String? difficulty;
  String? category;
  String? html;

  FillintheblanksData({
    this.puzzles,
    this.count,
    this.difficulty,
    this.category,
    this.html,
  });

  factory FillintheblanksData.fromJson(Map<String, dynamic> json) => FillintheblanksData(
      puzzles: (json['puzzles'] as List?)?.map((e) => FillintheblanksDataPuzzlesItem.fromJson(e)).toList(),
      count: json['count'],
      difficulty: json['difficulty'],
      category: json['category'],
      html: json['html'],
    );
}

class FillintheblanksDataPuzzlesItem {
  int? id;
  String? sentence;
  String? answer;
  int? letterCount;
  String? hint;
  dynamic firstLetter;

  FillintheblanksDataPuzzlesItem({
    this.id,
    this.sentence,
    this.answer,
    this.letterCount,
    this.hint,
    this.firstLetter,
  });

  factory FillintheblanksDataPuzzlesItem.fromJson(Map<String, dynamic> json) => FillintheblanksDataPuzzlesItem(
      id: json['id'],
      sentence: json['sentence'],
      answer: json['answer'],
      letterCount: json['letterCount'],
      hint: json['hint'],
      firstLetter: json['firstLetter'],
    );
}

class FillintheblanksRequest {
  String? category;
  int? count;
  String? difficulty;

  FillintheblanksRequest({
    this.category,
    this.count,
    this.difficulty,
  });

  Map<String, dynamic> toJson() => {
      if (category != null) 'category': category,
      if (count != null) 'count': count,
      if (difficulty != null) 'difficulty': difficulty,
    };
}
