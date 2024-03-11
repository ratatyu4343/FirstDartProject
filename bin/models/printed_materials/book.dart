import 'dart:math';

import 'printed_material.dart';

class Book extends PrintedMaterial {
  late String author;

  Book({required String title,
        required int pageCount,
        required this.author}) : super(title, pageCount);

  Book.withoutAuthor({required String title,
                      required int pageCount
                      }) : super(title, pageCount){
    author = "Unknown";
  }

  factory Book.rand(){
    return Book(title: "Tamplate${Random().nextInt(1000)}",
        pageCount: Random().nextInt(1000),
        author: "Author${Random().nextInt(1000)}"
    );
  }

  @override
  void printDetails() {
    print('Book: $title');
    print('Author: $author');
    print('Page Count: $pageCount');
  }
}