import 'package:sf_app/client_side_design/products/models/product_cart_model.dart';

class ProductCartStaticData {

 final List<ProductCartModel> productCart = [
  ProductCartModel(
    image: 'assets/shoe.png',
     productName: 'Product Name',
      clientName: 'Client Name',
       productStatus: 'Pendding',
        prodctPrice: '44.00 SAR'
    ),  
    ProductCartModel(
      image: 'assets/bag.png',
       productName: 'Product Name',
        clientName: 'Client Name',
         productStatus: 'Processing',
          prodctPrice: '44.00 SAR'
      ),
      ProductCartModel(
      image: 'assets/jogger.png',
       productName: 'Product Name',
        clientName: 'Client Name',
         productStatus: 'Shipped',
          prodctPrice: '44.00 SAR'
      ),
 ]; 

}