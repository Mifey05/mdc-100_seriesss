// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'supplemental/cut_corners_border.dart';
import 'backdrop.dart';
import 'home.dart';
import 'login.dart';
import 'colors.dart';
import 'model/product.dart';
import 'category_menu_page.dart';

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  State<ShrineApp> createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState((){
      _currentCategory = category;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rimworld',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => Backdrop(
        currentCategory: _currentCategory,
        frontLayer: HomePage(category: _currentCategory),
        backLayer: CategoryMenuPage(
          currentCategory: _currentCategory,
          onCategoryTap: _onCategoryTap,  
          ),
        frontTitle: const Text('Orbital Trader'),
        backTitle: const Text('Menu'),
        ),
      },
      theme: _kRimworldTheme,
    );
  }
}

final ThemeData _kRimworldTheme = _buildRimworldTheme();

ThemeData _buildRimworldTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kRimworld1,
      onPrimary: kRimworld3,
      secondary: kRimworld3,
      error: kRimworldError,
    ),
    textTheme: _buildRimworldTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kRimworld2,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: kRimworld3,
      backgroundColor: kRimworld1,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kRimworld3,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: kRimworld3,
      ),
    ),
  );
}
TextTheme _buildRimworldTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 18.0,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kRimworld3,
        bodyColor: kRimworld3,
      );
}