
.PHONY: default
default:
	git submodule init
	git submodule update
	make -C rocksdb shared_lib
