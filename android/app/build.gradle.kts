plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
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
        // Specify your own unique Application ID
        applicationId = "com.example.e_season"
        // Update the following values to match your application needs
        minSdk = 23 // Updated to the required minSdkVersion
        targetSdk = 34 // Updated to the highest required SDK version
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            // Add your own signing config for the release build
            // Signing with the debug keys for now, so `flutter run --release` works
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