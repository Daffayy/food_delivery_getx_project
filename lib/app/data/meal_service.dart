
import 'package:get/get.dart';

import '../modules/detail_food_screen/model/detail_meals_product_model.dart';
import '../modules/home/models/meals_model.dart';

class MealService {
  final _connect = Get.find<GetConnect>();

  Future<Meals> getMeals() async {
    final response = await _connect.get('1/filter.php?c=Seafood',
        decoder: (data) => Meals.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }


  Future<DetailMealsModel> getDetailMeals({required String id}) async {
    final response = await _connect.get('1/lookup.php?i=$id',
        decoder: (data) =>
            DetailMealsModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}


