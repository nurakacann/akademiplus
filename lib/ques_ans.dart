class Flashcard {
  final String question;
  final String answer;

  Flashcard({required this.question, required this.answer});
}

List<Flashcard> quesAnsList = [
  Flashcard(
      question:
      "Poliformizmde üst sınıfta var olan özelliği güncellemek, değiştirmek için kullanılan etiket nedir?",
      answer: "@override"),
  Flashcard(
      question:
      "Bilgisayarımızda iki farklı Flutter SDK versiyonu kurulu ise, Android Studio bunlardan hangisini kullanacağını nereden bilir?",
      answer:
      "Android Studio'ya hangi Flutter SDK kurulumunun bulunduğu yer gösterildiyse onu kullanır."),
  Flashcard(
      question: "Row'a mainAxisSize parametresi verilmezse ne olur?",
      answer: "Row, yatayda maksimum alan kaplamaya çalışır"),
  Flashcard(
      question:
      "Flutter Inspector ve Flutter Outline'ın içerikleri ne zaman birbirine çok benzer",
      answer:
      "Tüm appi tek bir widget classında, az sayıda widget ile yarattığimızda"),
  Flashcard(
      question:
      " Widget ağacında alttaki bir widget üstteki bir widget'a nasıl bilgi iletebilir?",
      answer: "Üstteki, çocuğa istediği zaman çağıracağı bir fonksiyon verir"),
];
