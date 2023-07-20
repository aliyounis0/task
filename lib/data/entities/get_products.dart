

import 'package:equatable/equatable.dart';
import 'package:magdsoft_flutter_structure/data/entities/product_data.dart';

class GetProducts extends Equatable{

  final int status;
  final String message ;
  final List<ProductData> products ;

 const GetProducts({
    required this.status,
    required this.message,
    required this.products});

  @override
  List<Object?> get props =>[
    status,
    message,
    products,
  ];
}