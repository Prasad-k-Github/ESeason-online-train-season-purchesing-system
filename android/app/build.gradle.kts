plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services") // Add this line
}

android {
    namespace = "com.example.e_season"
    compileSdk = 34 // Updated to the highest required SDK version
    ndkVersion = "27.0.12077973" // Updated to the highest required NDK version

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11 // Updated to Java 11
        targetCompatibility = JavaVersion.VERSION_11 // Updated to Java 11
    }

    kotlinOptions {
        jvmTarget = "11" // Updated to Java 11
    }
    
    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.e_season"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23 // Updated to the required minSdkVersion
        targetSdk = 34 // Updated to the highest required SDK version
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Import the Firebase BoM
    implementation(platform("com.google.firebase:firebase-bom:33.6.0"))

    // Add the dependencies for the Firebase products you want to use
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-auth")
    implementation("com.google.firebase:firebase-firestore")
    implementation("com.google.firebase:firebase-database") // Add this line for Realtime Database
}