class SuraDM {
  String suraNameEn;
  String suraNameAr;
  String versesNumber;
  String suraIndex;

  SuraDM(
      {required this.suraNameEn,
      required this.suraNameAr,
      required this.versesNumber,
      required this.suraIndex});
}

class ConstantManager {
  /// FireStore
  static List<SuraDM> suraList = [
    SuraDM(
        suraNameEn: "Al-Fatiha",
        suraNameAr: "الفاتحه",
        versesNumber: '7',
        suraIndex: '1'),
    SuraDM(
        suraNameEn: "Al-Baqarah",
        suraNameAr: "البقرة",
        versesNumber: '286',
        suraIndex: '2'),
    SuraDM(
        suraNameEn: "Aal-E-Imran",
        suraNameAr: "آل عمران",
        versesNumber: '200',
        suraIndex: '3'),
    SuraDM(
        suraNameEn: "An-Nisa'",
        suraNameAr: "النساء",
        versesNumber: '176',
        suraIndex: '4'),
    SuraDM(
        suraNameEn: "Al-Ma'idah",
        suraNameAr: "المائدة",
        versesNumber: '120',
        suraIndex: '5'),
    SuraDM(
        suraNameEn: "Al-An'am",
        suraNameAr: "الأنعام",
        versesNumber: '165',
        suraIndex: '6'),
    SuraDM(
        suraNameEn: "Al-A'raf",
        suraNameAr: "الأعراف",
        versesNumber: '206',
        suraIndex: '7'),
    SuraDM(
        suraNameEn: "Al-Anfal",
        suraNameAr: "الأنفال",
        versesNumber: '75',
        suraIndex: '8'),
    SuraDM(
        suraNameEn: "At-Tawbah",
        suraNameAr: "التوبة",
        versesNumber: '129',
        suraIndex: '9'),
    SuraDM(
        suraNameEn: "Yunus",
        suraNameAr: "يونس",
        versesNumber: '109',
        suraIndex: '10'),
    SuraDM(
        suraNameEn: "Hud",
        suraNameAr: "هود",
        versesNumber: '123',
        suraIndex: '11'),
    SuraDM(
        suraNameEn: "Yusuf",
        suraNameAr: "يوسف",
        versesNumber: '111',
        suraIndex: '12'),
    SuraDM(
        suraNameEn: "Ar-Ra'd",
        suraNameAr: "الرعد",
        versesNumber: '43',
        suraIndex: '13'),
    SuraDM(
        suraNameEn: "Ibrahim",
        suraNameAr: "إبراهيم",
        versesNumber: '52',
        suraIndex: '14'),
    SuraDM(
        suraNameEn: "Al-Hijr",
        suraNameAr: "الحجر",
        versesNumber: '99',
        suraIndex: '15'),
    SuraDM(
        suraNameEn: "An-Nahl",
        suraNameAr: "النحل",
        versesNumber: '128',
        suraIndex: '16'),
    SuraDM(
        suraNameEn: "Al-Isra",
        suraNameAr: "الإسراء",
        versesNumber: '111',
        suraIndex: '17'),
    SuraDM(
        suraNameEn: "Al-Kahf",
        suraNameAr: "الكهف",
        versesNumber: '110',
        suraIndex: '18'),
    SuraDM(
        suraNameEn: "Maryam",
        suraNameAr: "مريم",
        versesNumber: '98',
        suraIndex: '19'),
    SuraDM(
        suraNameEn: "Ta-Ha",
        suraNameAr: "طه",
        versesNumber: '135',
        suraIndex: '20'),
    SuraDM(
        suraNameEn: "Al-Anbiya",
        suraNameAr: "الأنبياء",
        versesNumber: '112',
        suraIndex: '21'),
    SuraDM(
        suraNameEn: "Al-Hajj",
        suraNameAr: "الحج",
        versesNumber: '78',
        suraIndex: '22'),
    SuraDM(
        suraNameEn: "Al-Mu'minun",
        suraNameAr: "المؤمنون",
        versesNumber: '118',
        suraIndex: '23'),
    SuraDM(
        suraNameEn: "An-Nur",
        suraNameAr: "النّور",
        versesNumber: '64',
        suraIndex: '24'),
    SuraDM(
        suraNameEn: "Al-Furqan",
        suraNameAr: "الفرقان",
        versesNumber: '77',
        suraIndex: '25'),
    SuraDM(
        suraNameEn: "Ash-Shu'ara",
        suraNameAr: "الشعراء",
        versesNumber: '227',
        suraIndex: '26'),
    SuraDM(
        suraNameEn: "An-Naml",
        suraNameAr: "النّمل",
        versesNumber: '93',
        suraIndex: '27'),
    SuraDM(
        suraNameEn: "Al-Qasas",
        suraNameAr: "القصص",
        versesNumber: '88',
        suraIndex: '28'),
    SuraDM(
        suraNameEn: "Al-Ankabut",
        suraNameAr: "العنكبوت",
        versesNumber: '69',
        suraIndex: '29'),
    SuraDM(
        suraNameEn: "Ar-Rum",
        suraNameAr: "الرّوم",
        versesNumber: '60',
        suraIndex: '30'),
    SuraDM(
        suraNameEn: "Luqman",
        suraNameAr: "لقمان",
        versesNumber: '34',
        suraIndex: '31'),
    SuraDM(
        suraNameEn: "As-Sajda",
        suraNameAr: "السجدة",
        versesNumber: '30',
        suraIndex: '32'),
    SuraDM(
        suraNameEn: "Al-Ahzab",
        suraNameAr: "الأحزاب",
        versesNumber: '73',
        suraIndex: '33'),
    SuraDM(
        suraNameEn: "Saba",
        suraNameAr: "سبأ",
        versesNumber: '54',
        suraIndex: '34'),
    SuraDM(
        suraNameEn: "Fatir",
        suraNameAr: "فاطر",
        versesNumber: '38',
        suraIndex: '35'),
    SuraDM(
        suraNameEn: "Ya-Sin",
        suraNameAr: "يس",
        versesNumber: '58',
        suraIndex: '36'),
    SuraDM(
        suraNameEn: "As-Saffat",
        suraNameAr: "الصافات",
        versesNumber: '182',
        suraIndex: '37'),
    SuraDM(
        suraNameEn: "Sad",
        suraNameAr: "ص",
        versesNumber: '88',
        suraIndex: '38'),
    SuraDM(
        suraNameEn: "Az-Zumar",
        suraNameAr: "الزمر",
        versesNumber: '75',
        suraIndex: '39'),
    SuraDM(
        suraNameEn: "Ghafir",
        suraNameAr: "غافر",
        versesNumber: '85',
        suraIndex: '40'),
    SuraDM(
        suraNameEn: "Fussilat",
        suraNameAr: "فصّلت",
        versesNumber: '54',
        suraIndex: '41'),
    SuraDM(
        suraNameEn: "Ash-Shura",
        suraNameAr: "الشورى",
        versesNumber: '53',
        suraIndex: '42'),
    SuraDM(
        suraNameEn: "Az-Zukhruf",
        suraNameAr: "الزخرف",
        versesNumber: '89',
        suraIndex: '43'),
    SuraDM(
        suraNameEn: "Ad-Dukhan",
        suraNameAr: "الدّخان",
        versesNumber: '59',
        suraIndex: '44'),
    SuraDM(
        suraNameEn: "Al-Jathiya",
        suraNameAr: "الجاثية",
        versesNumber: '37',
        suraIndex: '45'),
    SuraDM(
        suraNameEn: "Al-Ahqaf",
        suraNameAr: "الأحقاف",
        versesNumber: '35',
        suraIndex: '46'),
    SuraDM(
        suraNameEn: "Muhammad",
        suraNameAr: "محمد",
        versesNumber: '38',
        suraIndex: '47'),
    SuraDM(
        suraNameEn: "Al-Fath",
        suraNameAr: "الفتح",
        versesNumber: '29',
        suraIndex: '48'),
    SuraDM(
        suraNameEn: "Al-Hujurat",
        suraNameAr: "الحجرات",
        versesNumber: '18',
        suraIndex: '49'),
    SuraDM(
        suraNameEn: "Qaf",
        suraNameAr: "ق",
        versesNumber: '45',
        suraIndex: '50'),
    SuraDM(
        suraNameEn: "Adh-Dhariyat",
        suraNameAr: "الذاريات",
        versesNumber: '60',
        suraIndex: '51'),
    SuraDM(
        suraNameEn: "At-Tur",
        suraNameAr: "الطور",
        versesNumber: '49',
        suraIndex: '52'),
    SuraDM(
        suraNameEn: "An-Najm",
        suraNameAr: "النجم",
        versesNumber: '62',
        suraIndex: '53'),
    SuraDM(
        suraNameEn: "Al-Qamar",
        suraNameAr: "القمر",
        versesNumber: '55',
        suraIndex: '54'),
    SuraDM(
        suraNameEn: "Ar-Rahman",
        suraNameAr: "الرحمن",
        versesNumber: '78',
        suraIndex: '55'),
    SuraDM(
        suraNameEn: "Al-Waqi'a",
        suraNameAr: "الواقعة",
        versesNumber: '96',
        suraIndex: '56'),
    SuraDM(
        suraNameEn: "Al-Hadid",
        suraNameAr: "الحديد",
        versesNumber: '29',
        suraIndex: '57'),
    SuraDM(
        suraNameEn: "Al-Mujadila",
        suraNameAr: "المجادلة",
        versesNumber: '22',
        suraIndex: '58'),
    SuraDM(
        suraNameEn: "Al-Hashr",
        suraNameAr: "الحشر",
        versesNumber: '24',
        suraIndex: '59'),
    SuraDM(
        suraNameEn: "Al-Mumtahina",
        suraNameAr: "الممتحنة",
        versesNumber: '13',
        suraIndex: '60'),
    SuraDM(
        suraNameEn: "As-Saff",
        suraNameAr: "الصف",
        versesNumber: '14',
        suraIndex: '61'),
    SuraDM(
        suraNameEn: "Al-Jumu'a",
        suraNameAr: "الجمعة",
        versesNumber: '11',
        suraIndex: '62'),
    SuraDM(
        suraNameEn: "Al-Munafiqun",
        suraNameAr: "المنافقون",
        versesNumber: '11',
        suraIndex: '63'),
    SuraDM(
        suraNameEn: "At-Taghabun",
        suraNameAr: "التغابن",
        versesNumber: '18',
        suraIndex: '64'),
    SuraDM(
        suraNameEn: "At-Talaq",
        suraNameAr: "الطلاق",
        versesNumber: '12',
        suraIndex: '65'),
    SuraDM(
        suraNameEn: "At-Tahrim",
        suraNameAr: "التحريم",
        versesNumber: '12',
        suraIndex: '66'),
    SuraDM(
        suraNameEn: "Al-Mulk",
        suraNameAr: "الملك",
        versesNumber: '30',
        suraIndex: '67'),
    SuraDM(
        suraNameEn: "Al-Qalam",
        suraNameAr: "القلم",
        versesNumber: '52',
        suraIndex: '68'),
    SuraDM(
        suraNameEn: "Al-Haqqah",
        suraNameAr: "الحاقة",
        versesNumber: '54',
        suraIndex: '69'),
    SuraDM(
        suraNameEn: "Al-Ma'arij",
        suraNameAr: "المعارج",
        versesNumber: '44',
        suraIndex: '70'),
    SuraDM(
        suraNameEn: "Nuh",
        suraNameAr: "نوح",
        versesNumber: '28',
        suraIndex: '71'),
    SuraDM(
        suraNameEn: "Al-Jinn",
        suraNameAr: "الجن",
        versesNumber: '20',
        suraIndex: '72'),
    SuraDM(
        suraNameEn: "Al-Muzzammil",
        suraNameAr: "المزّمّل",
        versesNumber: '20',
        suraIndex: '73'),
    SuraDM(
        suraNameEn: "Al-Muddathir",
        suraNameAr: "المدّثر",
        versesNumber: '56',
        suraIndex: '74'),
    SuraDM(
        suraNameEn: "Al-Qiyamah",
        suraNameAr: "القيامة",
        versesNumber: '40',
        suraIndex: '75'),
    SuraDM(
        suraNameEn: "Al-Insan",
        suraNameAr: "الإنسان",
        versesNumber: '31',
        suraIndex: '76'),
    SuraDM(
        suraNameEn: "Al-Mursalat",
        suraNameAr: "المرسلات",
        versesNumber: '50',
        suraIndex: '77'),
    SuraDM(
        suraNameEn: "An-Naba'",
        suraNameAr: "النبأ",
        versesNumber: '40',
        suraIndex: '78'),
    SuraDM(
        suraNameEn: "An-Nazi'at",
        suraNameAr: "النازعات",
        versesNumber: '46',
        suraIndex: '79'),
    SuraDM(
        suraNameEn: "Abasa",
        suraNameAr: "عبس",
        versesNumber: '42',
        suraIndex: '80'),
    SuraDM(
        suraNameEn: "At-Takwir",
        suraNameAr: "التكوير",
        versesNumber: '29',
        suraIndex: '81'),
    SuraDM(
        suraNameEn: "Al-Infitar",
        suraNameAr: "الإنفطار",
        versesNumber: '19',
        suraIndex: '82'),
    SuraDM(
        suraNameEn: "Al-Mutaffifin",
        suraNameAr: "المطفّفين",
        versesNumber: '36',
        suraIndex: '83'),
    SuraDM(
        suraNameEn: "Al-Inshiqaq",
        suraNameAr: "الإنشقاق",
        versesNumber: '25',
        suraIndex: '84'),
    SuraDM(
        suraNameEn: "Al-Buruj",
        suraNameAr: "البروج",
        versesNumber: '22',
        suraIndex: '85'),
    SuraDM(
        suraNameEn: "At-Tariq",
        suraNameAr: "الطارق",
        versesNumber: '17',
        suraIndex: '86'),
    SuraDM(
        suraNameEn: "Al-A'la",
        suraNameAr: "الأعلى",
        versesNumber: '19',
        suraIndex: '87'),
    SuraDM(
        suraNameEn: "Al-Ghashiyah",
        suraNameAr: "الغاشية",
        versesNumber: '26',
        suraIndex: '88'),
    SuraDM(
        suraNameEn: "Al-Fajr",
        suraNameAr: "الفجر",
        versesNumber: '30',
        suraIndex: '89'),
    SuraDM(
        suraNameEn: "Al-Balad",
        suraNameAr: "البلد",
        versesNumber: '20',
        suraIndex: '90'),
    SuraDM(
        suraNameEn: "Ash-Shams",
        suraNameAr: "الشمس",
        versesNumber: '15',
        suraIndex: '91'),
    SuraDM(
        suraNameEn: "Al-Lail",
        suraNameAr: "الليل",
        versesNumber: '21',
        suraIndex: '92'),
    SuraDM(
        suraNameEn: "Ad-Duha",
        suraNameAr: "الضحى",
        versesNumber: '11',
        suraIndex: '93'),
    SuraDM(
        suraNameEn: "Ash-Sharh",
        suraNameAr: "الشرح",
        versesNumber: '8',
        suraIndex: '94'),
    SuraDM(
        suraNameEn: "At-Tin",
        suraNameAr: "التين",
        versesNumber: '8',
        suraIndex: '95'),
    SuraDM(
        suraNameEn: "Al-Alaq",
        suraNameAr: "العلق",
        versesNumber: '19',
        suraIndex: '96'),
    SuraDM(
        suraNameEn: "Al-Qadr",
        suraNameAr: "القدر",
        versesNumber: '5',
        suraIndex: '97'),
    SuraDM(
        suraNameEn: "Al-Bayyina",
        suraNameAr: "البينة",
        versesNumber: '8',
        suraIndex: '98'),
    SuraDM(
        suraNameEn: "Az-Zalzalah",
        suraNameAr: "الزلزلة",
        versesNumber: '8',
        suraIndex: '99'),
    SuraDM(
        suraNameEn: "Al-Adiyat",
        suraNameAr: "العاديات",
        versesNumber: '11',
        suraIndex: '100'),
    SuraDM(
        suraNameEn: "Al-Qari'a",
        suraNameAr: "القارعة",
        versesNumber: '11',
        suraIndex: '101'),
    SuraDM(
        suraNameEn: "At-Takathur",
        suraNameAr: "التكاثر",
        versesNumber: '8',
        suraIndex: '102'),
    SuraDM(
        suraNameEn: "Al-Asr",
        suraNameAr: "العصر",
        versesNumber: '3',
        suraIndex: '103'),
    SuraDM(
        suraNameEn: "Al-Humazah",
        suraNameAr: "الهمزة",
        versesNumber: '9',
        suraIndex: '104'),
    SuraDM(
        suraNameEn: "Al-Fil",
        suraNameAr: "الفيل",
        versesNumber: '5',
        suraIndex: '105'),
    SuraDM(
        suraNameEn: "Quraish",
        suraNameAr: "قريش",
        versesNumber: '4',
        suraIndex: "106"),
    SuraDM(
        suraNameEn: "Al-Ma'un",
        suraNameAr: "الماعون",
        versesNumber: '7',
        suraIndex: "107"),
    SuraDM(
        suraNameEn: "Al-Kawthar",
        suraNameAr: "الكوثر",
        versesNumber: '3',
        suraIndex: "108"),
    SuraDM(
        suraNameEn: "Al-Kafirun",
        suraNameAr: "الكافرون",
        versesNumber: '6',
        suraIndex: "109"),
    SuraDM(
        suraNameEn: "An-Nasr",
        suraNameAr: "النصر",
        versesNumber: '3',
        suraIndex: "110"),
    SuraDM(
        suraNameEn: "Al-Masad",
        suraNameAr: "المسد",
        versesNumber: '5',
        suraIndex: "111"),
    SuraDM(
        suraNameEn: "Al-Ikhlas",
        suraNameAr: "الإخلاص",
        versesNumber: '4',
        suraIndex: "112"),
    SuraDM(
        suraNameEn: "Al-Falaq",
        suraNameAr: "الفلق",
        versesNumber: '5',
        suraIndex: "113"),
    SuraDM(
        suraNameEn: "An-Nas",
        suraNameAr: "الناس",
        versesNumber: '6',
        suraIndex: "114"),
  ];
}
