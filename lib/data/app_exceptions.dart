class AppException implements Exception {
  final _message;
  final _prefix;
  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class TooManyResultsException extends AppException {
  TooManyResultsException([String? message])
      : super(message, 'Too Many Results.');
}

class MovieNotFoundException extends AppException {
  MovieNotFoundException([String? message])
      : super(message, 'Movie not found!');
}
