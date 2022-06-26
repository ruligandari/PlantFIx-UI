class PlantDisease {
  String name;
  String description;
  List<String> controlingDisease;
  String family;
  String genus;
  String imageAsset;
  List<String> imageUrls;

  PlantDisease({
    required this.name,
    required this.description,
    required this.controlingDisease,
    required this.family,
    required this.genus,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var plantList = [
  PlantDisease(
    name: "Gemini Virus",
    description:
        "Tanaman yang terserang gemini virus secara umum gejala-gejala yang dapat diamati adalah helai daun mengalami “vein clearing”, dimulai dari daun-daun pucuk, berkembang menjadi warna kuning yang jelas, tulang daun menebal dan daun menggulung ke atas (cupping). Infeksi lanjut dari geminivirus menyebabkan daun-daun mengecil dan berwarna kuning terang, tanaman kerdil dan tidak berbuah. Pengamatan lapang menunjukkan pertanaman cabai merah yang 100% terserang tidak menghasilkan buah sama sekali.",
    controlingDisease: [
      "Gunakan varietas toleran/tahan yakni Tanjung-1, Tanjung-2, Lembang-1 atau varietas hybrid yang sudah beradaptasi baik seperti Hot Beauty, Hot Chili, TM 999 dan lainnya.",
      "Gunakan persemaian yang benar, pemupukan seimbang, melakukan sanitasi, dan pencabutan tanaman sakit.",
      "Untuk menghindari kutu kebul, lakukan penanaman Tumpangsari"
    ],
    family: 'Geminivaridae',
    genus: 'Begomovirus',
    imageAsset: 'images/gemini.jpg',
    imageUrls: [
      'http://cybex.ipb.ac.id//uploads/8e1bc82b076f7d57bbfea72dbb7c0fe8.jpg',
      'https://kartian.my.id/wp-content/uploads/2021/03/1610529028-330-4781881-760x490.jpg',
      'https://tanesia.id/wp-content/uploads/2021/06/gemini-virus.jpg'
    ],
  ),
  PlantDisease(
    name: "Mozaik Virus",
    description:
        "Faktor lingkungan fisik yang berpengaruh terhadap perkembangan penyakit virus dan vektornya adalah : 1) curah hujan; 2) Angin; 3) suhu udara; dan 4) jenis tanah dan kelengasannya. Curah hujan sangat berperan dalam perkembangan penyakit virus yang mempunyai vektor soilborne dan airborne Curah hujan di daerah tropika dan sub tropika berkaitan langsung dengan kelembaban udara yang tinggi. Infeksi virus pada tumbuhan lebih banyak terjadi pada musim semi atau hujan.",
    controlingDisease: [
      "pencegahan infeksi di lapang misalnya dengan rotasi tanaman dengan tanaman yang bukan inang virus maupun vektornya, menekan populasi vektor.",
      "mencegah penyebaran di dalam tanaman misalnya dengan menghilangkan gulma inang, mencegah penularan mekanis.",
      "menanam bibit bebas virus",
      "proteksi silang. Alternatif pengendalian CMV dengan vaksin Carna-5 sebagai biokontrol."
    ],
    family: 'TobamoVirus',
    genus: 'Tobamovirus',
    imageAsset: 'images/mozaik.jpg',
    imageUrls: [
      'https://houseplantauthority.com/wp-content/uploads/2022/05/mosaic-disease-monstera.jpg',
      'https://plantophiles.com/wp-content/uploads/2019/09/IMG_5319.jpg',
      'https://plantcaretoday.com/wp-content/uploads/LHF-52839-mosaic-virus-t1-min.jpg'
    ],
  ),
  PlantDisease(
    name: "Bercak Bakteri Tomat",
    description:
        "Bakteri ini menyerang daun, batang, dan buah tomat. Gejala pertamanya berupa luka kecil berwarna kuning kehijauan pada daun muda, yang biasanya tampak cacat dan menggulung. Pada daun-daun yang lebih tua, luka dibatasi oleh vena, menjadi kaku seiring waktu. Pada awalnya luka berwarna hijau tua, nampak berminyak, dan dikelilingi oleh lingkaran cahaya kuning. Luka-luka ini biasanya lebih banyak pada tepian atau ujung daun. Dalam kondisi yang nyaman, luka membesar dengan cepat hingga ukuran lebarnya mencapai 0,25 - 0,5 cm dan menjadi kecoklatan hingga merah kecoklatan.",
    controlingDisease: [
      "Gunakan varietas yang tahan penyakit jika tersedia di lokasi setempat.",
      "Periksa lahan secara teratur, terutama saat cuaca mendung.",
      "Buang dan bakar setiap bibit atau bagian tanaman yang mengalami bercak daun.",
    ],
    family: 'Xanthomonas spp.',
    genus: 'Pseudomonas syringae pv.',
    imageAsset: 'images/tomat.jpg',
    imageUrls: [
      'https://content.peat-cloud.com/w800/bacterial-spot-and-speck-of-tomato-tomato-1584010249.jpg',
      'https://content.peat-cloud.com/w800/bacterial-spot-and-speck-of-tomato-tomato-1582902651.jpg',
      'https://content.peat-cloud.com/w800/bacterial-spot-of-tomato-tomato-1567496245.jpg'
    ],
  ),
  PlantDisease(
    name: "Kutu Kebul",
    description:
        "Kutu kebul adalah hama yang umum pada berbagai varietas tanaman yang tumbuh di lahan terbuka atau rumah kaca. Baik kutu dewasa maupun nimfa menghisap getah tanaman dan mengeluarkan embun madu di daun, batang dan buah. Bercak klorotik dan jamur hitam terbentuk pada jaringan yang terserang. Selama serangan parah, bercak-bercak ini dapat menyatu dan menyebar ke seluruh daun, kecuali area di sekeliling pembuluh daun.",
    controlingDisease: [
      "Beri jarak yang lebih rapat pada saat menanam.",
      "Amati tanda-tanda adanya kutu kebul pada saat membeli atau transplantasi tanaman baru.",
      "Pastikan pemupukan yang seimbang.",
    ],
    family: 'Aleyrodidae',
    genus: '-',
    imageAsset: 'images/kutukebul.jpg',
    imageUrls: [
      'https://content.peat-cloud.com/w800/whiteflies-tomato-1576666557.jpg',
      'https://content.peat-cloud.com/w400/whiteflies-tomato-1576666912.jpg',
      'https://content.peat-cloud.com/w800/whiteflies-bean-1578237303.jpg'
    ],
  ),
  PlantDisease(
    name: "Kutu Daun",
    description:
        "Dalam jumlah sedikit atau sedang umumnya tidak berbahaya bagi tanaman. Kerumunan kutu dalam jumlah banyak dapat menyebabkan daun dan pucuk mengerut, layu atau kuning dan pertumbuhan tanaman terhambat. Secara umum, penurunan daya tahan tanaman juga perlu diperhatikan. Madu yang dihasilkan kutu daun saat mereka memakan jaringan tanaman menyebabkan infeksi tambahan dengan jamur oportunistik di beberapa kasus.",
    controlingDisease: [
      "Peliharalah berbagai jenis varietas tanaman berbeda di sekitar lahan.",
      "Gunakan mulsa reflektif untuk menghalau populasi kutu daun yang menyerang. ",
      "Pantau lahan secara rutin untuk melihat kemunculan wabah penyakit atau hama dan menentukan tingkat keparahannya.",
    ],
    family: 'Aphidoidea',
    genus: '-',
    imageAsset: 'images/kutudaun.jpg',
    imageUrls: [
      'https://content.peat-cloud.com/w800/aphid-1.jpg',
      'https://content.peat-cloud.com/w800/aphids-okra-1578499207.jpg',
      'https://content.peat-cloud.com/w800/aphid-cucumber-2.jpg'
    ],
  ),
  PlantDisease(
    name: "Hama Wereng",
    description:
        "Kerusakannya menyerupai tanggapan tanaman terhadap stres kekeringan atau kekurangan unsur hara. Wereng daun memakan bagian bawah daun. Cedera biasanya dimulai dengan area klorosis (penguningan) yang berkembang di sekitar titik gigitan dan sedikit menggulung tepi daun. Umumnya, gejalanya dikenal sebagai luka bakar wereng.",
    controlingDisease: [
      "Pantau dengan mencari kulit larva kosong di bagian bawah daun. ",
      "Pungut dan buang telur atau bagian tanaman yang terinfeksi. ",
      "Sebagai tambahan, gunakan perangkap lengket kuning yang sangat menarik bagi wereng daun hijau.",
    ],
    family: 'Amrasca',
    genus: '-',
    imageAsset: 'images/wereng.jpg',
    imageUrls: [
      'https://content.peat-cloud.com/w800/leafhoppers-and-jassids-peanut-1579091368.jpg',
      'https://content.peat-cloud.com/w800/leafhoppers-and-jassids-potato-1556286438.jpg',
      'https://content.peat-cloud.com/w800/leafhoppers-and-jassids-potato-1556286483.jpg'
    ],
  ),
  PlantDisease(
    name: "Tungau Laba-laba",
    description:
        " Tungau laba-laba yang memamah biak menyebabkan terbentuknya bintik-bintik putih hingga kuning di permukaan atas daun. Telurnya menempel di bagian bawah daun. Tungau laba-laba sendiri berada di situ, bersarang di dalam kepompong yang berupa anyaman. Ketika serangan bertambah hebat, daun nampak berwarna perunggu atau keperakan pada awalnya dan selanjutnya menjadi rapuh, sobek di antara pembuluh daun, dan akhirnya gugur.",
    controlingDisease: [
      "Kibaskan beberapa serangga dari permukaan daun ke atas selembar kertas putih. ",
      "Buang daun atau tanaman yang terserang.",
      "Singkirkan jelatang dan gulma-gulma lain dari lahan.",
    ],
    family: 'tetranychidae',
    genus: '-',
    imageAsset: 'images/tungau.jpg',
    imageUrls: [
      'https://content.peat-cloud.com/w800/spider-mites-okra-1578936129.jpg',
      'https://content.peat-cloud.com/w800/spider-mites-okra-1578935989.jpg',
      'https://content.peat-cloud.com/w800/spider-mites-peanut-1578935879.jpg'
    ],
  ),
];
