class ToyImageUrls {
  ToyImageUrls({
    required this.url1024,
    required this.url128,
    required this.url256,
    required this.url512,
  });

  ToyImageUrls.fromJson(Map<String, dynamic> json)
      : url1024 = json['url1024'] as String,
        url512 = json['url512'] as String,
        url256 = json['url256'] as String,
        url128 = json['url128'] as String;

  final String url1024;
  final String url128;
  final String url256;
  final String url512;

  Map<String, dynamic> toJson() => {
        'url1024': url1024,
        'url128': url128,
        'url256': url256,
        'url512': url512,
      };
}
