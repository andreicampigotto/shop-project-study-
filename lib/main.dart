import 'package:flutter/material.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/providers/product_item_list.dart';
import 'package:shop/utils/routes.dart';
import 'package:shop/views/items/cart_page.dart';
import 'package:shop/views/items/product_detail.dart';
import 'package:shop/views/products_page.dart';
import 'package:provider/provider.dart';
// import 'package:system_theme/system_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop',
        theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home: const ProductsPage(),
        routes: {
          Routes.PRODUCT_DETAIL: (ctx) => const ProductDetail(),
          Routes.CART: (ctx) => const CartPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
