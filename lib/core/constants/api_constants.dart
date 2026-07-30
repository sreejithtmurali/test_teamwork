
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  ApiConstants._();

  static final String baseUrl = dotenv.get('BASE_URL');
  // static const String apiPrefix = '/api/v1';

  static String get apiBaseUrl => '$baseUrl';


  static const String register = '/registration/';
  static const String login = '/login';


  // ---- Headers ----
  static const String contentTypeJson = 'application/json';
  static Map<String, String> jsonHeaders({String? token}) => {
        'Content-Type': contentTypeJson,
        'Accept': contentTypeJson,
        if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
      };

  // ---- Timeouts ----
  static const Duration requestTimeout = Duration(seconds: 20);
}
