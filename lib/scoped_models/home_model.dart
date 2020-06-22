import 'package:scoped_model/scoped_model.dart';
import 'package:scopedmodel/enums/view_state.dart';
import 'package:scopedmodel/service_locator.dart';
import 'package:scopedmodel/services/storage_services.dart';

class HomeModel extends Model {
  StorageService service = locator<StorageService>();
  String title = "Home Model Title";

  ViewState _state;
  ViewState get state => _state;

  Future saveData() async {
    _setState(ViewState.Busy);
    title = "Changing Title";
    await service.saveData();
    title = "New Title";
    _setState(ViewState.DataRetrieved);
  }

  void _setState(ViewState newState){
    _state = newState;
    notifyListeners();
  }

}