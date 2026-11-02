/// Response models for the Fill in the Blanks Generator API.

/// API Response wrapper.
class FillintheblanksResponse {
  final String status;
  final dynamic error;
  final FillintheblanksData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  FillintheblanksResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory FillintheblanksResponse.fromJson(Map<String, dynamic> json) => FillintheblanksResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FillintheblanksData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Fill in the Blanks Generator API.

class FillintheblanksData {
  List<FillintheblanksDataPuzzlesItem>? puzzles;
  num? count;
  String? difficulty;
  String? category;
  String? html;
  FillintheblanksDataImage? image;

  FillintheblanksData({
    this.puzzles,
    this.count,
    this.difficulty,
    this.category,
    this.html,
    this.image,
  });

  factory FillintheblanksData.fromJson(Map<String, dynamic> json) => FillintheblanksData(
      puzzles: (json['puzzles'] as List?)?.map((e) => FillintheblanksDataPuzzlesItem.fromJson(e)).toList(),
      count: json['count'],
      difficulty: json['difficulty'],
      category: json['category'],
      html: json['html'],
      image: json['image'] != null ? FillintheblanksDataImage.fromJson(json['image']) : null,
    );
}

class FillintheblanksDataPuzzlesItem {
  num? id;
  String? sentence;
  String? answer;
  num? letterCount;
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

class FillintheblanksDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  FillintheblanksDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory FillintheblanksDataImage.fromJson(Map<String, dynamic> json) => FillintheblanksDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class FillintheblanksRequest {
  String? category;
  int? count;
  String? difficulty;
  bool? image;

  FillintheblanksRequest({
    this.category,
    this.count,
    this.difficulty,
    this.image,
  });

  Map<String, dynamic> toJson() => {
      if (category != null) 'category': category,
      if (count != null) 'count': count,
      if (difficulty != null) 'difficulty': difficulty,
      if (image != null) 'image': image,
    };
}
