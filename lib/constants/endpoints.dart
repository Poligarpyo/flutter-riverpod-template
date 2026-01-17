class Endpoints {
  Endpoints._();
  static const String baseUrl = 'https://reqres.in/';
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 30000;

  static const String login = 'api/login';
  static const String register = 'api/register';



  //* This is for hfrs
  static const String hfrsBaseUrl = 'https://hfrs.taytaypalawan.net/barangay/mobile/hfrs/';

  static const String displayHousehold = 'display-household';
  static const String displayFamily = 'display-family';
  static const String displayIndiv = 'display-indiv';


  //! Dont put api key on the client side. Do it on the server side
  //! This is just for testing purposes
  //! and should not be used in production
  // https://reqres.in/signup
  static const String apiKey = String.fromEnvironment('API_KEY', defaultValue: 'reqres-free-v1');
}
