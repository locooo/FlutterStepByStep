import 'package:bloc/bloc.dart';

class LOBlocObsever extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print('${cubit.runtimeType} $change');
    // TODO: implement onChange
    super.onChange(cubit, change);
  }
}