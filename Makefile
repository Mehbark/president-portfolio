build: out.pdf

clean:
	rm -rf out
	rm -rf out2
	rm out.pdf

out.pdf: \
	out2/1.pdf out2/2.pdf out2/3.pdf out2/4.pdf out2/5.pdf out2/6.pdf out2/7.pdf out2/8.pdf out2/9.pdf out2/10.pdf out2/11.pdf out2/12.pdf out2/13.pdf out2/14.pdf out2/15.pdf out2/16.pdf out2/17.pdf out2/18.pdf out2/19.pdf out2/20.pdf out2/21.pdf out2/22.pdf out2/23.pdf out2/24.pdf out2/25.pdf out2/26.pdf out2/27.pdf out2/28.pdf out2/29.pdf out2/30.pdf out2/31.pdf out2/32.pdf out2/33.pdf out2/34.pdf out2/35.pdf out2/36.pdf out2/37.pdf out2/38.pdf out2/39.pdf out2/40.pdf out2/41.pdf out2/42.pdf out2/43.pdf out2/44.pdf out2/45.pdf
	./combine-pdfs

out2/1.pdf out2/2.pdf out2/3.pdf out2/4.pdf out2/5.pdf out2/6.pdf out2/7.pdf out2/8.pdf out2/9.pdf out2/10.pdf out2/11.pdf out2/12.pdf out2/13.pdf out2/14.pdf out2/15.pdf out2/16.pdf out2/17.pdf out2/18.pdf out2/19.pdf out2/20.pdf out2/21.pdf out2/22.pdf out2/23.pdf out2/24.pdf out2/25.pdf out2/26.pdf out2/27.pdf out2/28.pdf out2/29.pdf out2/30.pdf out2/31.pdf out2/32.pdf out2/33.pdf out2/34.pdf out2/35.pdf out2/36.pdf out2/37.pdf out2/38.pdf out2/39.pdf out2/40.pdf out2/41.pdf out2/42.pdf out2/43.pdf out2/44.pdf out2/45.pdf: \
	gen-pdfs

gen-pdfs: out2 latex-numberless.template convert-to-pdf \
	out/1.html out/2.html out/3.html out/4.html out/5.html out/6.html out/7.html out/8.html out/9.html out/10.html out/11.html out/12.html out/13.html out/14.html out/15.html out/16.html out/17.html out/18.html out/19.html out/20.html out/21.html out/22.html out/23.html out/24.html out/25.html out/26.html out/27.html out/28.html out/29.html out/30.html out/31.html out/32.html out/33.html out/34.html out/35.html out/36.html out/37.html out/38.html out/39.html out/40.html out/41.html out/42.html out/43.html out/44.html out/45.html 
	./convert-to-pdf

out/1.html out/2.html out/3.html out/4.html out/5.html out/6.html out/7.html out/8.html out/9.html out/10.html out/11.html out/12.html out/13.html out/14.html out/15.html out/16.html out/17.html out/18.html out/19.html out/20.html out/21.html out/22.html out/23.html out/24.html out/25.html out/26.html out/27.html out/28.html out/29.html out/30.html out/31.html out/32.html out/33.html out/34.html out/35.html out/36.html out/37.html out/38.html out/39.html out/40.html out/41.html out/42.html out/43.html out/44.html out/45.html: \
	out src/*
	cargo run -- create

out:
	mkdir out

out2:
	mkdir out2
