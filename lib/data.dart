class GameImage {
  String? url;
  String? title;

  GameImage({this.title, this.url});
}

class Game {
  String? title;
  GameImage? coverImages;
  List<GameImage>? images;
  String? description;
  String? studio;

  Game(
      {this.title,
      this.coverImages,
      this.images,
      this.description,
      this.studio});
}

List<Game> games = [
  Game(
    title: "Horizon Zero Dawn",
    images: [
      GameImage(
        url:
            "https://www.wallpaperflare.com/static/734/272/885/horizon-zero-dawn-playstation-4-logo-aloy-horizon-zero-dawn-wallpaper.jpg",
      ),
    ],
    studio: "Guerrilla Games",
  ),
  Game(
    title: "Metro Exodus",
    images: [
      GameImage(
        url:
            "https://assets1.ignimgs.com/2018/12/14/metro-exodus---button-1544750418985.jpg",
      ),
    ],
    studio: "4A Games",
  ),
  Game(
    title: "Tom Clancy's The Division 2",
    images: [
      GameImage(
        url:
            "https://cdn.division.zone/uploads/2019/03/tc-the-division-2-preload-start-times-sizes-header.jpg",
      ),
    ],
    studio: "Massive Entertainment",
  ),
  Game(
    title: "Resident Evil 2",
    images: [
      GameImage(
        url:
            "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
      ),
    ],
    studio: "Capcom",
  ),
];

List<Game> games2 = [
  Game(
    title: "Grand Theft Auto V",
    images: [
      GameImage(
        url:
            "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
      ),
    ],
    studio: "Rockstar Games",
  ),
  Game(
    title: "The Last of Us Part II",
    images: [
      GameImage(url: "https://mvpo.us/img/P6253.jpg"),
    ],
    studio: "Naughty Dog",
  ),
  Game(
    title: "Sekiro: Shadows Die Twice",
    images: [
      GameImage(
        url:
            "https://onlysp.escapistmagazine.com/wp-content/uploads/2019/03/Sekiro-Shadows-Die-Twice-logo-art.jpg",
      ),
    ],
    studio: "From Software",
  ),
  Game(
    title: "Just Cause 4",
    images: [
      GameImage(
        url:
            "https://s3.gaming-cdn.com/images/products/2666/orig/just-cause-4-cover.jpg",
      )
    ],
    studio: "Avalanche Studios",
  ),
];

List<Game> featuredGames = [
  Game(
    title: "Total War: Three Kingdoms",
    images: [
      GameImage(
        url:
            "https://content.totalwar.com/total-war/com.totalwar.www2019/uploads/2019/03/08145252/2.jpg",
      ),
    ],
    studio: "Feral Interactive",
  ),
  Game(
    title: "Call of Duty: Modern Warfare",
    images: [
      GameImage(
        url:
            "https://images.hdqwalls.com/download/call-of-duty-modern-warfare-2019-4k-cb-1920x1080.jpg",
      ),
    ],
    studio: "Infinity Ward",
  ),
  Game(
    title: "Dragon Ball Z: Kakarot",
    images: [
      GameImage(
        url:
            "https://cdn3.dualshockers.com/wp-content/uploads/2020/01/dbx-kakarot.png",
      ),
    ],
    studio: "CyberConnect2",
  ),
  Game(
    title: "Mortal Kombat 11",
    images: [
      GameImage(
          url: "https://static.trueachievements.com/customimages/093902.jpg"),
    ],
    studio: "NetherRealm Studios",
  )
];
