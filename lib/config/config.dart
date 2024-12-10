class ApiConfig {
  static const String apiKey = '8b5d575fbdb689dd6874a773130696b4';
  static const String baseUrl = 'https://api.themoviedb.org/3/discover/movie';
  static const String language = 'en-US';
  static const String sortBy = 'popularity.desc';
  static const bool includeAdult = false;
  static const bool includeVideo = false;
  static const int page = 1;
  static const String withWatchMonetizationTypes = 'flatrate';

  // Membuat URL API lengkap
  static String getApiUrl() {
    return '$baseUrl?api_key=$apiKey&language=$language&sort_by=$sortBy&include_adult=$includeAdult&include_video=$includeVideo&page=$page&with_watch_monetization_types=$withWatchMonetizationTypes';
  }
}
