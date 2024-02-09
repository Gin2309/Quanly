import "package:flutter_test/flutter_test.dart";
import "package:quanly_application/model/ward.dart";

void main() {
  group("Test Ward", () {
    test("contructor", () {
      var ward = Ward(
        id: "2",
        name: "Hoàn Kiếm",
        level: "Quận nội thành",
        provinceId: "2",
      );
      expect(ward.id, "2");
      expect(ward.name, "Phú Diễn");
      expect(ward.level, "Phường nội thành");
      expect(ward.provinceId, "2");
      expect(ward.districtId, "2");
    });
  });
}
