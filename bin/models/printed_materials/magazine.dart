import 'printed_material.dart';

class Magazine extends PrintedMaterial {
  late String editor;

  Magazine({required String title,
            required this.editor,
            required int pageCount}) : super(title, pageCount);

  Magazine.withoutEditor({required String title,
                          required int pageCount
  }) : super(title, pageCount){
    editor = "Unknown";
  }




  @override
  void printDetails() {
    print('Magazine: $title');
    print('Editor: $editor');
    print('Page Count: $pageCount');
  }
}