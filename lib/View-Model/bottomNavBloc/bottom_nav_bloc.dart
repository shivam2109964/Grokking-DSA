import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, int> {
  BottomNavBloc() : super(0) {
    on<BottomNavEvent>((event, emit) {
      switch (event) {
        case BottomNavEvent.Home:
          emit(0);
          break;
        case BottomNavEvent.Pending:
          emit(1);
          break;
        case BottomNavEvent.Profile:
          emit(2);
          break;
      }
    });
  }
}
