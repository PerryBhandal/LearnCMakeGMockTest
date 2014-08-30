SRC_DIR="../src/"
BUILD_DIR="../build/"
# Show all warnings.
COMPILER_WARNINGS_FLAG="-Wall"

# Flag to ensure we can create position independent code (needed for creating lib objects)
GLOBAL_FLAGS="-fPIC"

function build()
{
    cmake $SRC_DIR \
        -G "Unix Makefiles" \
        -DCMAKE_CXX_FLAGS=$GLOBAL_FLAGS \
        -DCMAKE_C_FLAGS=$GLOBAL_FLAGS \
        -DCMAKE_EXE_LINKER_FLAGS=$GLOBAL_FLAGS \
        -DCMAKE_MODULE_LINKER_FLAGS=$GLOBAL_FLAGS \
        -DCMAKE_SHARED_LINKER_FLAGS=$GLOBAL_FLAGS \
        -DCMAKE_CXX_FLAGS=$COMPILER_WARNINGS_FLAG \
            || { echo "Compilation failed."; exit 1; }
}

if [ ! -d $BUILD_DIR ]; then
    mkdir $BUILD_DIR
fi

pushd $BUILD_DIR > /dev/null

build
make

popd > /dev/null
