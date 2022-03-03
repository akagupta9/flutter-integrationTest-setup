# ## Run all tests
# flutter test integration_test/tests/*.dart

# ## Run Single File
# flutter test integration_test/tests/sanity.test.dart

## Reporting
flutter pub global activate dart_dot_reporter
flutter test --machine integration_test/tests/sanity.test.dart -d "$DEVICE" > machine.log
flutter pub global run dart_dot_reporter machine.log --show-message --show-success --show-id

#DEVICE=emulator-5554 ./testRunner.sh