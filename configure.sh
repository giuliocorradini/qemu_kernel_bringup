#!/bin/bash

function get_kernel() {
	wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.0.7.tar.xz
	mkdir kernel && tar -xzf kernel -C linux-6.0.7.tar.xz
}

function prepare_vm() {
	docker run -it --name kernel_builder -v "$PWD/kernel:/kernel" debian
}

function start_vm() {
	docker start -i kernel_builder
}

