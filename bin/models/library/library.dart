import '../printed_materials/printed_material.dart';
import '../../extensions/list_extension.dart';

class Library {
  List<PrintedMaterial> materials = [];

  void addMaterial(PrintedMaterial material) {
    materials.add(material);
  }

  PrintedMaterial? removeMaterial(PrintedMaterial material) {
    if (materials.contains(material)) {
      materials.remove(material);
      return material;
    } else {
      return null;
    }
  }

  List<PrintedMaterial>? findMaterialByAuthor(String author){
    return materials.findByAuthor(author);
  }

  void printAllMaterials(){
    for(var material in materials){
      material.printDetails();
    }
  }

}
