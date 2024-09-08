import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meta/meta.dart';
part 'producte_state.dart';

class ProducteCubit extends Cubit<ProducteState> {
  int counterIndex = 0;
  int addBasketes = 0;
  int counte = 0;
  ProducteCubit() : super(ProducteInitial());

  counter(int value) {
    emit(HomeScreen(number: value));
  }

  counterListProduct(int index) {
    emit(Listproduct(numberProduct: index));
  }

  theProductEvaluatesTrue(bool selection) {
    emit(TheProductEvaluatesTrue(selection: selection));
  }

  // TheProductEvaluatesFalse(bool selection) {
  //   emit(TheProductEvaluatesTrue(selection: selection));
  // }
  countersIncreament() {
    counterIndex++;
    emit(Counters(counter: counterIndex));
  }

  counterDecreament() {
    if (counterIndex > 0) {
      counterIndex--;
      emit(Counters(counter: counterIndex));
    }
  }

  // addNumber() {
  //   addBasketes++;
  //   emit(BasketesNumber(BasketNumber: addBasketes));
  // }

  // addBasket( ddd) {
  //   //   pss.add(ddd);
  //   // void sum(ddd) {
  //   // }

  //   // int numberlogen() {
  //   //   return pss.length;
  //   // }

  //   // List<Product> psss = [];
  //   // void ppp(Product cc) {
  //   //   psss.add(cc);
  //   // }

  //   // int addd() {
  //   //   return psss.length;
  //   // }
  //   // List<Product> _fff() {
  //   //   return psss;
  //   // }

  //   emit(Baskete(aaaa: pss,basketNumber: pss.length
  //       // basketNumber: add(),
  //       ));
  //   // addBasketes++;
  // }

  // addStream() {
  //   final StreamController<int> controller = StreamController<int>();
  //   // Stream<int> get conter =>controller.
  //   Stream<int> contactCounter = controller.stream;
  //   void number() {
  //     counte++;
  //     controller.add(counte);
  //   }
  //   // controller.add(counte);

  //   emit(Streamm(streamControllerr: contactCounter,));
  // }

  // listBasket(List<dynamic> ddd, sss) {
  //   ddd.add(sss);
  //   emit(ListBasket(listBody: ddd));
  // }
}
