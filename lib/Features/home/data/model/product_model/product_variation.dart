import 'package:equatable/equatable.dart';

import 'product_status_lookups.dart';
import 'product_varient_image.dart';

class ProductVariation extends Equatable {
  final int? id;
  final int? productId;
  final int? price;
  final int? quantity;
  final bool? isDefault;
  final dynamic deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? productVariationStatusId;
  final ProductStatusLookups? productStatusLookups;
  final List<ProductVarientImage>? productVarientImages;

  const ProductVariation({
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.isDefault,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.productVariationStatusId,
    this.productStatusLookups,
    this.productVarientImages,
  });

  factory ProductVariation.fromJson(Map<String, dynamic> json) {
    return ProductVariation(
      id: json['id'] as int?,
      productId: json['product_id'] as int?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      isDefault: json['is_default'] as bool?,
      deletedAt: json['deletedAt'] as dynamic,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      productVariationStatusId: json['product_variation_status_id'] as int?,
      productStatusLookups: json['ProductStatusLookups'] == null
          ? null
          : ProductStatusLookups.fromJson(
              json['ProductStatusLookups'] as Map<String, dynamic>),
      productVarientImages: (json['ProductVarientImages'] as List<dynamic>?)
          ?.map((e) => ProductVarientImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'price': price,
        'quantity': quantity,
        'is_default': isDefault,
        'deletedAt': deletedAt,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'product_variation_status_id': productVariationStatusId,
        'ProductStatusLookups': productStatusLookups?.toJson(),
        'ProductVarientImages':
            productVarientImages?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      productId,
      price,
      quantity,
      isDefault,
      deletedAt,
      createdAt,
      updatedAt,
      productVariationStatusId,
      productStatusLookups,
      productVarientImages,
    ];
  }
}
