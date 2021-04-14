import 'package:event_bus/event_bus.dart';

typedef void EventCallback(event);

class LOGlobalEventBusUntil {
  EventBus? eventBus;
  factory LOGlobalEventBusUntil() => _getInstance()!;
  static LOGlobalEventBusUntil? get instance => _getInstance();
  static LOGlobalEventBusUntil? _instance;
  LOGlobalEventBusUntil._internal() {
    // 初始化
    eventBus = new EventBus();
  }

  static LOGlobalEventBusUntil? _getInstance() {
    if (_instance == null) {
      _instance = new LOGlobalEventBusUntil._internal();
    }
    return _instance;
  }

  //保存事件订阅者队列，key:事件名(id)，value: 对应事件的订阅者队列
  var _emap = new Map<Object, List<EventCallback>?>();

  //添加订阅者
  void on(eventName, EventCallback f) {
    if (eventName == null) return;
    _emap[eventName] ??= new List<EventCallback>.empty();
    _emap[eventName]!.add(f);
  }

  //移除订阅者
  void off(eventName, [EventCallback? f]) {
    var list = _emap[eventName];
    if (eventName == null || list == null) return;
    if (f == null) {
      _emap[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  //触发事件，事件触发后该事件所有订阅者会被调用
  void send(eventName, [arg]) {
    var list = _emap[eventName];
    if (list == null) return;
    int len = list.length - 1;
    //反向遍历，防止订阅者在回调中移除自身带来的下标错位
    for (var i = len; i > -1; --i) {
      list[i](arg);
    }
  }
}
