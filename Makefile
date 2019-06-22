all:
	@echo "Building native code."
	@if [ ! -d build ]; then mkdir build; fi
	@gcc -o build/hello_tf \
		src/hello_tf.c \
		-ltensorflow \
		-I/usr/local/include \
		-I/home/mattmoore/source/tensorflow-kotlin-c-bindings/include \
		-L/usr/local/lib \
	  && echo "Success!"

clean:
	@rm -rf build
	@echo "Success!"
