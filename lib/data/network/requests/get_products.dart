

import 'dart:ffi';

import 'package:magdsoft_flutter_structure/constants/end_points.dart';
import 'package:magdsoft_flutter_structure/data/data_providers/remote/dio_helper.dart';
import 'package:magdsoft_flutter_structure/data/models/get_product_model.dart';
 GetProductModel? _getProductModel ;
Void? getProductsMethod(
{
  required String url ,
  required Map<String,dynamic>query,

}
    ){

  DioHelper.getData(
      url: getProductUrl,
      query: query,
  ).then((value){
    _getProductModel=GetProductModel.fromJson(value.data);
  }).catchError((onError){
    print(onError);
    print(onError);


  });

}