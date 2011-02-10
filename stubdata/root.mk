# derive a string like 'icudt44l' from a local file like 'external/icu4c/stubdata/icudt44l-all.dat'
stubdata_path:= $(call my-dir)
ifeq ($(ARCH_HAS_BIGENDIAN),true)
  root_dat_path := $(wildcard $(stubdata_path)/*b-all.dat)
  root := $(patsubst $(stubdata_path)/%,%,$(patsubst %b-all.dat,%,$(root_dat_path)))
else
  root_dat_path := $(wildcard $(stubdata_path)/*l-all.dat)
  root := $(patsubst $(stubdata_path)/%,%,$(patsubst %l-all.dat,%,$(root_dat_path)))
endif

