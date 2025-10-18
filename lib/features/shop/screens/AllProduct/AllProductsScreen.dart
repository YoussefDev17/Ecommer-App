import 'package:e_commerce_customer_app_new/common/widgets/Product/Sortable/SortableProduct.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';

import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Allproductsscreen extends StatelessWidget {
  const Allproductsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        title: Text('Specific Product For Categories'),
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TsortibaleProduct(),
        ),
      ),
    );
  }
}
