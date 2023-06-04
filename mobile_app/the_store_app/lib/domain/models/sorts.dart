import 'dart:ui';

class Sort {
  final String key;
  final String name;

  const Sort({
    required this.key,
    required this.name,
  });

  static final Map<String, List<Sort>> sorts = {
    'ru': const [
      Sort(key: 'popularity', name: 'По популярности'),
      Sort(key: 'asc_price', name: 'По возрастанию цены'),
      Sort(key: 'desc_price', name: 'По убыванию цены'),
      Sort(key: 'asc_discount', name: 'По возрастанию скидки'),
      Sort(key: 'desc_discount', name: 'По убыванию скидки'),
    ],
    'en': const [
      Sort(key: 'popularity', name: 'Popularity'),
      Sort(key: 'asc_price', name: 'Asc price'),
      Sort(key: 'desc_price', name: 'Desc price'),
      Sort(key: 'asc_discount', name: 'Asc discount'),
      Sort(key: 'desc_discount', name: 'Desc discountи'),
    ],
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Sort && runtimeType == other.runtimeType && key == other.key;

  @override
  int get hashCode => key.hashCode;
}
