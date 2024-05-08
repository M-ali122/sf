import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:sf_app/client_side_design/onboarding/model/accounttype_model.dart';
import 'package:sf_app/helper/component/apis/api_callback.dart';
import 'package:sf_app/helper/component/apis/apis.dart';

class AccountTypeController extends GetxController {

  final RxBool isBusy = false.obs;

  RxList<UsertypeModel> userType = <UsertypeModel>[].obs;

  loadUserType()async{

    try{
      var req = await AuthRequest().get(api: Apis().userType);

    if (req!= null &&  req.data!= null) {
      for (var item in req.data['Usertype']) {
        
          
          UsertypeModel user = UsertypeModel.fromJson(item);
          userType.add(user);
        }

      // userType.value = UsertypeModel.fromJson(req.data['']);
      
    }
    
    }
    catch(e){
      throw Exception(e);

    }
    finally{
      _toggle();
    }
  }
  _toggle(){
    isBusy.toggle();
    update();
  }
  
}