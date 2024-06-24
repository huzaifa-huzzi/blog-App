class AppException implements Exception{

  final _message;
  final _prefix;

  AppException([this._message,this._prefix]);

  String toString(){
    return '$_prefix$_message';
  }
}

class InternetException extends AppException {
  InternetException ([String? message]) :super (message,'No Internet');
}

class RequestTimeout extends AppException {
  RequestTimeout ([String? message]) :super (message,'RequestTimeout');
}

class InvalidUrl extends AppException {
  InvalidUrl ([String? message]) :super (message,'InvalidUrl');
}

class FetchDataException extends AppException {
  FetchDataException ([String? message]) :super (message,'Fetch Exception');
}