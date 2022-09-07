//////////////////////////
List<Messages> msglist = [
  Messages(
    sentbyme: false,
    text: '5 T-Shirts Dry Cleaning',
  ),
  Messages(
    sentbyme: true,
    text: 'Shirt and Jeans Dry Cleaning',
  ),
  Messages(
    sentbyme: false,
    text: '5 jeans dry and cleaning',
  ),
  Messages(
    sentbyme: true,
    text: '2 uniform dry and cleaning',
  ),
  Messages(
    sentbyme: false,
    text: '5 linen dry and cleaning',
  ),
];

class Messages {
  String text;
  bool sentbyme;

  Messages({
    required this.text,
    required this.sentbyme,
  });
}
