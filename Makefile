CC = clang

all: target/double

target:
	mkdir -p $@

target/double: target/main.o target/release/libdubb.a
	$(CC) -o $@ $^

target/release/libdubb.a: src/lib.rs Cargo.toml
	cargo build --release

target/main.o: src/main.c | target
	$(CC) -o $@ -c $<

clean:
	rm -fr target
