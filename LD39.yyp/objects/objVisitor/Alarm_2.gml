/// @description Quit activity
// You can write your code in this editor

if (scrIsActivityCabinet(currentActivity)) {
  scrStopPlayingCabinetWithVisitor(self.id, currentActivity.id);
} else if (scrIsActivityVisitor(currentActivity)) {
  scrStopWatchingVisitor(self.id, currentActivity.id);
}