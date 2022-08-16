build: out.pdf 

clean: out out2 out.pdf
	rm -rf out
	rm -rf out2
	rm out.pdf

out.pdf: out2/45.pdf
	./combine-pdfs

out2/45.pdf: out/45.html out2
	./convert-to-pdf

out/45.html: out
	cargo run -- create

out:
	mkdir out

out2:
	mkdir out2
