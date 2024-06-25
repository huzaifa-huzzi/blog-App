

class SessionManager {
  static final SessionManager _session = SessionManager._internal();

  String? userId;


  factory SessionManager(){
    return _session;
  }

  SessionManager._internal(){
  }



}