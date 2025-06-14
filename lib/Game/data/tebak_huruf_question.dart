import '../models/question_model.dart'; // Sesuaikan path jika berbeda

//Level 1
final List<HijaiyahQuestion> tebakHurufQuestions = [
  // 1. Ba
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ba", // Sesuai "Teks: ba"
    options: ["ب", "ت", "ث", "ن"],
    correctAnswer: "ب",
    notes: "Keluar dari dua bibir dengan merapatkannya.",
    correctImagePath: "assets/images/hijaiyah/ba.png",
  ),
  // 2. Ta
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ta", // Sesuai "Teks: ta"
    options: ["ت", "ب", "ث", "ك"],
    correctAnswer: "ت",
    notes: "Keluar dari punggung ujung lidah menyentuh pangkal dua gigi seri atas.",
    correctImagePath: "assets/images/hijaiyah/ta.png",
  ),
  // 3. Tsa
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "tsa", // Sesuai "Teks: tsa"
    options: ["ث", "ت", "س", "ش"],
    correctAnswer: "ث",
    notes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
    correctImagePath: "assets/images/hijaiyah/tsa.png",
  ),
  // 4. Jim
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "jim", // Sesuai "Teks: jim"
    options: ["ج", "ح", "خ", "ي"],
    correctAnswer: "ج",
    notes: "Keluar dari tengah lidah bersama dengan langit langit atas.",
    correctImagePath: "assets/images/hijaiyah/jim.png",
  ),
  // 5. Kha
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "kha", // Sesuai "Teks: kha"
    options: ["خ", "ح", "ج", "ق"],
    correctAnswer: "خ",
    notes: "Keluar dari tenggorokan atas.",
    correctImagePath: "assets/images/hijaiyah/kha.png",
  ),
  // 6. Dal
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "dal", // Sesuai "Teks: dal"
    options: ["د", "ذ", "ر", "ز"],
    correctAnswer: "د",
    notes: "Keluar dari punggung ujung lidah menyentuh pangkal dua gigi seri atas.",
    correctImagePath: "assets/images/hijaiyah/dal.png",
  ),
  // 7. Zai
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "zai", // Sesuai "Teks: zai"
    options: ["ز", "ر", "ذ", "ض"],
    correctAnswer: "ز",
    notes: "Terletak pada akhir ujung lidah yang bertemu dengan dinding bagian dalam dari gigi seri bawah.",
    correctImagePath: "assets/images/hijaiyah/zai.png",
  ),
  // 8. Sin
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "sin", // Sesuai "Teks: sin"
    options: ["س", "ص", "ش", "ث"],
    correctAnswer: "س",
    notes: "Keluar dari ujung lidah diletakkan pada dinding bagian dalam dua gigi seri bawah sehingga suara keluar melalui celah antara gigi atas dan bawah.",
    correctImagePath: "assets/images/hijaiyah/sin.png",
  ),
  // 9. Qof
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "qof", // Sesuai "Teks: qof"
    options: ["ق", "ك", "غ", "ف"],
    correctAnswer: "ق",
    notes: "Keluar dari pangkal lidah menyentuh langit langit atas bagian daging.",
    correctImagePath: "assets/images/hijaiyah/qof.png",
  ),
  // 10. Nun
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "nun", // Sesuai "Teks: nun"
    options: ["ن", "م", "ل", "و"],
    correctAnswer: "ن",
    notes: "Keluar dari dua tepi ujung lidah menyentuh ujung langit langit atas.",
    correctImagePath: "assets/images/hijaiyah/nun.png",
  ),
  // 11. Huruf: ر
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ر", // Sesuai "Huruf: ر"
    options: ["ro", "za", "dal", "dzal"],
    correctAnswer: "ro",
    notes: "Terletak pada ujung lidah yang bertemu dengan apa yang sejajar dengannya dari gusi gigi atas sedikit masuk ke punggung lidah dekat dengan makhraj huruf nun.",
    correctImagePath: "assets/images/hijaiyah/ro.png",
  ),
  // 12. Huruf: ح
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ح", // Sesuai "Huruf: ح"
    options: ["ha", "kha", "ja", "ain"], // Menggunakan 'ain' agar konsisten dengan opsi lain jika ada
    correctAnswer: "ha",
    notes: "Terletak pada tengah tenggorokan.",
    correctImagePath: "assets/images/hijaiyah/ha.png",
  ),
  // 13. Huruf: ذ
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ذ", // Sesuai "Huruf: ذ"
    options: ["dza", "za", "dal", "tho"],
    correctAnswer: "dza",
    notes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
    correctImagePath: "assets/images/hijaiyah/dza.png",
  ),
  // 14. Huruf: ش
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ش", // Sesuai "Huruf: ش"
    options: ["sa", "sha", "za", "ja"],
    correctAnswer: "sha",
    notes: "Keluar dari tengah lidah bersama langit langit atas.",
    correctImagePath: "assets/images/hijaiyah/sha.png", // atau shin.png
  ),
  // 15. Huruf: ص
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ص", // Sesuai "Huruf: ص"
    options: ["shad", "sad", "sin", "tsa"],
    correctAnswer: "shad",
    notes: "Keluar dari ujung lidah diletakkan pada dinding bagian dalam dua gigi seri bawah sehingga suara keluar melalui celah antara gigi atas dan bawah.",
    correctImagePath: "assets/images/hijaiyah/shad.png",
  ),
  // 16. Huruf: ك
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ك", // Sesuai "Huruf: ك"
    options: ["kaf", "qaf", "fa", "kha"],
    correctAnswer: "kaf",
    // Catatan pengguna: "Keluar dari pangkal lidah menyentuh langit langit atas bagian daging."
    // Ini lebih mirip makhraj Qaf. Makhraj Kaf umumnya sedikit lebih ke depan.
    // Saya akan menggunakan notes dari Anda, tapi Anda mungkin ingin merevisinya.
    // Notes yang lebih umum untuk Kaf: "Pangkal lidah (setelah makhraj Qaf), menyentuh langit-langit antara bagian keras dan lunak."
    notes: "Keluar dari pangkal lidah menyentuh langit langit atas bagian daging.",
    correctImagePath: "assets/images/hijaiyah/kaf.png",
  ),
  // 17. Huruf: ف
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ف", // Sesuai "Huruf: ف"
    options: ["fa", "qaf", "kaf", "tsa"],
    correctAnswer: "fa",
    notes: "Terletak pada pertemuan antara ujung gigi seri atas yang bertemu dengan perut bibir bawah.",
    correctImagePath: "assets/images/hijaiyah/fa.png",
  ),
  // 18. Huruf: م
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "م", // Sesuai "Huruf: م"
    options: ["mim", "nun", "lam", "ain"],
    correctAnswer: "mim",
    notes: "Terletak pada pertemuan antara 2 bibir yang disertai dengan ghunnah.",
    correctImagePath: "assets/images/hijaiyah/mim.png",
  ),
  // 19. Huruf: ي
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "ي", // Sesuai "Huruf: ي"
    options: ["ya", "ta", "ba", "tha"],
    correctAnswer: "ya",
    notes: "Keluar dari tengah lidah bersama langit langit atas.",
    correctImagePath: "assets/images/hijaiyah/ya.png",
  ),
  // 20. Huruf: غ
  HijaiyahQuestion(
    text: 'Pilih huruf hijaiyah\ndari bacaan:',
    word: "غ", // Sesuai "Huruf: غ"
    options: ["ghain", "ain", "ha", "qaf"],
    correctAnswer: "ghain",
    notes: "Terletak pada atas tenggorokan.",
    correctImagePath: "assets/images/hijaiyah/ghain.png",
  ),
];


