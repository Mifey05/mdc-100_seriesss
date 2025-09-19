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
        price: 1650000,
      ),
      Product(
        category: Category.pawn,
        id: 1,
        isFeatured: false,
        name: 'Dirtmoles',
        price: 1985000,
      ),
      Product(
        category: Category.pawn,
        id: 2,
        isFeatured: false,
        name: 'Genies',
        price: 2480000,
      ),
      Product(
        category: Category.pawn,
        id: 3,
        isFeatured: false,
        name: 'Highmates',
        price: 1570000,
      ),
      Product(
        category: Category.pawn,
        id: 4,
        isFeatured: true,
        name: 'Hussars',
        price: 4135000,
      ),
      Product(
        category: Category.pawn,
        id: 5,
        isFeatured: true,
        name: 'Impids',
        price: 3720000,
      ),
      Product(
        category: Category.pawn,
        id: 6,
        isFeatured: false,
        name: 'Neanderthals',
        price: 2730000,
      ),
      Product(
        category: Category.pawn,
        id: 7,
        isFeatured: false,
        name: 'Pigskins',
        price: 2050000,
      ),
      Product(
        category: Category.pawn,
        id: 8,
        isFeatured: true,
        name: 'Sanguophages',
        price: 7440000,
      ),
      Product(
        category: Category.pawn,
        id: 9,
        isFeatured: false,
        name: 'Starjack',
        price: 2975000,
      ),
      Product(
        category: Category.pawn,
        id: 10,
        isFeatured: false,
        name: 'Wasters',
        price: 2650000,
      ),
      Product(
        category: Category.pawn,
        id: 11,
        isFeatured: false,
        name: 'Yttakin',
        price: 2895000,
      ),
      Product(
        category: Category.mech,
        id: 12,
        isFeatured: false,
        name: 'Centipede',
        price: 3300000,
      ),
      Product(
        category: Category.mech,
        id: 13,
        isFeatured: false,
        name: 'Lancer',
        price: 2895000,
      ),
      Product(
        category: Category.mech,
        id: 14,
        isFeatured: false,
        name: 'Pikeman',
        price: 3500000,
      ),
      Product(
        category: Category.mech,
        id: 15,
        isFeatured: false,
        name: 'Scyther',
        price: 2750000,
      ),
      Product(
        category: Category.mech,
        id: 16,
        isFeatured: false,
        name: 'Termite',
        price: 2500000,
      ),
      Product(
        category: Category.mech,
        id: 17,
        isFeatured: true,
        name: 'Centurion',
        price: 4250000,
      ),
      Product(
        category: Category.mech,
        id: 18,
        isFeatured: false,
        name: 'Legionary',
        price: 3750000,
      ),
      Product(
        category: Category.mech,
        id: 19,
        isFeatured: false,
        name: 'Militor',
        price: 2500000,
      ),
      Product(
        category: Category.mech,
        id: 20,
        isFeatured: false,
        name: 'Scorcher',
        price: 3250000,
      ),
      Product(
        category: Category.mech,
        id: 21,
        isFeatured: false,
        name: 'Tesseron',
        price: 4500000,
      ),
      Product(
        category: Category.mech,
        id: 22,
        isFeatured: false,
        name: 'Cyclops',
        price: 3600000,
      ),
      Product(
        category: Category.mech,
        id: 23,
        isFeatured: false,
        name: 'Apocriton',
        price: 4500000,
      ),
      Product(
        category: Category.mech,
        id: 24,
        isFeatured: false,
        name: 'Diabolus',
        price: 4500000,
      ),
      Product(
        category: Category.mech,
        id: 25,
        isFeatured: true,
        name: 'War Queen',
        price: 5000000,
      ),
      Product(
        category: Category.mech,
        id: 26,
        isFeatured: false,
        name: 'War Urchin',
        price: 2100000,
      ),
      Product(
        category: Category.mech,
        id: 27,
        isFeatured: false,
        name: 'Agrihand',
        price: 1750000,
      ),
      Product(
        category: Category.mech,
        id: 28,
        isFeatured: false,
        name: 'Cleansweeper',
        price: 1500000,
      ),
      Product(
        category: Category.mech,
        id: 29,
        isFeatured: false,
        name: 'Constructoid',
        price: 2000000,
      ),
      Product(
        category: Category.mech,
        id: 30,
        isFeatured: false,
        name: 'Fabricor',
        price: 2200000,
      ),
      Product(
        category: Category.mech,
        id: 31,
        isFeatured: false,
        name: 'Liftor',
        price: 1250000,
      ),
      Product(
        category: Category.mech,
        id: 32,
        isFeatured: false,
        name: 'Paramedic',
        price: 1800000,
      ),
      Product(
        category: Category.mech,
        id: 33,
        isFeatured: true,
        name: 'Tunneler',
        price: 2500000,
      ),
      Product(
        category: Category.entity,
        id: 34,
        isFeatured: true,
        name: 'Harbinger Tree',
        price: 3000000,
      ),
      Product(
        category: Category.entity,
        id: 35,
        isFeatured: false,
        name: 'Fleshbeast',
        price: 1000000,
      ),
      Product(
        category: Category.entity,
        id: 36,
        isFeatured: false,
        name: 'Sightstealer',
        price: 1250000,
      ),
      Product(
        category: Category.entity,
        id: 37,
        isFeatured: false,
        name: 'Shambler',
        price: 500000,
      ),
      Product(
        category: Category.entity,
        id: 38,
        isFeatured: true,
        name: 'Ghoul',
        price: 1500000,
      ),
      Product(
        category: Category.entity,
        id: 39,
        isFeatured: false,
        name: 'Gorehulk',
        price: 2000000,
      ),
      Product(
        category: Category.entity,
        id: 40,
        isFeatured: false,
        name: 'Chimera',
        price: 2500000,
      ),
      Product(
        category: Category.entity,
        id: 41,
        isFeatured: false,
        name: 'Devourer',
        price: 3000000,
      ),
      Product(
        category: Category.entity,
        id: 42,
        isFeatured: false,
        name: 'Noctol',
        price: 2250000,
      ),
      Product(
        category: Category.entity,
        id: 43,
        isFeatured: false,
        name: 'Revenant',
        price: 2000000,
      ),
      Product(
        category: Category.entity,
        id: 44,
        isFeatured: false,
        name: 'MetalHorror',
        price: 1750000,
      ),
      Product(
        category: Category.entity,
        id: 45,
        isFeatured: true,
        name: 'Nociosphere',
        price: 4000000,
      ),
      Product(
        category: Category.entity,
        id: 46,
        isFeatured: false,
        name: 'Golden Cube',
        price: 3000000,
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
