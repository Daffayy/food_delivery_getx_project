
import 'package:get/get.dart';

import '../modules/detail_food_screen/model/detail_meals_product_model.dart';



class DetailProductService {
   final _connect = Get.find<GetConnect>();

  Future<DetailMealsModel> getDetailMeals({required String id}) async {
    final response = await _connect.get('1/lookup.php?i=$id',
        decoder: (data) => DetailMealsModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}