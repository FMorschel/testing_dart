import 'package:equatable/equatable.dart';

class A with EquatableMixin {
  const A(this.number);
  final int number;
  @override
  List<Object?> get props => [number];
}

class B {
  const B(this.number);
  final int number;
}

void main() {
  final a = const A(0);
  final b = const A(0);
  final c = A(0);
  final d = const A(1);

  print('a == b => ${a == b}');
  print('a == c => ${a == c}');
  print('a == d => ${a == d}');

  final e = const B(0);
  final f = const B(0);
  final g = B(0);

  print('e == f => ${e == f}');
  print('e == g => ${e == g}');
}
