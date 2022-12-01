DEBUG_APK_PATH=build/app/outputs/flutter-apk/app-debug.apk # File path of debug APk
TEST_APK_PATH=build/app/outputs/apk/androidTest/staging/debug/app-debug-androidTest.apk # File Path of Test Apk
SUITE=$1 # Positional Argument which will give Suite Name i.e SUITE1 and SUITE2 in our case
flutter build apk --debug # Build the Debug APk

pushd android
  ./gradlew app:assembleAndroidTest
popd 

if [ "$SUITE" == "SUITE1" ]; then
      pushd android
        ./gradlew app:assembleDebug -Ptarget=integration_test/suites/suite1.dart
      popd

      if gcloud firebase test android run --type instrumentation --app $DEBUG_APK_PATH --test $TEST_APK_PATH --timeout 45m
      then
        exit 0 # Exit with 0 if all test passed else exit with 1
      else
        exit 1
      fi  
    fi

if [ "$SUITE" == "SUITE2" ]; then
      pushd android
        ./gradlew app:assembleDebug -Ptarget=integration_test/suites/suite2.dart
      popd

      if gcloud firebase test android run --type instrumentation --app $DEBUG_APK_PATH --test $TEST_APK_PATH --timeout 45m
      then
        exit 0
      else
        exit 1
      fi  
    fi