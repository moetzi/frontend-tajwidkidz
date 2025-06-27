import '../models/question_model.dart';


//Level 1
final List<HijaiyahQuestion> susunHurufQuestions = [
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'بَيْتٌ',
    correctAnswer: 'بيت',
    options: ['ت', 'ب', 'ص', 'ي', 'ج', 'ث', 'ب'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'بَابٌ',
    correctAnswer: 'باب',
    options: ['ج', 'ا', 'ن', 'ب', 'ب'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'نُورٌ',
    correctAnswer: 'نور',
    options: ['ر', 'ن', 'ف', 'و', 'ن', 'د'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'قَلَمٌ',
    correctAnswer: 'قلم',
    options: ['ح', 'ا', 'م', 'ق', 'ل', 'ن'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'بَيْتٌ',
    correctAnswer: 'بيت',
    options: ['ت', 'ب', 'ص', 'ي', 'ج', 'ث', 'ب'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'مَاءٌ',
    correctAnswer: 'ملء',
    options: ['ا', 'ء', 'ب', 'م', 'ت', 'م', 'ل'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'شَمْسٌ',
    correctAnswer: 'شمس',
    options: ['ر', 'س', 'ص', 'ن', 'د', 'ش', 'م'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'طَعَامٌ',
    correctAnswer: 'طعام',
    options: ['ض', 'ا', 'ط', 'ع', 'م', 'ف', 'م'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'كُرْسِيٌّ',
    correctAnswer: 'كرسي',
    options: ['ك', 'ش', 'ي', 'و', 'ر', 'س', 'ك'],
  ),
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'قِطٌّ',
    correctAnswer: 'قط',
    options: ['ج', 'ب', 'ق', 'ط', 'ز', 'ط'],
  ),
];

//Level 2
final List<HijaiyahQuestion> susunHurufQuestions2 = [
  // Soal 1
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'كِتَابٌ', // Target Kata (dengan harakat)
    options: ['ك', 'ت', 'ا', 'ب', 'س', 'ط', 'ك'], // Huruf Acak
    correctAnswer: 'كتاب', // Jawaban (tanpa harakat)
  ),

  // Soal 2
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'طَعَامٌ',
    options: ['ط', 'ع', 'ا', 'م', 'ض', 'ف', 'م'],
    correctAnswer: 'طعام',
  ),

  // Soal 3
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'كُرْسِيٌّ',
    options: ['ك', 'ر', 'س', 'ي', 'و', 'ش', 'ك'],
    correctAnswer: 'كرسي',
  ),

  // Soal 4
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'وُرُودٌ',
    options: ['و', 'ر', 'و', 'د', 'ن', 'ز', 'ق'],
    correctAnswer: 'ورود',
  ),

  // Soal 5
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'جَمِيلٌ',
    options: ['ج', 'م', 'ي', 'ل', 'ن', 'ج', 'ت'],
    correctAnswer: 'جميل',
  ),

  // Soal 6
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'طِفْلٌ',
    options: ['ط', 'ف', 'ل', 'ص', 'ض', 'ط'],
    correctAnswer: 'طفل',
  ),

  // Soal 7
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'نَافِذَةٌ',
    options: ['ن', 'ا', 'ف', 'ذ', 'ة', 'د', 'ز'],
    correctAnswer: 'نافذة',
  ),

  // Soal 8
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'سَمَكٌ',
    options: ['س', 'م', 'ك', 'د', 'ب', 'ل'],
    correctAnswer: 'سمك',
  ),

  // Soal 9
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'دَفْتَرٌ',
    options: ['د', 'ف', 'ت', 'ر', 'ك', 'ن', 'ط'],
    correctAnswer: 'دفتر',
  ),

  // Soal 10
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'صَدِيقٌ',
    options: ['ص', 'د', 'ي', 'ق', 'ث', 'ش', 'ط'],
    correctAnswer: 'صديق',
  ),
];

//Level 3
final List<HijaiyahQuestion> susunHurufQuestions3 = [
  // Soal 1
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'كِتَابٌ', // Target Kata (untuk diucapkan TTS)
    options: ['ك', 'ت', 'ا', 'ب', 'ق', 'ث', 'س', 'ط', 'ك', 'ج'], // Huruf Acak
    correctAnswer: 'كتاب', // Jawaban (tanpa harakat)
  ),

  // Soal 2
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'طَعَامٌ',
    options: ['ط', 'ع', 'ا', 'م', 'ف', 'ض', 'غ', 'ق', 'ظ'],
    correctAnswer: 'طعام',
  ),

  // Soal 3
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'كُرْسِيٌّ',
    options: ['ك', 'ر', 'س', 'ي', 'ش', 'ق', 'ص', 'ل', 'ك'],
    correctAnswer: 'كرسي',
  ),

  // Soal 4
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'صَدِيقٌ',
    options: ['ص', 'د', 'ي', 'ق', 'ط', 'ض', 'ش', 'س', 'ث'],
    correctAnswer: 'صديق',
  ),

  // Soal 5
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'دَفْتَرٌ',
    options: ['د', 'ف', 'ت', 'ر', 'ط', 'ض', 'ن', 'ب', 'س'],
    correctAnswer: 'دفتر',
  ),

  // Soal 6
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'جَمِيلٌ',
    options: ['ج', 'م', 'ي', 'ل', 'ح', 'ن', 'خ', 'ت'],
    correctAnswer: 'جميل',
  ),

  // Soal 7
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'وُرُودٌ',
    options: ['و', 'ر', 'و', 'د', 'ز', 'ذ', 'ق', 'ن', 'ض'],
    correctAnswer: 'ورود',
  ),

  // Soal 8
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'مِفْتَاحٌ',
    options: ['م', 'ف', 'ت', 'ا', 'ح', 'د', 'ن', 'ق', 'ط'],
    correctAnswer: 'مفتاح',
  ),

  // Soal 9
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'نَافِذَةٌ',
    options: ['ن', 'ا', 'ف', 'ذ', 'ة', 'ز', 'ض', 'د', 'ش'],
    correctAnswer: 'نافذة',
  ),

  // Soal 10
  HijaiyahQuestion(
    text: 'Susun huruf ini\nmenjadi kata:',
    word: 'سَمَكٌ',
    options: ['س', 'م', 'ك', 'ش', 'ب', 'د', 'ل', 'ث'],
    correctAnswer: 'سمك',
  ),
];