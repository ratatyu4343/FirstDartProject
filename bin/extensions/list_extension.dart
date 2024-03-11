import '../models/printed_materials/book.dart';
import '../models/printed_materials/magazine.dart';
import '../models/printed_materials/printed_material.dart';

extension MyListExtension on List<PrintedMaterial>{
  List<PrintedMaterial>? findByAuthor(String author) {
    return where((material) {
      return  (material is Book && material.author == author)
              ||
              (material is Magazine && material.editor == author);
    }).toList();
  }

  void printAll(){
    forEach((element) {
      print("--------------");
      element.printDetails();});
  }
}