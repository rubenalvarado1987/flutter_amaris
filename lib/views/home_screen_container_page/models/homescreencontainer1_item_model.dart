import '../../../core/app_export.dart';

/// This class is used in the [homescreencontainer1_item_widget] screen.
class Homescreencontainer1ItemModel {
  Homescreencontainer1ItemModel({
    this.pulses,
    this.pulses1,
    this.id,
  }) {
    pulses = pulses ?? Rx(ImageConstant.img4215936Pulses);
    pulses1 = pulses1 ?? Rx("Pulses");
    id = id ?? Rx("");
  }

  Rx<String>? pulses;

  Rx<String>? pulses1;

  Rx<String>? id;
}
