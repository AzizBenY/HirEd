plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.flutter_application_1"
    compileSdk = 34 // Remplace `flutter.compileSdkVersion` par 33
    ndkVersion = "28.0.13004108" // Remplace `flutter.ndkVersion`

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.flutter_application_1"
        minSdk = 21 // Remplace `flutter.minSdkVersion`
        targetSdk = 33 // Remplace `flutter.targetSdkVersion`
        versionCode = 1 // Remplace `flutter.versionCode`
        versionName = "1.0" // Remplace `flutter.versionName`
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}


flutter {
    source = "../.."
}
