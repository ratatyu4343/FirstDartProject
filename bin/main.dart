import 'extensions/list_extension.dart';
import 'models/library/library.dart';
import 'models/printed_materials/book.dart';
import 'models/printed_materials/magazine.dart';
import 'models/printed_materials/printed_material.dart';

void main(List<String> arguments) {
  // Створення бібліотеки
  Library library = Library();

  // Створення екземплярів друкованих матеріалів та додавання в бібліотеку
  library.addMaterial(Book(title: 'AThe Catcher in the Rye', author: 'Salinger', pageCount: 134));
  library.addMaterial(Book(title: 'BThe Catcher in the Rye', author: 'Havrilyuk', pageCount: 2234));
  library.addMaterial(Book(title: 'CThe Catcher in the Rye', author: 'Enshtain', pageCount: 1234));
  library.addMaterial(Book.rand());
  library.addMaterial(Magazine(title: 'DNational Geographic', editor: 'Messi', pageCount: 10));
  library.addMaterial(Magazine(title: 'FNational Geographic', editor: 'Ronaldo', pageCount: 30));
  library.addMaterial(Magazine(title: 'GNational Geographic', editor: 'Ronaldo', pageCount: 24));

  List<PrintedMaterial> ronaldoMaterials = library.findMaterialByAuthor('Ronaldo') ?? <PrintedMaterial>[];
  ronaldoMaterials.printAll();
}
