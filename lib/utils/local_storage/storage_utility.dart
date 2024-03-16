import 'package:get_storage/get_storage.dart';
class TLocalStorage{
 static final TLocalStorage _instance=TLocalStorage._internal();
  factory TLocalStorage(){
    return _instance;
  }
  TLocalStorage._internal();
  final _storage=GetStorage();
  //generic methode to save data
Future<void> saveData<T>(String key,T value)async{
  await _storage.write(key, value);
}
//read data
T? readData<T>(String key){
  return _storage.read<T>(key);
}
//remove data
Future<void> removeData(String key)async{
  await _storage.remove(key);
}
Future<void>clearAll()async{
  await _storage.erase();
}
}