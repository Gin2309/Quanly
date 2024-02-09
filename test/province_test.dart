import "package:flutter_test/flutter_test.dart";
import "package:quanly_application/model/province.dart";

void main() {
  group("Test Province", () {
    test("contructor", () {
      var province = Province(
        id: "01",
        name: "Thành phố Hà Nội",
        level: "Thành phố Trung ương",
      );
      expect(province.id, "01");
      expect(province.name, "Thành phố Hà Nội");
      expect(province.level, "Thành phố Trung ương");
    });
  });
}
