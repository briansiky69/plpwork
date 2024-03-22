class Product {
  String name;
  double price;

  Product(this.name, this.price);

  void displayInfo() {
    print("Name: $name, Price: \$$price");
  }
}

class ElectronicProduct extends Product implements Taxable {
  int warranty;

  ElectronicProduct(String name, double price, this.warranty) : super(name, price);

  @override
  double calculateTax(double price) {
    return price * 0.1; // 10% tax
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Warranty: $warranty months");
  }
}

abstract class Taxable {
  double calculateTax(double price);
}

List<ElectronicProduct> readProductsFromFile(String filePath) {
  List<ElectronicProduct> products = [];
  File file = File(filePath);
  if (file.existsSync()) {
    List<String> lines = file.readAsLinesSync();
    for (String line in lines) {
      List<String> data = line.split(','); // Split data by comma
      products.add(ElectronicProduct(data[0], double.parse(data[1]), int.parse(data[2])));
    }
  }
  return products;
}

void main() {
  List<ElectronicProduct> products = readProductsFromFile("products.txt");

  for (ElectronicProduct product in products) {
    product.displayInfo();
    print("Tax: \$${product.calculateTax(product.price)}");
    print("-------");
  }
}
