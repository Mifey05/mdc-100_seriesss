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

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.pawn,
        id: 0,
        isFeatured: false,
        name: 'Baseliners',
        price: 100,
      ),
      Product(
        category: Category.pawn,
        id: 1,
        isFeatured: false,
        name: 'Dirtmoles',
        price: 120,
      ),
      Product(
        category: Category.pawn,
        id: 2,
        isFeatured: false,
        name: 'Genies',
        price: 150,
      ),
      Product(
        category: Category.pawn,
        id: 3,
        isFeatured: false,
        name: 'Highmates',
        price: 95,
      ),
      Product(
        category: Category.pawn,
        id: 4,
        isFeatured: true,
        name: 'Hussars',
        price: 250,
      ),
      Product(
        category: Category.pawn,
        id: 5,
        isFeatured: true,
        name: 'Impids',
        price: 225,
      ),
      Product(
        category: Category.pawn,
        id: 6,
        isFeatured: false,
        name: 'Neanderthals',
        price: 165,
      ),
      Product(
        category: Category.pawn,
        id: 7,
        isFeatured: false,
        name: 'Pigskins',
        price: 125,
      ),
      Product(
        category: Category.pawn,
        id: 8,
        isFeatured: true,
        name: 'Sanguophages',
        price: 450,
      ),
      Product(
        category: Category.pawn,
        id: 9,
        isFeatured: false,
        name: 'Starjack',
        price: 180,
      ),
      Product(
        category: Category.pawn,
        id: 10,
        isFeatured: false,
        name: 'Wasters',
        price: 160,
      ),
      Product(
        category: Category.pawn,
        id: 11,
        isFeatured: false,
        name: 'Yttakin',
        price: 175,
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
