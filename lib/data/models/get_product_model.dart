 
  
  import 'package:magdsoft_flutter_structure/data/entities/get_products.dart';
import 'package:magdsoft_flutter_structure/data/entities/product_data.dart';
import 'package:magdsoft_flutter_structure/data/models/product_data-model.dart';

class GetProductModel extends GetProducts{
 const GetProductModel({
   required int status, 
   required String message, 
   required List<ProductData> products,
 }) : super(status: status, message: message, products: products);
 
 factory GetProductModel.fromJson(Map<String,dynamic >json)=>GetProductModel(
     status: json["status"],
     message: json["message"],
     products: List<ProductDataModel>.from(json["products"].map((e)=>ProductDataModel.fromJson(e))) ,);
}