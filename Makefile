# Flutter App
fr:
	cd toy_swapp_flutter && flutter run --flavor development -t lib/main_development.dart --enable-impeller 
fg:
	cd toy_swapp_flutter && dart run build_runner build --delete-conflicting-outputs
sm:
	cd toy_swapp_server && serverpod generate && serverpod create-migration --force && dart run bin/main.dart --apply-migrations
sg:
	cd toy_swapp_server && serverpod generate && dart bin/main.dart