module ResumesHelper
  def city
    ["Kabupaten Aceh Barat", "Kabupaten Aceh Barat Daya", "Kabupaten Aceh Besar", "Kabupaten Aceh Jaya",
     "Kabupaten Aceh Selatan", "Kabupaten Aceh Singkil", "Kabupaten Aceh Tamiang", "Kabupaten Aceh Tengah",
     "Kabupaten Aceh Tenggara", "Kabupaten Aceh Timur", "Kabupaten Aceh Utara", "Kabupaten Bener Meriah",
     "Kabupaten Bireuen", "Kabupaten Gayo Lues", "Kabupaten Nagan Raya", "Kabupaten Pidie", "Kabupaten Pidie Jaya",
     "Kabupaten Simeulue", "Kota Banda Aceh", "Kota Langsa", "Kota Lhokseumawe", "Kota Sabang",
     "Kota Subulussalam", "Kabupaten Asahan", "Kabupaten Batubara", "Kabupaten Dairi", "Kabupaten Deli Serdang",
     "Kabupaten Humbang Hasundutan", "Kabupaten Karo", "Kabupaten Labuhanbatu", "Kabupaten Labuhanbatu Selatan",
     "Kabupaten Labuhanbatu Utara", "Kabupaten Langkat", "Kabupaten Mandailing Natal", "Kabupaten Nias",
     "Kabupaten Nias Barat", "Kabupaten Nias Selatan", "Kabupaten Nias Utara", "Kabupaten Padang Lawas",
     "Kabupaten Padang Lawas Utara", "Kabupaten Pakpak Bharat", "Kabupaten Samosir", "Kabupaten Serdang Bedagai",
     "Kabupaten Simalungun", "Kabupaten Tapanuli Selatan", "Kabupaten Tapanuli Tengah", "Kabupaten Tapanuli Utara",
     "Kabupaten Toba Samosir", "Kota Binjai", "Kota Gunungsitoli", "Kota Medan", "Kota Padangsidempuan",
     "Kota Pematangsiantar", "Kota Sibolga", "Kota Tanjungbalai", "Kota Tebing Tinggi", "Kabupaten Agam",
     "Kabupaten Dharmasraya", "Kabupaten Kepulauan Mentawai", "Kabupaten Lima Puluh Kota", "Kabupaten Padang Pariaman",
     "Kabupaten Pasaman", "Kabupaten Pasaman Barat", "Kabupaten Pesisir Selatan", "Kabupaten Sijunjung",
     "Kabupaten Solok", "Kabupaten Solok Selatan", "Kabupaten Tanah Datar", "Kota Bukittinggi", "Kota Padang",
     "Kota Padangpanjang", "Kota Pariaman", "Kota Payakumbuh", "Kota Sawahlunto", "Kota Solok", "Kabupaten Bengkalis",
     "Kabupaten Indragiri Hilir", "Kabupaten Indragiri Hulu", "Kabupaten Kampar", "Kabupaten Kepulauan Meranti",
     "Kabupaten Kuantan Singingi", "Kabupaten Pelalawan", "Kabupaten Rokan Hilir", "Kabupaten Rokan Hulu",
     "Kabupaten Siak", "Kota Dumai", "Kota Pekanbaru", "Kabupaten Bintan", "Kabupaten Karimun", "Kabupaten Kepulauan Anambas",
     "Kabupaten Lingga", "Kabupaten Natuna", "Kota Batam", "Kota Tanjung Pinang", "Kabupaten Batanghari",
     "Kabupaten Bungo", "Kabupaten Kerinci", "Kabupaten Merangin", "Kabupaten Muaro Jambi", "Kabupaten Sarolangun",
     "Kabupaten Tanjung Jabung Barat", "Kabupaten Tanjung Jabung Timur", "Kabupaten Tebo", "Kota Jambi", "Kota Sungai Penuh",
     "Kabupaten Bengkulu Selatan", "Kabupaten Bengkulu Tengah", "Kabupaten Bengkulu Utara", "Kabupaten Kaur", "Kabupaten Kepahiang",
     "Kabupaten Lebong", "Kabupaten Mukomuko", "Kabupaten Rejang Lebong", "Kabupaten Seluma", "Kota Bengkulu",
     "Kabupaten Banyuasin", "Kabupaten Empat Lawang", "Kabupaten Lahat", "Kabupaten Muara Enim", "Kabupaten Musi Banyuasin",
     "Kabupaten Musi Rawas", "Kabupaten Musi Rawas Utara", "Kabupaten Ogan Ilir", "Kabupaten Ogan Komering Ilir",
     "Kabupaten Ogan Komering Ulu", "Kabupaten Ogan Komering Ulu Selatan", "Kabupaten Ogan Komering Ulu Timur",
     "Kabupaten Penukal Abab Lematang Ilir", "Kota Lubuklinggau", "Kota Pagar Alam", "Kota Palembang",
     "Kota Prabumulih", "Kota Lubuklinggau", "Kota Pagar Alam", "Kota Palembang", "Kabupaten Bangka",
     "Kabupaten Bangka Barat", "Kabupaten Bangka Selatan", "Kabupaten Bangka Tengah", "Kabupaten Belitung",
     "Kabupaten Belitung Timur", "Kota Pangkal Pinang", "Kabupaten Lampung Tengah", "Kabupaten Lampung Utara",
     "Kabupaten Lampung Selatan", "Kabupaten Lampung Barat", "Kabupaten Lampung Timur", "Kabupaten Mesuji",
     "Kabupaten Pesawaran", "Kabupaten Pesisir Barat", "Kabupaten Pringsewu", "Kabupaten Tulang Bawang",
     "Kabupaten Tulang Bawang Barat", "Kabupaten Tanggamus", "Kabupaten Way Kanan", "Kota Bandar Lampung",
     "Kota Metro", "Kabupaten Lebak", "Kabupaten Pandeglang", "Kabupaten Serang", "Kabupaten Tangerang", "Kota Cilegon",
     "Kota Serang", "Kota Tangerang", "Kota Tangerang Selatan", "Kabupaten Bandung", "Kabupaten Bandung Barat",
     "Kabupaten Bekasi", "Kabupaten Bogor", "Kabupaten Ciamis", "Kabupaten Cianjur", "Kabupaten Cirebon",
     "Kabupaten Garut", "Kabupaten Indramayu", "Kabupaten Karawang", "Kabupaten Kuningan", "Kabupaten Majalengka",
     "Kabupaten Pangandaran", "Kabupaten Purwakarta", "Kabupaten Subang", "Kabupaten Sukabumi", "Kabupaten Sumedang",
     "Kabupaten Tasikmalaya", "Kota Bandung", "Kota Banjar", "Kota Bekasi", "Kota Bogor", "Kota Cimahi", "Kota Cirebon",
     "Kota Depok", "Kota Sukabumi", "Kota Tasikmalaya", "Kota Jakarta", "Kabupaten Banjarnegara", "Kabupaten Banyumas", "Kabupaten Batang",
     "Kabupaten Blora", "Kabupaten Boyolali", "Kabupaten Brebes", "Kabupaten Cilacap", "Kabupaten Demak", "Kabupaten Grobogan",
     "Kabupaten Jepara", "Kabupaten Karanganyar", "Kabupaten Kebumen", "Kabupaten Kendal", "Kabupaten Klaten", "Kabupaten Kudus",
     "Kabupaten Magelang", "Kabupaten Pati", "Kabupaten Pekalongan", "Kabupaten Pemalang", "Kabupaten Purbalingga", "Kabupaten Purworejo",
     "Kabupaten Rembang", "Kabupaten Semarang", "Kabupaten Sragen", "Kabupaten Sukoharjo", "Kabupaten Tegal",
     "Kabupaten Temanggung", "Kabupaten Wonogiri", "Kabupaten Wonosobo", "Kota Magelang", "Kota Pekalongan",
     "Kota Salatiga", "Kota Semarang", "Kota Surakarta", "Kota Tegal", "Kabupaten Bantul", "Kabupaten Gunungkidul",
     "Kabupaten Kulon Progo", "Kabupaten Sleman", "Kota Yogyakarta", "Kabupaten Bangkalan", "Kabupaten Banyuwangi",
     "Kabupaten Blitar", "Kabupaten Bojonegoro", "Kabupaten Bondowoso", "Kabupaten Gresik", "Kabupaten Jember", "Kabupaten Jombang",
     "Kabupaten Kediri", "Kabupaten Lamongan", "Kabupaten Lumajang", "Kabupaten Madiun", "Kabupaten Magetan", "Kabupaten Malang",
     "Kabupaten Mojokerto", "Kabupaten Nganjuk", "Kabupaten Ngawi", "Kabupaten Pacitan", "Kabupaten Pamekasan",
     "Kabupaten Pasuruan", "Kabupaten Ponorogo", " Kabupaten Probolinggo", "Kabupaten Sampang", "Kabupaten Sidoarjo",
     "Kabupaten Situbondo", "Kabupaten Sumenep", "Kabupaten Trenggalek", "Kabupaten Tuban", "Kabupaten Tulungagung",
     "Kota Batu", "Kota Blitar", "Kota Kediri", "Kota Madiun", "Kota Malang", "Kota Mojokerto", "Kota Pasuruan",
     "Kota Probolinggo", "Kota Surabaya", "Kabupaten Badung", "Kabupaten Bangli", "Kabupaten Buleleng",
     "Kabupaten Gianyar", "Kabupaten Jembrana", "Kabupaten Karangasem", "Kabupaten Klungkung", "Kabupaten Tabanan",
     "Kota Denpasar", "Kabupaten Alor", "Kabupaten Belu", "Kabupaten Ende", "Kabupaten Flores Timur",
     "Kabupaten Kupang", "Kabupaten Lembata", "Kabupaten Malaka", "Kabupaten Manggarai", "Kabupaten Manggarai Barat",
     "Kabupaten Manggarai Timur", "Kabupaten Ngada", "Kabupaten Nagekeo", "Kabupaten Rote Ndao", "Kabupaten Sabu Raijua",
     "Kabupaten Sikka", "Kabupaten Sumba Barat", "Kabupaten Sumba Barat Daya", "Kabupaten Sumba Tengah",
     "Kabupaten Sumba Timur", "Kabupaten Timor Tengah Selatan", "Kabupaten Timor Tengah Utara", "Kota Kupang",
     "Kabupaten Bengkayang", "Kabupaten Kapuas Hulu", "Kabupaten Kayong Utara", "Kabupaten Ketapang",
     "Kabupaten Kubu Raya", "Kabupaten Landak", "Kabupaten Melawi", "Kabupaten Mempawah", "Kabupaten Sambas",
     "Kabupaten Sanggau", "Kabupaten Sekadau", "Kabupaten Sintang", "Kota Pontianak", "Kota Singkawang",
     "Kabupaten Balangan", "Kabupaten Banjar", "Kabupaten Barito Kuala", "Kabupaten Hulu Sungai Selatan",
     "Kabupaten Hulu Sungai Tengah", "Kabupaten Hulu Sungai Utara", "Kabupaten Kotabaru", "Kabupaten Tabalong",
     "Kabupaten Tanah Bumbu", "Kabupaten Tanah Laut", "Kabupaten Tapin", "Kota Banjarbaru", "Kota Banjarmasin",
     "Kabupaten Barito Selatan", "Kabupaten Barito Timur", "Kabupaten Barito Utara", "Kabupaten Gunung Mas",
     "Kabupaten Kapuas", "Kabupaten Katingan", "Kabupaten", "Kotawaringin Barat", "Kabupaten Kotawaringin Timur",
     "Kabupaten Lamandau", "Kabupaten Murung Raya", "Kabupaten Pulang Pisau", "Kabupaten Sukamara",
     "Kabupaten Seruyan", "Kota Palangka Raya", "Kabupaten Berau", "Kabupaten Kutai Barat", "Kabupaten Kutai Kartanegara",
     "Kabupaten Kutai Timur", "Kabupaten Mahakam Ulu", "Kabupaten Paser", "Kabupaten Penajam Paser Utara",
     "Kota Balikpapan", "Kota Bontang", "Kota Samarinda", "Kabupaten Bulungan", "Kabupaten Malinau", "Kabupaten Nunukan",
     "Kabupaten Tana Tidung", "Kota Tarakan", "Kabupaten Boalemo", "Kabupaten Bone Bolango", "Kabupaten Gorontalo",
     "Kabupaten Gorontalo Utara", "Kabupaten Pohuwato", "Kota Gorontalo", "Kabupaten Bantaeng", "Kabupaten Barru", "Kabupaten Bone",
     "Kabupaten Bulukumba", "Kabupaten Enrekang", "Kabupaten Gowa", "Kabupaten Jeneponto", "Kabupaten Kepulauan Selayar",
     "Kabupaten Luwu", "Kabupaten Luwu Timur", "Kabupaten Luwu Utara", "Kabupaten Maros", "Kabupaten Pangkajene dan Kepulauan",
     "Kabupaten Pinrang", "Kabupaten Sidenreng Rappang", "Kabupaten Sinjai", "Kabupaten Soppeng", "Kabupaten Takalar",
     "Kabupaten Tana Toraja", "Kabupaten Toraja Utara", "Kabupaten Wajo", "Kota Makassar", "Kota Palopo", "Kota Parepare",
     "Kabupaten Bombana", "Kabupaten Buton", "Kabupaten Buton Selatan", "Kabupaten Buton Tengah", "Kabupaten Buton Utara",
     "Kabupaten Kolaka", "Kabupaten Kolaka Timur", "Kabupaten Kolaka Utara", "Kabupaten Konawe", "Kabupaten Konawe Kepulauan",
     "Kabupaten Konawe Selatan", "Kabupaten Konawe Utara", "Kabupaten Muna", "Kabupaten Muna Barat", "Kabupaten Wakatobi", "Kota Bau-Bau",
     "Kota Kendari", "Kabupaten Banggai", "Kabupaten Banggai Kepulauan", "Kabupaten Banggai Laut", "Kabupaten Buol", "Kabupaten Donggala",
     "Kabupaten Morowali", "Kabupaten Morowali Utara", "Kabupaten Parigi Moutong", "Kabupaten Poso", "Kabupaten Sigi", "Kabupaten Tojo Una-Una",
     "Kabupaten Toli-Toli", "Kota Palu", "Kabupaten Bolaang Mongondow", "Kabupaten Bolaang Mongondow Selatan", "Kabupaten Bolaang Mongondow Timur",
     "Kabupaten Bolaang Mongondow Utara", "Kabupaten Kepulauan Sangihe", "Kabupaten Kepulauan Siau Tagulandang Biaro", "Kabupaten Kepulauan Talaud",
     "Kabupaten Minahasa", "Kabupaten Minahasa Selatan", "Kabupaten Minahasa Tenggara", "Kabupaten Minahasa Utara", "Kota Bitung", "Kota Kotamobagu",
     "Kota Manado", "Kota Tomohon", "Kabupaten Majene", "Kabupaten Mamasa", "Kabupaten Mamuju", "Kabupaten Mamuju Tengah",
     "Kabupaten Mamuju Utara", "Kabupaten Polewali Mandar", "Kota Mamuju", "Kabupaten Buru",
     "Kabupaten Buru Selatan", "Kabupaten Kepulauan Aru", "Kabupaten Maluku Barat Daya",
     "Kabupaten Maluku Tengah", "Kabupaten Maluku Tenggara", "Kabupaten Maluku Tenggara Barat",
     "Kabupaten Seram Bagian Barat", "Kabupaten Seram Bagian Timur", "Kota Ambon", "Kota Tual",
     "Kabupaten Halmahera Barat", "Kabupaten Halmahera Tengah", "Kabupaten Halmahera Utara",
     "Kabupaten Halmahera Selatan", "Kabupaten Kepulauan Sula", "Kabupaten Halmahera Timur",
     "Kabupaten Pulau Morotai", "Kabupaten Pulau Taliabu", "Kota Ternate", "Kota Tidore Kepulauan",
     "Kabupaten Asmat", "Kabupaten Biak Numfor", "Kabupaten Boven Digoel", "Kabupaten Deiyai",
     "Kabupaten Dogiyai", "Kabupaten Intan Jaya", "Kabupaten Jayapura", "Kabupaten Jayawijaya",
     "Kabupaten Keerom", "Kabupaten Kepulauan Yapen", "Kabupaten Lanny Jaya", "Kabupaten Mamberamo Raya",
     "Kabupaten Mamberamo Tengah", "Kabupaten Mappi", "Kabupaten Merauke", "Kabupaten Mimika",
     "Kabupaten Nabire", "Kabupaten Nduga", "Kabupaten Paniai", "Kabupaten Pegunungan Bintang",
     "Kabupaten Puncak", "Kabupaten Puncak Jaya", "Kabupaten Sarmi", "Kabupaten Supiori", "Kabupaten Tolikara",
     "Kabupaten Waropen", "Kabupaten Yahukimo", "Kabupaten Yalimo", "Kota Jayapura", "Kabupaten Fakfak",
     "Kabupaten Kaimana", "Kabupaten Manokwari", "Kabupaten Manokwari Selatan", "Kabupaten Maybrat",
     "Kabupaten Pegunungan Arfak", "Kabupaten Raja Ampat", "Kabupaten Sorong", "Kabupaten Sorong Selatan",
     "Kabupaten Tambrauw", "Kabupaten Teluk Bintuni", "Kabupaten Teluk Wondama", "Kota Sorong"]
  end

  def province
    ["Nanggro Aceh Darussalam", "Sumatera Utara", "Sumatera Barat", "Riau", "Kepulauan Riau",
     "Jambi", "Sumatera Selatan", "Bangka Belitung", "Bengkulu", "Lampung", "DKI Jakarta",
     "Jawa Barat", "Banten", "Jawa Tengah", "Daerah Istimewa Yogyakarta", "Jawa Timur", "Bali",
     "Nusa Tenggara Barat", "Nusa Tenggara Timur", "Kalimantan Barat", "Kalimantan Tengah",
     "Kalimantan Selatan", "Kalimantan Timur", "Kalimantan Utara", "Sulawesi Utara", "Sulawesi Barat",
     "Sulawesi Tengah", "Sulawesi Selatan", "Sulawesi Tenggara", "Gorontalo", "Maluku", "Maluku Utara",
     "Papua Barat", "Papua"]
  end

  def university
    ["Universitas Syiah Kuala", "Universitas Malikussaleh", "Politeknik Negeri Lhokseumawe",
      "Universitas Samudra", "Universitas Teuku Umar", "Universitas Sumatera Utara (USU)",
      "Universitas Negeri Medan (Unimed)", "Politeknik Negeri Medan", "Politeknik Negeri Media Kreatif",
      "Universitas Andalasg", "Universitas Negeri Padang", "Politeknik Negeri Padang",
      "Politeknik Pertanian Negeri Payakumbuh", "Sekolah Tinggi Seni Indonesia Padang Panjang (STSI)",
      "Universitas Riau", "Universitas Maritim Raja Ali Haji", "Politeknik Negeri Batam", "Universitas Jambi",
      "Universitas Bengkulu", "Universitas Sriwijaya", "Akademi Komunitas Negeri Banyuasin",
      "Politeknik Negeri Sriwijaya", "Universitas Lampung", "Institut Teknologi Sumatera",
      "Politeknik Negeri Lampung", "Akademi Komunitas Negeri Banyuasin", "Universitas Bangka Belitung",
      "Politeknik Manufaktur Negeri", "Universitas Sultan Ageng Tirtayasa", "Universitas Pendidikan Indonesia",
      "Universitas Indonesia (UI)", "Universitas Negeri Jakarta (UNJ)", "Universitas Pembangunan Nasional Veteran Jakarta (UPN)",
      "Politeknik Negeri Jakarta", "Politeknik Manufaktur Negeri Bandung (Polman)",
      "Universitas Pendidikan Indonesia (UPI)", "Universitas Padjadjaran (UNPAD)",
      "Universitas Siliwangi (UNSIL)", "Institut Pertanian Bogor (IPB)", "Institut Teknologi Bandung (ITB)",
      "Politeknik Negeri Bandung (Polban)", "Sekolah Tinggi Seni Indonesia Bandung",
      "Universitas Singaperbangsa (UNSIKA)", "Universitas Diponegoro", "Universitas Negeri Semarang",
      "Universitas Jenderal Soedirman(UNSOED)", "Universitas Sebelas Maret (UNS)",
      "Universitas Tidar (Untidar)", "Politeknik Negeri Semarang(Polines)",
      "Politeknik Maritim Negeri Indonesia", "Institut Seni Indonesia Surakarta",
      "Universitas Gadjah Mada (UGM)", "Universitas Negeri Yogyakarta (UNY)",
      "Universitas Pembangunan Nasional Veteran Yogyakarta (UPN)", "Institut Seni Indonesia Yogyakarta (ISI)",
      "Akademi Teknologi Kulit Yogyakarta (ATK)", "Institut Teknologi Sepuluh Nopember (ITS)", "Universitas Airlangga (Unair)",
      "Universitas Negeri Surabaya (Unesa)", "Universitas Pembangunan Nasional Veteran Surabaya (UPN)", "Universitas Brawijaya (UB)",
      "Universitas Negeri Malang (UM)", "Universitas Jember (UNEJ)", "Universitas Trunojoyo", "Politeknik Elektronika Negeri Surabaya (PENS)",
      "Politeknik Perkapalan Negeri Surabaya (PPNS)", "Politeknik Negeri Malang (POLINEMA)",
      "Politeknik Negeri Jember (POLIJE)", "Politeknik Negeri Madiun (PNM)",
      "Politeknik Negeri Madura (POLTERA)", "Politeknik Negeri Banyuwangi (Poliwangi)", "Universitas Udayana (Unud)",
      "Universitas Pendidikan Ganesha", "Politeknik Negeri Bali", "Institut Seni Indonesia Denpasar",
      "Universitas Mataram (Unram)", "Universitas Nusa Cendana (Undana)", "Politeknik Negeri Kupang",
      "Politeknik Pertanian Negeri Kupang", "Universitas Timor (Unimor)", "Universitas Tanjungpura",
      "Politeknik Negeri Pontianak", "Politeknik Negeri Sambas", "Politeknik Negeri Ketapang", "IKIP-PGRI Pontianak",
      "Universitas Palangka Raya", "Universitas Lambung Mangkurat", "Politeknik Negeri Banjarmasin",
      "Politeknik Negeri Tanah Laut", "Institut Teknologi Kalimantan (ITK)", "Politeknik Negeri Samarinda",
      "Politeknik Pertanian Negeri Samarinda", "Politeknik Negeri Balikpapan", "Universitas Mulawarman",
      "Universitas Borneo Tarakan", "Universitas Sulawesi Barat", "Universitas Sam Ratulangi", "Universitas Negeri Manado",
      "Politeknik Negeri Manado", "Politeknik Negeri Nusa Utara", "Universitas Negeri Gorontalo",
      "Universitas Tadulako", "Universitas Negeri Makassar (UNM)", "Universitas Hasanuddin (UNHAS)",
      "Politeknik Pertanian Negeri Pangkajene Kepulauan", "Politeknik Negeri Makassar", "Politeknik Teknologi Negeri Bone",
      "Politeknik Kelautan dan Perikanan Negeri Bone", "Universitas 19 November", "Universitas Pattimura", "Politeknik Negeri Ambon",
      "Politeknik Perikanan Negeri Tual", "Universitas Khairun", "Universitas Cendrawasih (Uncen)", "Universitas Musamus Merauke",
      "Universitas Papua", "STKIP Bina Bangsa Getsempena", "Universitas Tjut Nyak Dhien", "Universitas HKBP Nommensen",
      "Universitas Methodist Indonesia", "Universitas Islam Sumatera Utara", "Universitas Katolik Santo Thomas",
      "Universitas Muhammadiyah Bengkulu", "Universitas Muhammadiyah Palembang", "Institut Informatika dan Bisnis Darmajaya",
      "Universitas Muhammadiyah Metro", "Sekolah Tinggi Ilmu Kesehatan Mitra RIA Husada ",
      "Inti College Indonesia", "STIE Kusuma Negara", "Sekolah Tinggi Ilmu Komputer Inti",
      "Universitas Budi Luhur", "Universitas Paramadina", "Universitas Bhayangkara Jakarta Raya",
      "Universitas Persada Indonesia Y.A.I", "Universitas Katolik Indonesia Atma Jaya", "Universitas Binus",
      "Universitas Borobudur", "Universitas Bunda Mulia", "Universitas Gunadarma", "Universitas Kristen Indonesia",
      "Universitas Kristen Krida Wacana", "Universitas Presiden", "Universitas Muhammadiyah Jakarta",
      "Universitas Muhammadiyah Prof. Dr. HAMKA", "Sekolah Tinggi Teknologi Indonesia", "Universitas Pancasila",
      "Universitas Mercubuana", "Universitas Nasional", "Universitas Tarumanagara", "Universitas Trisakti",
      "Universitas Bakrie", "Universitas Pembangunan Jaya", "Universitas Tanri Abeng",
      "Institut Bisnis Nusantara", "Institut Kalbis", "Universitas YARSI", "STIMIK ESQ Business School",
      "Universitas Serang Raya", "Universitas Multimedia Nusantara", "Universitas Pamulang",
      "Universitas Pelita Harapan", "Universitas Gunadarma (Kampus K)", "Universitas Swiss German",
      "Universitas Bina Nusantara (Kampus Alam Sutera)", "Sekolah Tinggi Ilmu Ekonomi Prasetiya Mulya",
      "Perguruan Tinggi Raharja Tangerang", "Universitas Pramita Indonesia", "Universitas Surya Bogor",
      "Universitas Matana", "Universitas Katolik Parahyangan", "Universitas Advent Indonesia",
      "Universitas Islam Nusantara", "Universitas Swadaya Gunung Jati", "Universitas Ibn Khaldun Bogor",
      "Universitas Kristen Maranatha", "Universitas Jenderal Achmad Yani", "Universitas Siliwangi",
      "Universitas Perjuangan Siliwangi", "Universitas Galuh Ciamis", "Universitas Langlangbuana",
      "Institut Teknologi Telkom", "Institut Manajemen Telkom", "Universitas Muhammadiyah Cirebon",
      "Universitas Komputer Indonesia", "Universitas Muhammadiyah Sukabumi", "Universitas Nasional Pasim",
      "Sekolah Tinggi Teknologi Terpadu Nurul Fikri", "Universitas Telkom", "Universitas Muhammadiyah Bandung",
      "Universitas Muhammadiyah Bogor", "Universitas Muhammadiyah Depok",
      "Universitas Muhammadiyah Sukabumi Utara", "Universitas Sultan Mahesa",
      "Universitas Muhammadiyah Tasikmalaya", "Universitas Muhammadiyah Garut",
      "Universitas Muhammadiyah Bekasi", "Universitas Atmajaya Yogyakarta",
      "Universitas Sanata Dharma Yogyakarta", "Universitas Ahmad Dahlan",
      "Institut Sains dan Teknologi AKPRIND", "Universitas Kristen Duta Wacana",
      "Universitas Islam Indonesia", "Universitas Mercu Buana Yogyakarta",
      "Universitas Muhammadiyah Yogyakarta", "Universitas Sarjanawiyata Tamansiswa",
      "Universitas Teknologi Yogyakarta", "STMIK AMIKOM YOGYAKARTA", "Sekolah Tinggi Teknologi Adisutjipto",
      "Universitas Katolik Soegijapranata", "Universitas Peradaban Bumiayu", "Universitas Widya Dharma",
      "Universitas Kristen Satya Wacana", "Universitas Muhammadiyah Magelang", "Universitas Muhammadiyah Purwokerto",
      "Universitas Muhammadiyah Purworejo", "Universitas Muhammadiyah Semarang",
      "Universitas Muhammadiyah Surakarta", "Universitas Muria Kudus", "Universitas Dian Nuswantoro",
      "Universitas Stikubank", "Institut Ilmu Kesehatan Bhakti Wiyata", "Sekolah Tinggi Ilmu Ekonomi Kertanegara Malang",
      "STIKES Katolik St. Vincentius a Paulo Surabaya", "Universitas Islam Malang", "Universitas Muhammadiyah Malang",
      "Universitas Ma Chung", "Universitas Merdeka Malang", "Universitas Muhammadiyah Surabaya",
      "Universitas Muhammadiyah Sidoarjo", "Universitas Muhammadiyah Gresik",
      "Universitas Islam Darul Ulum Lamongan", "Universitas Muhammadiyah Jember", "Universitas Widyagama",
      "Universitas PGRI Banyuwangi", "Universitas Kristen Petra", "Universitas Surabaya",
      "Universitas Ciputra", "Universitas Bojonegoro", "Universitas Katolik Widya Mandala Madiun",
      "Universitas Nahdlatul Ulama Sidoarjo", "Universitas Katolik Widya Mandala Surabaya",
      "Sekolah Tinggi Manajemen Informatika dan Komputer Widya Dharma",
      "Universitas Katolik De La Salle Manado", "Universitas Alkhairaat", "Universitas Fajar",
      "Universitas Muhammadiyah Makassar", "Universitas Panji Sakti"]
  end

  def study_program
    ["Pendidikan Guru Sekolah Dasar (PGSD)", "Bimbingan dan Konseling",
     "Manajemen Pendidikan", "Kurikulum dan Teknologi Pendidikan",
     "Pendidikan Luar Sekolah", "Pendidikan Luar Biasa",
     "Pendidikan Anak Usia Dini (PAUD)", "Administrasi Pendidikan",
     "Teknik Pertambangan dan Perminyakan", "Teknik Metalurgi", "Teknik Sipil",
     "Teknik Lingkungan", "Teknik Kelautan", "Arsitektur", "Teknik Elektro",
     "Geodesi", "Teknik Mesin", "Teknik Industri", "Teknik Informatika",
     "Teknik Perencanaan Wilayah dan Kota", "Teknik Perkapalan",
     "Aeronautika dan Astronautika (Teknik Penerbangan)", "Oseanografi",
     "Teknik Nuklir", "Teknik Geologi", "Ilmu Komputer", "Ilmu Kedokteran",
     "Ilmu Kesehatan Gigi dan Mulut", "Ilmu Gizi", "Kesehatan Masyarakat",
     "Keperawatan", "Kebidanan", "Manajemen Rumah Sakit", "Dokter Hewan",
     "Radiologi", "Farmasi", "Kesehatan Lingkungan", "Ilmu Keolahragaan",
     "Akuntansi", "Manajemen Keuangan", "Manajemen Sumber Daya Manusia",
     "Manajemen Operasi", "Manajemen Pemasaran", "Perpajakan", "Manajemen Perbankan",
     "Ilmu Ekonomi", "Bisnis Internasional", "Manajemen Informatika",
     "Ekonomi Pembangunan", "Entrepreneurship", "Manajemen Bisnis",
     "Agronomi dan Hortikultura", "Mikrobiologi Pertanian", "Agribisnis",
     "Agroteknologi", "Matematika", "Fisika", "Kimia", "Biologi", "Statistika",
     "Astronomi", "Bioteknologi", "Geofisika", "Meteorologi", "Sastra Inggris",
     "Arkeologi", "Sastra Jawa", "Sastra Arab", "Sastra Jepang", "Sastra Indonesia",
     "Sastra Rusia", "Sastra Prancis", "Sastra Korea", "Sastra Belanda",
     "Sastra Jerman", "Sastra Cina", "Pariwisata", "Ilmu Politik", "Kriminologi",
     "Filsafat", "Psikologi", "Hukum", "Sejarah", "Sosiologi", "Jurnalistik",
     "Antropologi", "Hubungan Internasional", "Kesejahteraan Sosial",
     "Ilmu Pemerintahan", "Administrasi Negara", "Administrasi Fiskal",
     "Administrasi Bisnis", "Seni Rupa", "Seni Kriya", "Seni Musik", "Seni Tari",
     "Tata Boga", "Tata Busana", "Tata Rias dan Kecantikan", "Seni Karawitan",
     "Desain Komunikasi Visual (DKV)", "Desain Interior", "Desain Produk",
     "Furniture Design"]
  end
end
