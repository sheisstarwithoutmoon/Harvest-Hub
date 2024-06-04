import 'package:flutter/material.dart';
import '../../../widgets/cutom_app_bar.dart';
import 'services/featured_products_grid_view2.dart';
import 'services/featured_products2.dart';
import 'services/featured_products_grid_view1.dart';
import 'services/featured_products1.dart';
import 'services/featured_products_grid_view3.dart';
import 'services/featured_products3.dart';
import 'services/featured_products_grid_view4.dart';
import 'services/featured_products4.dart';
import 'services/featured_products_grid_view5.dart';
import 'services/featured_products5.dart';
import 'services/featured_products_grid_view6.dart';
import 'services/featured_products6.dart';

class ServiceDetailsScreen extends StatelessWidget {
  final String serviceName;

  const ServiceDetailsScreen({super.key, required this.serviceName});

  Widget _getFeaturedProductsWidget(String serviceName) {
    switch (serviceName) {
      case 'Machinery':
        return const FeaturedProducts1();
      case 'Seeds':
        return const FeaturedProducts2();
      case 'Seedlings':
        return const FeaturedProducts3();
      case 'Veternerian':
        return const FeaturedProducts4();
      case 'AI Crop disease solution':
        return const FeaturedProducts5();
      case 'Hire Worker':
        return const FeaturedProducts6();
    // Add more cases for other service names if needed
      default:
        return Container(); // Default case, can return any fallback widget
    }
  }

  Widget _getFeaturedProductGridViewWidget(String serviceName) {
    switch (serviceName) {
      case 'Machinery':
        return const FeaturedProductGridView1();
      case 'Seeds':
        return const FeaturedProductGridView2();
      case 'Seedlings':
        return const FeaturedProductGridView3();
      case 'Veternerian':
        return const FeaturedProductGridView4();
      case 'AI Crop disease solution':
        return const FeaturedProductGridView5();
      case 'Hire Worker':
        return const FeaturedProductGridView6();
    // Add more cases for other service names if needed
      default:
        return Container(); // Default case, can return any fallback widget
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              _getFeaturedProductsWidget(serviceName),
              _getFeaturedProductGridViewWidget(serviceName),
            ],
          ),
        ),
      ),
    );
  }
}
