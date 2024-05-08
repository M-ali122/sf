import 'package:get/get.dart';
import 'package:sf_app/client_side_design/categories/models/category_model.dart';
import 'package:sf_app/helper/component/apis/api_callback.dart';
import 'package:sf_app/helper/component/apis/apis.dart';

class ProductController extends GetxController {
  final RxBool isBusy = false.obs;

  Rx<CategoryModel> categorymodel = CategoryModel().obs;

  categoriesSearch(){
    try{
      var req = AuthRequest().get(api: Apis().categorySearch,);
    }
    catch(e){
      throw Exception(e);
    }
    finally{}
  } 
  
}