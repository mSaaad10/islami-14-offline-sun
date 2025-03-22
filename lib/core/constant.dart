class SuraDM {
  String suraNameEn;
  String suraNameAr;
  String versesNumber;

  SuraDM({
    required this.suraNameEn,
    required this.suraNameAr,
    required this.versesNumber,
  });
}

class ConstantManager {
  static List<SuraDM> suraList = [
    SuraDM(suraNameEn: "Al-Fatiha", suraNameAr: "الفاتحه", versesNumber: '7'),
    SuraDM(suraNameEn: "Al-Baqarah", suraNameAr: "البقرة", versesNumber: '286'),
    SuraDM(
        suraNameEn: "Aal-E-Imran", suraNameAr: "آل عمران", versesNumber: '200'),
    SuraDM(suraNameEn: "An-Nisa'", suraNameAr: "النساء", versesNumber: '176'),
    SuraDM(
        suraNameEn: "Al-Ma'idah", suraNameAr: "المائدة", versesNumber: '120'),
    SuraDM(suraNameEn: "Al-An'am", suraNameAr: "الأنعام", versesNumber: '165'),
    SuraDM(suraNameEn: "Al-A'raf", suraNameAr: "الأعراف", versesNumber: '206'),
    SuraDM(suraNameEn: "Al-Anfal", suraNameAr: "الأنفال", versesNumber: '75'),
    SuraDM(suraNameEn: "At-Tawbah", suraNameAr: "التوبة", versesNumber: '129'),
    SuraDM(suraNameEn: "Yunus", suraNameAr: "يونس", versesNumber: '109'),
    SuraDM(suraNameEn: "Hud", suraNameAr: "هود", versesNumber: '123'),
    SuraDM(suraNameEn: "Yusuf", suraNameAr: "يوسف", versesNumber: '111'),
    SuraDM(suraNameEn: "Ar-Ra'd", suraNameAr: "الرعد", versesNumber: '43'),
    SuraDM(suraNameEn: "Ibrahim", suraNameAr: "إبراهيم", versesNumber: '52'),
    SuraDM(suraNameEn: "Al-Hijr", suraNameAr: "الحجر", versesNumber: '99'),
    SuraDM(suraNameEn: "An-Nahl", suraNameAr: "النحل", versesNumber: '128'),
    SuraDM(suraNameEn: "Al-Isra", suraNameAr: "الإسراء", versesNumber: '111'),
    SuraDM(suraNameEn: "Al-Kahf", suraNameAr: "الكهف", versesNumber: '110'),
    SuraDM(suraNameEn: "Maryam", suraNameAr: "مريم", versesNumber: '98'),
    SuraDM(suraNameEn: "Ta-Ha", suraNameAr: "طه", versesNumber: '135'),
    SuraDM(
        suraNameEn: "Al-Anbiya", suraNameAr: "الأنبياء", versesNumber: '112'),
    SuraDM(suraNameEn: "Al-Hajj", suraNameAr: "الحج", versesNumber: '78'),
    SuraDM(
        suraNameEn: "Al-Mu'minun", suraNameAr: "المؤمنون", versesNumber: '118'),
    SuraDM(suraNameEn: "An-Nur", suraNameAr: "النّور", versesNumber: '64'),
    SuraDM(suraNameEn: "Al-Furqan", suraNameAr: "الفرقان", versesNumber: '77'),
    SuraDM(
        suraNameEn: "Ash-Shu'ara", suraNameAr: "الشعراء", versesNumber: '227'),
    SuraDM(suraNameEn: "An-Naml", suraNameAr: "النّمل", versesNumber: '93'),
    SuraDM(suraNameEn: "Al-Qasas", suraNameAr: "القصص", versesNumber: '88'),
    SuraDM(
        suraNameEn: "Al-Ankabut", suraNameAr: "العنكبوت", versesNumber: '69'),
    SuraDM(suraNameEn: "Ar-Rum", suraNameAr: "الرّوم", versesNumber: '60'),
    SuraDM(suraNameEn: "Luqman", suraNameAr: "لقمان", versesNumber: '34'),
    SuraDM(suraNameEn: "As-Sajda", suraNameAr: "السجدة", versesNumber: '30'),
    SuraDM(suraNameEn: "Al-Ahzab", suraNameAr: "الأحزاب", versesNumber: '73'),
    SuraDM(suraNameEn: "Saba", suraNameAr: "سبأ", versesNumber: '54'),
    SuraDM(suraNameEn: "Fatir", suraNameAr: "فاطر", versesNumber: '38'),
    SuraDM(suraNameEn: "Ya-Sin", suraNameAr: "يس", versesNumber: '58'),
    SuraDM(suraNameEn: "As-Saffat", suraNameAr: "الصافات", versesNumber: '182'),
    SuraDM(suraNameEn: "Sad", suraNameAr: "ص", versesNumber: '88'),
    SuraDM(suraNameEn: "Az-Zumar", suraNameAr: "الزمر", versesNumber: '75'),
    SuraDM(suraNameEn: "Ghafir", suraNameAr: "غافر", versesNumber: '85'),
    SuraDM(suraNameEn: "Fussilat", suraNameAr: "فصّلت", versesNumber: '54'),
    SuraDM(suraNameEn: "Ash-Shura", suraNameAr: "الشورى", versesNumber: '53'),
    SuraDM(suraNameEn: "Az-Zukhruf", suraNameAr: "الزخرف", versesNumber: '89'),
    SuraDM(suraNameEn: "Ad-Dukhan", suraNameAr: "الدّخان", versesNumber: '59'),
    SuraDM(suraNameEn: "Al-Jathiya", suraNameAr: "الجاثية", versesNumber: '37'),
    SuraDM(suraNameEn: "Al-Ahqaf", suraNameAr: "الأحقاف", versesNumber: '35'),
    SuraDM(suraNameEn: "Muhammad", suraNameAr: "محمد", versesNumber: '38'),
    SuraDM(suraNameEn: "Al-Fath", suraNameAr: "الفتح", versesNumber: '29'),
    SuraDM(suraNameEn: "Al-Hujurat", suraNameAr: "الحجرات", versesNumber: '18'),
    SuraDM(suraNameEn: "Qaf", suraNameAr: "ق", versesNumber: '45'),
    SuraDM(
        suraNameEn: "Adh-Dhariyat", suraNameAr: "الذاريات", versesNumber: '60'),
    SuraDM(suraNameEn: "At-Tur", suraNameAr: "الطور", versesNumber: '49'),
    SuraDM(suraNameEn: "An-Najm", suraNameAr: "النجم", versesNumber: '62'),
    SuraDM(suraNameEn: "Al-Qamar", suraNameAr: "القمر", versesNumber: '55'),
    SuraDM(suraNameEn: "Ar-Rahman", suraNameAr: "الرحمن", versesNumber: '78'),
    SuraDM(suraNameEn: "Al-Waqi'a", suraNameAr: "الواقعة", versesNumber: '96'),
    SuraDM(suraNameEn: "Al-Hadid", suraNameAr: "الحديد", versesNumber: '29'),
    SuraDM(
        suraNameEn: "Al-Mujadila", suraNameAr: "المجادلة", versesNumber: '22'),
    SuraDM(suraNameEn: "Al-Hashr", suraNameAr: "الحشر", versesNumber: '24'),
    SuraDM(
        suraNameEn: "Al-Mumtahina", suraNameAr: "الممتحنة", versesNumber: '13'),
    SuraDM(suraNameEn: "As-Saff", suraNameAr: "الصف", versesNumber: '14'),
    SuraDM(suraNameEn: "Al-Jumu'a", suraNameAr: "الجمعة", versesNumber: '11'),
    SuraDM(
        suraNameEn: "Al-Munafiqun",
        suraNameAr: "المنافقون",
        versesNumber: '11'),
    SuraDM(
        suraNameEn: "At-Taghabun", suraNameAr: "التغابن", versesNumber: '18'),
    SuraDM(suraNameEn: "At-Talaq", suraNameAr: "الطلاق", versesNumber: '12'),
    SuraDM(suraNameEn: "At-Tahrim", suraNameAr: "التحريم", versesNumber: '12'),
    SuraDM(suraNameEn: "Al-Mulk", suraNameAr: "الملك", versesNumber: '30'),
    SuraDM(suraNameEn: "Al-Qalam", suraNameAr: "القلم", versesNumber: '52'),
    SuraDM(suraNameEn: "Al-Haqqah", suraNameAr: "الحاقة", versesNumber: '54'),
    SuraDM(suraNameEn: "Al-Ma'arij", suraNameAr: "المعارج", versesNumber: '44'),
    SuraDM(suraNameEn: "Nuh", suraNameAr: "نوح", versesNumber: '28'),
    SuraDM(suraNameEn: "Al-Jinn", suraNameAr: "الجن", versesNumber: '20'),
    SuraDM(
        suraNameEn: "Al-Muzzammil", suraNameAr: "المزّمّل", versesNumber: '20'),
    SuraDM(
        suraNameEn: "Al-Muddathir", suraNameAr: "المدّثر", versesNumber: '56'),
    SuraDM(suraNameEn: "Al-Qiyamah", suraNameAr: "القيامة", versesNumber: '40'),
    SuraDM(suraNameEn: "Al-Insan", suraNameAr: "الإنسان", versesNumber: '31'),
    SuraDM(
        suraNameEn: "Al-Mursalat", suraNameAr: "المرسلات", versesNumber: '50'),
    SuraDM(suraNameEn: "An-Naba'", suraNameAr: "النبأ", versesNumber: '40'),
    SuraDM(
        suraNameEn: "An-Nazi'at", suraNameAr: "النازعات", versesNumber: '46'),
    SuraDM(suraNameEn: "Abasa", suraNameAr: "عبس", versesNumber: '42'),
    SuraDM(suraNameEn: "At-Takwir", suraNameAr: "التكوير", versesNumber: '29'),
    SuraDM(
        suraNameEn: "Al-Infitar", suraNameAr: "الإنفطار", versesNumber: '19'),
    SuraDM(
        suraNameEn: "Al-Mutaffifin",
        suraNameAr: "المطفّفين",
        versesNumber: '36'),
    SuraDM(
        suraNameEn: "Al-Inshiqaq", suraNameAr: "الإنشقاق", versesNumber: '25'),
    SuraDM(suraNameEn: "Al-Buruj", suraNameAr: "البروج", versesNumber: '22'),
    SuraDM(suraNameEn: "At-Tariq", suraNameAr: "الطارق", versesNumber: '17'),
    SuraDM(suraNameEn: "Al-A'la", suraNameAr: "الأعلى", versesNumber: '19'),
    SuraDM(
        suraNameEn: "Al-Ghashiyah", suraNameAr: "الغاشية", versesNumber: '26'),
    SuraDM(suraNameEn: "Al-Fajr", suraNameAr: "الفجر", versesNumber: '30'),
    SuraDM(suraNameEn: "Al-Balad", suraNameAr: "البلد", versesNumber: '20'),
    SuraDM(suraNameEn: "Ash-Shams", suraNameAr: "الشمس", versesNumber: '15'),
    SuraDM(suraNameEn: "Al-Lail", suraNameAr: "الليل", versesNumber: '21'),
    SuraDM(suraNameEn: "Ad-Duha", suraNameAr: "الضحى", versesNumber: '11'),
    SuraDM(suraNameEn: "Ash-Sharh", suraNameAr: "الشرح", versesNumber: '8'),
    SuraDM(suraNameEn: "At-Tin", suraNameAr: "التين", versesNumber: '8'),
    SuraDM(suraNameEn: "Al-Alaq", suraNameAr: "العلق", versesNumber: '19'),
    SuraDM(suraNameEn: "Al-Qadr", suraNameAr: "القدر", versesNumber: '5'),
    SuraDM(suraNameEn: "Al-Bayyina", suraNameAr: "البينة", versesNumber: '8'),
    SuraDM(suraNameEn: "Az-Zalzalah", suraNameAr: "الزلزلة", versesNumber: '8'),
    SuraDM(suraNameEn: "Al-Adiyat", suraNameAr: "العاديات", versesNumber: '11'),
    SuraDM(suraNameEn: "Al-Qari'a", suraNameAr: "القارعة", versesNumber: '11'),
    SuraDM(suraNameEn: "At-Takathur", suraNameAr: "التكاثر", versesNumber: '8'),
    SuraDM(suraNameEn: "Al-Asr", suraNameAr: "العصر", versesNumber: '3'),
    SuraDM(suraNameEn: "Al-Humazah", suraNameAr: "الهمزة", versesNumber: '9'),
    SuraDM(suraNameEn: "Al-Fil", suraNameAr: "الفيل", versesNumber: '5'),
    SuraDM(suraNameEn: "Quraish", suraNameAr: "قريش", versesNumber: '4'),
    SuraDM(suraNameEn: "Al-Ma'un", suraNameAr: "الماعون", versesNumber: '7'),
    SuraDM(suraNameEn: "Al-Kawthar", suraNameAr: "الكوثر", versesNumber: '3'),
    SuraDM(suraNameEn: "Al-Kafirun", suraNameAr: "الكافرون", versesNumber: '6'),
    SuraDM(suraNameEn: "An-Nasr", suraNameAr: "النصر", versesNumber: '3'),
    SuraDM(suraNameEn: "Al-Masad", suraNameAr: "المسد", versesNumber: '5'),
    SuraDM(suraNameEn: "Al-Ikhlas", suraNameAr: "الإخلاص", versesNumber: '4'),
    SuraDM(suraNameEn: "Al-Falaq", suraNameAr: "الفلق", versesNumber: '5'),
    SuraDM(suraNameEn: "An-Nas", suraNameAr: "الناس", versesNumber: '6'),
  ];
}
