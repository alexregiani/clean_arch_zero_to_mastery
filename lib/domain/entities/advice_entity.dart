class AdviceEntity {
  AdviceEntity({required this.advice, required this.id});
  final int id;
  final String advice;

  @override
  String toString() {
    return '$id, $advice';
  }
}
