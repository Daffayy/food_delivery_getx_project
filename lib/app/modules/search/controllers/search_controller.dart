import 'package:food_delivery_getx_project/app/data/detai_product_service.dart';
import 'package:food_delivery_getx_project/app/data/search_service.dart';
import 'package:food_delivery_getx_project/app/modules/search/models/search_model.dart';
import 'package:get/get.dart';

import '../../detail_food_screen/model/detail_meals_product_model.dart';

class SearchControllerPage extends GetxController {
  RxBool isLoading = false.obs;
  RxList<MealSearch> searchMealItem = <MealSearch>[].obs;
  final mealSearchService = SearchService();

  final mealDetailService = DetailProductService();
  String idSearch = '';
  Rx<Meal?> detailMealSearch = Meal(idMeal: '').obs;

  @override
  void onInit() {
    super.onInit();
    // getSearchProduct();
  }

  getSearchProduct() async {
    isLoading(true);
    try {
      SearchMealsModel responseSearch =
      await mealSearchService.getSearchMeals();
      searchMealItem.addAll(responseSearch.meals);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}