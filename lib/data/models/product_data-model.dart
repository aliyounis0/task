

  import 'package:magdsoft_flutter_structure/data/entities/product_data.dart';

class ProductDataModel extends ProductData{
 const ProductDataModel({
   required int id,
   required String company,
   required String name,
   required String type,
   required String price,
   required String image,
   required String description
 }) : super(id: id, company: company, name: name, type: type, price: price, image: image, description: description);

 factory ProductDataModel.fromJson(Map<String,dynamic>json)=>ProductDataModel(
     id: json["id"],
     company: json["company"],
     name: json["name"],
     type: json["type"],
     price: json["price"],
     image: json["image"],
     description: json["description"],
 );

}