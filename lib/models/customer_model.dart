class CustomerModel {
  final String id;
  final String customerName;
  final String? mobileNumber;
  final String? address;
  final String? city;
  final String? state;
  final String? pincode;
  final String? gstNumber;
  final String? createdBy;
  final String? customerCategoryId;
  final DateTime createdAt;
  final DateTime updatedAt;

  CustomerModel({
    required this.id,
    required this.customerName,
    this.mobileNumber,
    this.address,
    this.city,
    this.state,
    this.pincode,
    this.gstNumber,
    this.createdBy,
    this.customerCategoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      id: json['id'] as String,
      customerName: json['customer_name'] as String,
      mobileNumber: json['mobile_number'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      gstNumber: json['gst_number'] as String?,
      createdBy: json['created_by'] as String?,
      customerCategoryId: json['customer_category_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customer_name': customerName,
      'mobile_number': mobileNumber,
      'address': address,
      'city': city,
      'state': state,
      'pincode': pincode,
      'gst_number': gstNumber,
      'created_by': createdBy,
      'customer_category_id': customerCategoryId,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  String get fullAddress {
    List<String> parts = [];
    if (address != null && address!.isNotEmpty) parts.add(address!);
    if (city != null && city!.isNotEmpty) parts.add(city!);
    if (state != null && state!.isNotEmpty) parts.add(state!);
    if (pincode != null && pincode!.isNotEmpty) parts.add(pincode!);
    return parts.join(', ');
  }
}