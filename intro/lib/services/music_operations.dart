import 'package:intro/models/music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Chaand Baaliyan',
          'https://c-fa.cdn.smule.com/smule-gg-uw1-s-8/arr/0a/2e/182e40b2-434c-46ba-aebb-40b4466717f1.jpg',
          'honthon pe ye gaaliyan',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/3d/59/d2/3d59d218-6ff4-f77c-22bc-9eceba7fdccc/mzaf_4374757629058758941.plus.aac.p.m4a'),
      Music(
          'Aashiyan',
          'https://c-fa.cdn.smule.com/rs-s91/arr/96/36/6f75d26b-1be1-44f8-8851-eb0b348ca74e.jpg',
          'Itti si hansi',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/3d/59/d2/3d59d218-6ff4-f77c-22bc-9eceba7fdccc/mzaf_4374757629058758941.plus.aac.p.m4a'),
      Music(
          'The Nights',
          'https://c-fa.cdn.smule.com/rs-s23/arr/18/a4/1399acbf-dd82-4b91-b26a-ffdcf917eca7.jpg',
          'Once upon a younger year',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/3d/59/d2/3d59d218-6ff4-f77c-22bc-9eceba7fdccc/mzaf_4374757629058758941.plus.aac.p.m4a'),
      Music(
          'Dil Dhadkne Do',
          'https://c-fa.cdn.smule.com/rs-s80/arr/96/38/5156cc10-a519-460b-a05f-e7618905e1c3.jpg',
          'Hey hey, chalo na',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/3d/59/d2/3d59d218-6ff4-f77c-22bc-9eceba7fdccc/mzaf_4374757629058758941.plus.aac.p.m4a')
    ];
  }
}
