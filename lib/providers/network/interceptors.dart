import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class LogWriterInterceptor extends Interceptor {
  LogWriterInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var params = options.queryParameters.toString();
    var responseType = options.responseType;
    var method = options.method;
    var data = options.data;
    var headers = options.headers;
    _log('HEADERS ${headers}');
    _log('\n${DateTime.now()}\nREQUEST-NAME: ${options.path} \nPARAMS: $params \nMETHOD-RESPONSE TYPE: $method - $responseType \nDATA: $data\nBASE_URL: ${options.baseUrl}');
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _log('\nERROR-MESSAGE: ${err.message}\n ERROR: ${err.error} \n ERROR-TYPE: ${err.type}');
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _log('\nRESPONSE-DATA: ${jsonEncode(response.data)}\n STATUS-MESSAGE: ${response.statusMessage}');
    handler.next(response);
  }

  Future<void> _log(String message, {Object? e}) async {
    final logFilename = DateTime.now().toString().split(' ').first;
    dev.log(message.replaceAll('\\', ''), error: e);
    final logPath = await getApplicationDocumentsDirectory();
    final logFile = File('${logPath.path}/$logFilename-log.txt');
    logFile.writeAsString(
      '\n' + message.replaceAll('\\', ''),
      mode: FileMode.writeOnlyAppend,
    );
    if (e != null) {
      logFile.writeAsString('\n $e');
    }
  }
}