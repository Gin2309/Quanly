import 'package:flutter_test/flutter_test.dart';
import "package:quanly_application/model/addressinfo.dart";
import 'package:quanly_application/model/district.dart';
import 'package:quanly_application/model/province.dart';
import 'package:quanly_application/model/ward.dart';

void main() {
  group('AddressInfo Tests', () {
    test('contructor', () {
      var province = Province(name: "Hà Nội");
      var district = District(name: "Hoàn Kiếm");
      var ward = Ward(name: "Hàng Buồm");

      var addressinfo = AddressInfo(
        province: province,
        district: district,
        ward: ward,
        street: "Đê La Thành",
      );

      expect(addressinfo.province?.name, "Hà Nội");
      expect(addressinfo.district?.name, "Hoàn Kiếm");
      expect(addressinfo.ward?.name, "Hàng Buồm");
      expect(addressinfo.street, "Đê La Thành");
    });

    test('contructor with null values', () {
      var addressinfo = AddressInfo(
        province: null,
        district: null,
        ward: null,
        street: null,
      );
      expect(addressinfo.province, null);
      expect(addressinfo.district, null);
      expect(addressinfo.ward, null);
      expect(addressinfo.street, null);
    });
  });
}
