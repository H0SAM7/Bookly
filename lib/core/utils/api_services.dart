import 'package:dio/dio.dart';

class ApiServices{


final _baseUrl='https://www.googleapis.com/books/v1/';

Future<Map<String,dynamic>> getAllBooks({required String endPoint})async{

 Response response=await Dio().get('$_baseUrl$endPoint');
 return response.data;
}


}