

// import 'package:hotelseatbooking/all_packages.dart';

// class ApiClient {
//   Future<Dio> getApiClient() async {
//     Dio dio;
//     dio = Dio(_getBaseOptions());
//     dio.interceptors.clear();
//     dio.interceptors.add(InterceptorsWrapper(
//         onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
//       return handler.next(options);
//     }, onResponse:
//             (Response response, ResponseInterceptorHandler handler) async {
     
        
//         print('response.data.........');
//         print(response.data);
    
     
     
//       return handler.next(response);
//     }, onError: (DioError error, ErrorInterceptorHandler handler) async {
//       print('error.......response');
      
//         print(error.error);
   
//         print(error.response);
      
//       if (error.response == null) {
//         return handler.next(error);
//       }
//       if (error.type == DioErrorType.connectTimeout) {
//         throw Exception('Connection Timeout Exception');
//       }
    
    
    
     
//       return handler.next(error);
//     }));
//     dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    
//       dio.httpClientAdapter = Http2Adapter(
//         ConnectionManager(
//           idleTimeout: 60000,
//           onClientCreate: (_, config) => config.onBadCertificate = (_) => true,
//         ),
//       );
  
//     return dio;
//   }

//   BaseOptions _getBaseOptions() {
//     return BaseOptions(
//         baseUrl: "https://friendsdine.com/app-dev/api/",
//         connectTimeout: 60000,
//         receiveTimeout: 60000,
//         sendTimeout: 60000);
//   }
// }
