#!/bin/bash
# Script to generate Firebase configuration files for different environments/flavors
# Feel free to reuse and adapt this script for your own projects

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'dev', 'stg', or 'prod'."
  exit 1
fi

case $1 in
  dev)
    flutterfire config \
      --project=gordon-ferguson-teaching-dev \
      --out=lib/firebase_options_dev.dart \
      --ios-bundle-id=org.gordonferguson.gordonfergusonteachingsapp.dev \
      --ios-out=ios/flavors/development/GoogleService-Info.plist \
      --android-package-name=gordonferguson.org.gordon_ferguson_teachings_app.dev \
      --android-out=android/app/src/development/google-services.json
    ;;
  stg)
    flutterfire config \
      --project=gordon-ferguson-teaching-dev \
      --out=lib/firebase_options_stg.dart \
      --ios-bundle-id=org.gordonferguson.gordonfergusonteachingsapp.stg \
      --ios-out=ios/flavors/staging/GoogleService-Info.plist \
      --android-package-name=gordonferguson.org.gordon_ferguson_teachings_app.stg \
      --android-out=android/app/src/staging/google-services.json
    ;;
  prod)
    flutterfire config \
      --project=gordon-ferguson-teachings \
      --out=lib/firebase_options_prod.dart \
      --ios-bundle-id=org.gordonferguson.gordonfergusonteachingsapp \
      --ios-out=ios/flavors/production/GoogleService-Info.plist \
      --android-package-name=gordonferguson.org.gordon_ferguson_teachings_app \
      --android-out=android/app/src/production/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'dev', 'stg', or 'prod'."
    exit 1
    ;;
esac