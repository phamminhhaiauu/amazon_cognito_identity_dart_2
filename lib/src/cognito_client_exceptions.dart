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
    final buffer = StringBuffer('CognitoClientException{');
    if (statusCode != null) buffer.write('statusCode: $statusCode, ');
    if (code != null && code!.isNotEmpty) buffer.write('code: $code, ');
    if (name != null && name!.isNotEmpty) buffer.write('name: $name, ');
    if (message != null && message!.isNotEmpty) {
      buffer.write('message: $message, ');
    }
    if (stackTrace != null) buffer.write('stackTrace: $stackTrace, ');
    if (headers != null && headers!.isNotEmpty) {
      buffer.write('headers: $headers, ');
    }
    if (method != null && method!.isNotEmpty) buffer.write('method: $method, ');
    if (endpoint != null && endpoint!.isNotEmpty) {
      buffer.write('endpoint: $endpoint, ');
    }
    if (body != null && body!.isNotEmpty) buffer.write('body: $body, ');
    if (isConnected != null) buffer.write('isConnected: $isConnected');
    buffer.write('}');
    return buffer.toString();
  }
}
