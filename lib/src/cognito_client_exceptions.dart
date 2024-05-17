class CognitoClientException implements Exception {
  int? statusCode;
  String? code;
  String? name;
  String? message;
  StackTrace? stackTrace;
  Map<String, String>? headers;
  String? method;
  String? endpoint;
  String? body;
  bool? isConnected;

  CognitoClientException(
    this.message, {
    this.code,
    this.statusCode,
    this.name,
    this.stackTrace,
    this.headers,
    this.method,
    this.endpoint,
    this.body,
    this.isConnected,
  });

  @override
  String toString() {
    return 'CognitoClientException{statusCode: $statusCode, code: $code, name: $name, message: $message, stackTrace: $stackTrace, headers: $headers, method: $method, endpoint: $endpoint, body: $body, isConnected: $isConnected}';
  }
}
