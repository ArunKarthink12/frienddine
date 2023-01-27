// import 'dart:io';

// import '../all_packages.dart';

// class ApiService {
//   static final ApiService _genericApiService = ApiService._internal();
//   factory ApiService() {
//     return _genericApiService;
//   }
//   ApiService._internal();
//   String? basicAuth;
//   //get method service call
//   Future<Response?> get({
//     endpoint,
//     Map<String, dynamic>? queryParameters,
//   }) async {
//     globalVariable.apiClient!.options.headers = getHeaders();
//     queryParameters ??= <String, dynamic>{};
//     return globalVariable.apiClient!
//         .get(endpoint, queryParameters: queryParameters);
//   }

//   // post method service call
//   Future<Response?> post(
//       {endpoint, queryParameters}) async {
//     globalVariable.apiClient!.options.headers = getHeaders();
//     return globalVariable.apiClient!.post(endpoint, data: queryParameters);
//   }

//   // formData method service call
//   Future<Response?> formData(
//       {endpoint,
//       required queryParameters,
//       required File file,
//       required filename}) async {
//     var _documentFormData = <String, dynamic>{};
//     queryParameters.forEach((k, v) {
//       _documentFormData[k] = v;
//     });
//     _documentFormData[filename] = await MultipartFile.fromFile(
//       file.path,
//       filename: filename,
//     );
//     var formData = FormData.fromMap(_documentFormData);
//     globalVariable.apiClient!.options.headers = getHeaders();
//     return globalVariable.apiClient!.post(endpoint, data: formData);
//   }

//   // Add Headers
//   Map<String, dynamic> getHeaders() {
//     var header = <String, dynamic>{};
//     header["content-type"] = "application/json; charset=utf-8";
//     // if (basicAuth != null) header[DefaultConfig.authorization] = basicAuth;
//     return header;
//   }
// }
