import 'package:bloc/bloc.dart';

class LOBlocObsever extends BlocObserver {
  @override
  // void onChange(Cubit cubit, Change change) {
  //   print('${cubit.runtimeType} $change');
  //   super.onChange(cubit, change);
  // }
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
  }
}
