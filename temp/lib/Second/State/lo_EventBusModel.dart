import 'package:event_bus/event_bus.dart';

EventBus globalEventBus = EventBus();

class LOEventBusModel {
  String text;
  LOEventBusModel(this.text);
}
