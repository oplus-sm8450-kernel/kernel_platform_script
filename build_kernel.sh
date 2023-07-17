#!/bin/bash

if [[ -z "${1}" ]]; then
    echo "No device specified."
    exit
fi

export TARGET_BOARD_PLATFORM="${1}"
export OUT_DIR=${ANDROID_BUILD_TOP}/out/msm-kernel-${TARGET_BOARD_PLATFORM}

export LTO=thin

./kernel_platform/build/android/prepare_vendor.sh ${TARGET_BOARD_PLATFORM} gki