//Level 2
final List<HijaiyahQuestion2> tebakHurufQuestions2 = [
  // 1. Soal: Huruf "ج"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ج",
    options: ["kha", "ja", "ha", "tsa"],
    correctAnswer: "ja",
    feedbackImagePath: "assets/images/hijaiyah/jim.png",
    feedbackNotes: "Keluar dari tengah lidah bersama dengan langit-langit atas.",
  ),

  // 2. Soal: Huruf "ص"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ص",
    options: ["sin", "shad", "tha", "ro"],
    correctAnswer: "shad",
    feedbackImagePath: "assets/images/hijaiyah/shad.png",
    feedbackNotes: "Keluar dari ujung lidah diletakkan pada dinding bagian dalam dua gigi seri bawah sehingga suara keluar melalui celah antara gigi atas dan bawah.",
  ),

  // 3. Soal: Huruf "خ"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "خ",
    options: ["kha", "ha", "ain", "qaf"],
    correctAnswer: "kha",
    feedbackImagePath: "assets/images/hijaiyah/kha.png",
    feedbackNotes: "Keluar dari tenggorokan atas.",
  ),

  // 4. Soal: Huruf "ث"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ث",
    options: ["ta", "tsa", "dza", "sa"],
    correctAnswer: "tsa",
    feedbackImagePath: "assets/images/hijaiyah/tsa.png",
    feedbackNotes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
  ),

  // 5. Soal: Huruf "ذ"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ذ",
    options: ["za", "da", "dza", "tho"],
    correctAnswer: "dza",
    feedbackImagePath: "assets/images/hijaiyah/dzal.png",
    feedbackNotes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
  ),

  // 6. Soal: Huruf "ض"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ض",
    options: ["tho", "shad", "dhod", "ro"],
    correctAnswer: "dhod",
    feedbackImagePath: "assets/images/hijaiyah/dhod.png",
    feedbackNotes: "Keluar dari dua sisi lidah atau salah satunya menyentuh dinding bagian dalam gigi geraham atas.",
  ),

  // 7. Soal: Huruf "ع"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ع",
    options: ["ain", "ghain", "ha", "ya"],
    correctAnswer: "ain",
    feedbackImagePath: "assets/images/hijaiyah/ain.png",
    feedbackNotes: "Terletak pada tengah-tengah tenggorokan.",
  ),

  // 8. Soal: Huruf "غ"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "غ",
    options: ["ain", "ghain", "kha", "qaf"],
    correctAnswer: "ghain",
    feedbackImagePath: "assets/images/hijaiyah/ghain.png",
    feedbackNotes: "Terletak pada atas tenggorokan.",
  ),

  // 9. Soal: Huruf "ق"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ق",
    options: ["kaf", "qof", "fa", "kha"],
    correctAnswer: "qof",
    feedbackImagePath: "assets/images/hijaiyah/qof.png",
    feedbackNotes: "Keluar dari pangkal lidah menyentuh langit-langit atas bagian daging.",
  ),

  // 10. Soal: Huruf "ر"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ر",
    options: ["ra", "za", "dal", "dzho"],
    correctAnswer: "ra",
    feedbackImagePath: "assets/images/hijaiyah/ro.png",
    feedbackNotes: "Terletak pada ujung lidah yang bertemu dengan apa yang sejajar dengannya dari gusi gigi atas sedikit masuk ke punggung lidah dekat dengan makhraj huruf nun.",
  ),

  // ======================================================================
  // TIPE 2: DENGAR AUDIO & LIHAT GAMBAR/NOTES, PILIH TEKS (Soal 11-20)
  // - Soal: Tombol speaker utama, gambar, dan notes ditampilkan.
  // - Opsi: Kotak berisi teks Arab.
  // - Menjawab: Langsung tekan kotak jawaban (1x tap).
  // - Feedback Benar: Hanya teks ucapan selamat.
  // ======================================================================

  // 11. Soal: Audio "fa"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ف", // Audio soal utama
    questionImagePath: "assets/images/hijaiyah/fa.png", // Gambar soal
    questionNotes: "Terletak pada pertemuan antara ujung gigi seri atas yang bertemu dengan perut bibir bawah.", // Catatan soal
    options: ["ف", "ق", "ك", "ت"],
    correctAnswer: "ف",
  ),

  // 12. Soal: Audio "ba"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ب",
    questionImagePath: "assets/images/hijaiyah/ba.png",
    questionNotes: "Keluar dari dua bibir dengan merapatkannya.",
    options: ["ب", "م", "ن", "ت"],
    correctAnswer: "ب",
  ),

  // 13. Soal: Audio "kha"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "خ",
    questionImagePath: "assets/images/hijaiyah/kha.png",
    questionNotes: "Keluar dari tenggorokan atas.",
    options: ["خ", "ح", "غ", "ع"],
    correctAnswer: "خ",
  ),

  // 14. Soal: Audio "qof"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ق",
    questionImagePath: "assets/images/hijaiyah/qof.png",
    questionNotes: "Keluar dari pangkal lidah menyentuh langit-langit atas bagian daging.",
    options: ["ق", "ك", "ف", "ج"],
    correctAnswer: "ق",
  ),

  // 15. Soal: Audio "sha"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ش",
    questionImagePath: "assets/images/hijaiyah/sha.png",
    questionNotes: "Keluar dari tengah lidah bersama langit-langit atas.",
    options: ["ش", "س", "ص", "ث"],
    correctAnswer: "ش",
  ),

  // 16. Soal: Audio "'ain"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ع",
    questionImagePath: "assets/images/hijaiyah/ain.png",
    questionNotes: "Terletak pada tengah-tengah tenggorokan.",
    options: ["ع", "غ", "ح", "هـ"],
    correctAnswer: "ع",
  ),

  // 17. Soal: Audio "tsa"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ث",
    questionImagePath: "assets/images/hijaiyah/tsa.png",
    questionNotes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
    options: ["ث", "ت", "ذ", "س"],
    correctAnswer: "ث",
  ),

  // 18. Soal: Audio "ja"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ج",
    questionImagePath: "assets/images/hijaiyah/jim.png",
    questionNotes: "Keluar dari tengah lidah bersama dengan langit-langit atas.",
    options: ["ج", "ز", "ض", "ذ"],
    correctAnswer: "ج",
  ),

  // 19. Soal: Audio "dhod"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ض",
    questionImagePath: "assets/images/hijaiyah/dhod.png",
    questionNotes: "Keluar dari dua sisi lidah atau salah satunya menyentuh dinding bagian dalam gigi geraham atas.",
    options: ["ض", "ص", "ط", "د"],
    correctAnswer: "ض",
  ),
  
  // 20. Soal: Audio "dzho"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ظ",
    // Anda belum memberikan path gambar untuk 'dzho', saya gunakan placeholder
    questionImagePath: "assets/images/hijaiyah/dzho.png",
    questionNotes: "Terletak pada ujung lidah yang bertemu dengan apa yang sejajar dengannya dari gusi gigi atas sedikit masuk ke punggung lidah dekat dengan makhraj huruf nun.",
    options: ["ظ", "ذ", "ز", "ض"],
    correctAnswer: "ظ",
  ),
];

