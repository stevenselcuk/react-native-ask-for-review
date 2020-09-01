import { NativeModules, Platform } from "react-native";

const AskForReview = NativeModules.RNAskForReview || {};

const noop = () => ({});
const safeCall = (func, minVersion = 12) => {
  if (
    Platform.OS !== "ios" ||
    Number.parseFloat(Platform.Version, 10) < minVersion
  ) {
    return noop;
  }

  return func;
};

const review = safeCall(() => {
  AskForReview.incrementAppOpenedCount();
  AskForReview.checkAndAskForReview();
});

export default review;
