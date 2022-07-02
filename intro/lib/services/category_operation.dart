import 'package:intro/models/category.dart';

class categoryOperations {
  categoryOperations._() {}
  static List<category> getCategories() {
    return <category>[
      category('Arjit Singh',
          'https://c-fa.cdn.smule.com/rs-s77/arr/8e/96/a43ebd00-5f80-4a86-8e82-aa59ba763d39.jpg'),
      category('Atif Aslam',
          'https://c-fa.cdn.smule.com/rs-s78/arr/a5/c5/ae34ec23-9e1b-4519-9b88-c03981c7b9e9.jpg'),
      category('Daily hits',
          'https://i1.sndcdn.com/avatars-000557219739-n23cp7-t500x500.jpg'),
      category('love Mashup',
          'https://c-fa.cdn.smule.com/rs-s81/arr/75/b0/41be74dd-41c8-4040-bf9c-554ef7809e29.jpg'),
      category('Old Hits',
          'https://i.pinimg.com/originals/11/04/1b/11041b044ad0f808bbabf5264147e22c.png'),
      category('Party Songs',
          'https://c-fa.cdn.smule.com/rs-s96/arr/41/99/b98e3e5e-bca7-4f2a-936b-a7dc8de1f1f2.jpg')
    ];
  }
}
