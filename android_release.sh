# build to Android targets
cargo so b --lib --target aarch64-linux-android --release
# cargo so b --lib --target armv7-linux-androideabi --release

# copy .so files to jniLibs folder
ARM64="android/app/libs/arm64-v8a"
ARMv7a="android/app/libs/armeabi-v7a"
if [ ! -d "$ARM64" ]; then
    mkdir "$ARM64"
fi
if [ ! -d "$ARMv7a" ]; then
    mkdir "$ARMv7a"
fi
cp target/aarch64-linux-android/release/libbevy_in_app.so "${ARM64}/libbevy_in_app.so"
# cp target/armv7-linux-androideabi/release/libbevy_in_app.so "${ARMv7a}/libbevy_in_app.so"
