part of 'producte_cubit.dart';

@immutable
sealed class ProducteState {}

final class ProducteInitial extends ProducteState {}

class HomeScreen extends ProducteState {
  final int number;

  HomeScreen({required this.number});
}

class Listproduct extends ProducteState {
  final int numberProduct;

  Listproduct({required this.numberProduct});
}

class TheProductEvaluatesTrue extends ProducteState {
  final bool selection;
  TheProductEvaluatesTrue({required this.selection});
}

class Counters extends ProducteState {
  final int counter;

  Counters({required this.counter});
}

// class Baskete extends ProducteState {
//   final dynamic aaaa;
//   final int basketNumber;
//   // final List <Widget>baskets;

//   Baskete({
//     required this.basketNumber,
//     required this.aaaa,
//   });
// }

class Streamm extends ProducteState {
  final streamControllerr;
  // final int numberStream;

  Streamm({required this.streamControllerr});
}

class BasketesNumber extends ProducteState {
  final int BasketNumber;

  BasketesNumber({required this.BasketNumber});
}

// class ListBasket extends ProducteState {
//    List<Widget> listBody = [];
//   ListBasket({required this.listBody});
// }

// class TheProductEvaluatesFalse extends ProducteState {
//   final bool selection;
//   TheProductEvaluatesFalse({required this.selection});
// }
