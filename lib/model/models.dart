class Song {
  final String coverImg;
  final String songName;
  final String author;
  final String image;

  Song({
    required this.coverImg,
    required this.songName,
    required this.author,
    required this.image,
  });
}

List<Map<String, dynamic>> songs = [
  {
    'coverImg': 'https://wallpapercave.com/wp/wp9403174.jpg',
    'songName': 'Hero',
    'author': 'Taylor Swift',
    'image': 'assets/author1_image.jpg',
  },
  {
    'coverImg': 'https://i.pinimg.com/originals/4c/42/82/4c4282fc36db8ad324e52ca591c4cf9a.jpg',
    'songName': 'Unholy',
    'author': 'sam smith, kim petras',
    'image': 'assets/author2_image.jpg',
  },
  {
    'coverImg': 'https://th.bing.com/th/id/R.d7d418bca211751f6b2107a90766cfa6?rik=5wrN4oAIF6igMg&riu=http%3a%2f%2fwww.aceshowbiz.com%2fimages%2fnews%2fonerepublic-release-single-if-i-lose-myself.jpg&ehk=1kH61hpPZBENq9x7WHiCLOW8suNbWues%2bPihmBAmAds%3d&risl=&pid=ImgRaw&r=0',
    'songName': 'Lift Me Up',
    'author': 'Rihanna',
    'image': 'assets/author3_image.jpg',
  },
  {
    'coverImg': 'https://64.media.tumblr.com/465d69afec250238a691b098f1f025bf/tumblr_nmnkguVZ5F1r6lhroo1_640.jpg',
    'songName': 'Song 4',
    'author': 'Author 4',
    'image': 'assets/author4_image.jpg',
  },
  {
    'coverImg': 'https://s-media-cache-ak0.pinimg.com/236x/0b/51/2e/0b512e07c40b2c6c245312fd1ace9213.jpg',
    'songName': 'Depression',
    'author': 'Dax',
    'image': 'assets/author5_image.jpg',
  },
  {
    'coverImg': 'https://cache.lovethispic.com/uploaded_images/226114-All-I-Need-Is-Someone-Who-Needs-Me.jpg',
    'songName': 'Im Good',
    'author': 'David Guetta & Bebe Rexha',
    'image': 'assets/author6_image.jpg',
  },
  {
    'coverImg': 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/dfa83c15814037.562972f8522e0.jpg',
    'songName': 'Song 7',
    'author': 'Author 7',
    'image': 'assets/author7_image.jpg',
  },
  {
    'coverImg': 'https://i.pinimg.com/originals/4c/42/82/4c4282fc36db8ad324e52ca591c4cf9a.jpg',
    'songName': 'Song 8',
    'author': 'Author 8',
    'image': 'assets/author8_image.jpg',
  },
];


final List<Song>songsList = songs.map((e) => Song(coverImg: e['coverImg'],
    songName: e['songName'], author: e['author'], image: e['image'])).toList();
