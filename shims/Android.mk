# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# GPS-shim

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := gps.c

LOCAL_SHARED_LIBRARIES := libcutils liblog

LOCAL_MODULE := gps.$(TARGET_BOOTLOADER_BOARD_NAME)
LOCAL_MODULE_RELATIVE_PATH := hw

include $(BUILD_SHARED_LIBRARY)

# libsecril-shim

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	secril-shim.c
	
LOCAL_MODULE:= libsecril-shim
LOCAL_SHARED_LIBRARIES := liblog libbinder

include $(BUILD_SHARED_LIBRARY)

# libshim_ril

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    samsung_ril.cpp

LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libshim_ril
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