//Level 3
final List<HijaiyahQuestion2> tebakHurufQuestions3 = [
  // 1. Soal: Huruf "ذ"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ذ", // Huruf yang ditampilkan
    options: ["dza", "dzho", "za", "dhod"], // Opsi audio (transliterasi untuk TTS)
    correctAnswer: "dza",
    feedbackImagePath: "assets/images/hijaiyah/dza.png",
    feedbackNotes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
  ),

  // 2. Soal: Huruf "د"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "د",
    options: ["dal", "dzal", "dhod", "ta"],
    correctAnswer: "dal",
    feedbackImagePath: "assets/images/hijaiyah/dal.png",
    feedbackNotes: "Keluar dari punggung ujung lidah menyentuh pangkal dua gigi seri atas.",
  ),

  // 3. Soal: Huruf "ح"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ح",
    options: ["ha", "haa", "kha", "ain"],
    correctAnswer: "ha",
    feedbackImagePath: "assets/images/hijaiyah/ha.png",
    feedbackNotes: "Terletak pada tengah tenggorokan.",
  ),

  // 4. Soal: Huruf "ظ"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ظ",
    options: ["dzho", "dza", "dhod", "za"],
    correctAnswer: "dzho",
    feedbackImagePath: "assets/images/hijaiyah/dzho.png",
    feedbackNotes: "Terletak pada ujung lidah yang bertemu dengan apa yang sejajar dengannya dari gusi gigi atas sedikit masuk ke punggung lidah dekat dengan makhraj huruf nun.",
  ),

  // 5. Soal: Huruf "س"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "س",
    options: ["sin", "shad", "tsa", "sha"],
    correctAnswer: "sin",
    feedbackImagePath: "assets/images/hijaiyah/sin.png",
    feedbackNotes: "Keluar dari ujung lidah diletakkan pada dinding bagian dalam dua gigi seri bawah sehingga suara keluar melalui celah antara gigi atas dan bawah.",
  ),

  // 6. Soal: Huruf "ص"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ص",
    options: ["shad", "sin", "dhod", "tho"],
    correctAnswer: "shad",
    feedbackImagePath: "assets/images/hijaiyah/shad.png",
    feedbackNotes: "Keluar dari ujung lidah diletakkan pada dinding bagian dalam dua gigi seri bawah sehingga suara keluar melalui celah antara gigi atas dan bawah.",
  ),

  // 7. Soal: Huruf "ض"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ض",
    options: ["dhod", "shad", "dzho", "tho"],
    correctAnswer: "dhod",
    feedbackImagePath: "assets/images/hijaiyah/dhod.png",
    feedbackNotes: "Keluar dari dua sisi lidah atau salah satunya menyentuh dinding bagian dalam gigi geraham atas.",
  ),

  // 8. Soal: Huruf "ث"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ث",
    options: ["tsa", "ta", "sin", "sha"],
    correctAnswer: "tsa",
    feedbackImagePath: "assets/images/hijaiyah/tsa.png",
    feedbackNotes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
  ),

  // 9. Soal: Huruf "ت"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ت",
    options: ["ta", "tho", "tsa", "dal"],
    correctAnswer: "ta",
    feedbackImagePath: "assets/images/hijaiyah/ta.png",
    feedbackNotes: "Keluar dari punggung ujung lidah menyentuh pangkal dua gigi seri atas.",
  ),

  // 10. Soal: Huruf "ز"
  HijaiyahQuestion2(
    type: QuestionType.listenAndChooseText,
    text: "Perhatikan huruf berikut, lalu pilih audio pelafalan yang benar:",
    questionWord: "ز",
    options: ["zai", "dzal", "dhod", "dzho"],
    correctAnswer: "zai",
    feedbackImagePath: "assets/images/hijaiyah/zai.png",
    feedbackNotes: "Terletak pada akhir ujung lidah yang bertemu dengan dinding bagian dalam dari gigi seri bawah.",
  ),


  // ======================================================================
  // Tipe 2: Dengar Audio & Lihat Gambar/Notes, Pilih Teks (Soal 11-20)
  // ======================================================================

  // 11. Soal: Audio "dza"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "dza",
    questionImagePath: "assets/images/hijaiyah/dza.png",
    questionNotes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
    options: ["ذ", "د", "ز", "ض"],
    correctAnswer: "ذ",
  ),

  // 12. Soal: Audio "tha"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "tha",
    questionImagePath: "assets/images/hijaiyah/tha.png",
    questionNotes: "Keluar dari punggung ujung lidah menyentuh pangkal dua gigi seri atas.",
    options: ["ط", "ت", "ث", "ض"],
    correctAnswer: "ط",
  ),

  // 13. Soal: Audio "shad"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "shad",
    questionImagePath: "assets/images/hijaiyah/shad.png",
    questionNotes: "Keluar dari ujung lidah diletakkan pada dinding bagian dalam dua gigi seri bawah sehingga suara keluar melalui celah antara gigi atas dan bawah.",
    options: ["ص", "س", "ض", "ط"],
    correctAnswer: "ص",
  ),

  // 14. Soal: Audio "tsa"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "tsa",
    questionImagePath: "assets/images/hijaiyah/tsa.png",
    questionNotes: "Keluar dari dua tepi ujung lidah dari arah permukaan atasnya menyentuh ujung dua gigi seri atas.",
    options: ["ث", "س", "ش", "ت"],
    correctAnswer: "ث",
  ),

  // 15. Soal: Audio "zai"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "zai",
    questionImagePath: "assets/images/hijaiyah/zai.png",
    questionNotes: "Terletak pada akhir ujung lidah yang bertemu dengan dinding bagian dalam dari gigi seri bawah.",
    options: ["ز", "ذ", "ض", "ر"],
    correctAnswer: "ز",
  ),

  // 16. Soal: Audio "dzho"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "dzho",
    questionImagePath: "assets/images/hijaiyah/dzho.png",
    questionNotes: "Terletak pada ujung lidah yang bertemu dengan apa yang sejajar dengannya dari gusi gigi atas sedikit masuk ke punggung lidah dekat dengan makhraj huruf nun.",
    options: ["ظ", "ض", "ذ", "ز"], // Menggunakan list pilihan kedua yang Anda berikan
    correctAnswer: "ظ",
  ),

  // 17. Soal: Audio "dal"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "dal",
    questionImagePath: "assets/images/hijaiyah/dal.png",
    questionNotes: "Keluar dari punggung ujung lidah menyentuh pangkal dua gigi seri atas.",
    options: ["د", "ذ", "ر", "ط"],
    correctAnswer: "د",
  ),

  // 18. Soal: Audio "ha" (ح)
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "ha",
    questionImagePath: "assets/images/hijaiyah/ha.png",
    // Catatan: Notes yang Anda berikan untuk "ha" sepertinya keliru (milik Dal/Ta). Saya ganti dengan makhraj Ha yang benar.
    questionNotes: "Terletak pada tengah tenggorokan.",
    options: ["ح", "ه", "خ", "ع"],
    correctAnswer: "ح",
  ),

  // 19. Soal: Audio "dhod"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "dhod",
    questionImagePath: "assets/images/hijaiyah/dhod.png",
    questionNotes: "Keluar dari dua sisi lidah atau salah satunya menyentuh dinding bagian dalam gigi geraham atas.",
    options: ["ض", "ص", "ظ", "د"],
    correctAnswer: "ض",
  ),

  // 20. Soal: Audio "sin"
  HijaiyahQuestion2(
    type: QuestionType.seeAndChooseAudio,
    text: "Dengarkan audio, lihat gambar & catatan, lalu pilih huruf yang benar:",
    questionWord: "sin",
    questionImagePath: "assets/images/hijaiyah/sin.png",
    questionNotes: "Keluar dari ujung lidah diletakkan pada dinding bagian dalam dua gigi seri bawah sehingga suara keluar melalui celah antara gigi atas dan bawah.",
    options: ["س", "ش", "ص", "ث"],
    correctAnswer: "س",
  ),
];