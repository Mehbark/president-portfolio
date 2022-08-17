build: out.pdf

clean:
	rm -rf out
	rm -rf out2
	rm out.pdf

out.pdf: \
	out2/1.pdf out2/2.pdf out2/3.pdf out2/4.pdf out2/5.pdf out2/6.pdf out2/7.pdf out2/8.pdf out2/9.pdf out2/10.pdf out2/11.pdf out2/12.pdf out2/13.pdf out2/14.pdf out2/15.pdf out2/16.pdf out2/17.pdf out2/18.pdf out2/19.pdf out2/20.pdf out2/21.pdf out2/22.pdf out2/23.pdf out2/24.pdf out2/25.pdf out2/26.pdf out2/27.pdf out2/28.pdf out2/29.pdf out2/30.pdf out2/31.pdf out2/32.pdf out2/33.pdf out2/34.pdf out2/35.pdf out2/36.pdf out2/37.pdf out2/38.pdf out2/39.pdf out2/40.pdf out2/41.pdf out2/42.pdf out2/43.pdf out2/44.pdf out2/45.pdf
	./combine-pdfs

out2/1.pdf: out/1.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/1.html -t latex -o out2/1.pdf 
out2/2.pdf: out/2.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/2.html -t latex -o out2/2.pdf 
out2/3.pdf: out/3.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/3.html -t latex -o out2/3.pdf 
out2/4.pdf: out/4.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/4.html -t latex -o out2/4.pdf 
out2/5.pdf: out/5.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/5.html -t latex -o out2/5.pdf 
out2/6.pdf: out/6.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/6.html -t latex -o out2/6.pdf 
out2/7.pdf: out/7.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/7.html -t latex -o out2/7.pdf 
out2/8.pdf: out/8.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/8.html -t latex -o out2/8.pdf 
out2/9.pdf: out/9.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/9.html -t latex -o out2/9.pdf 
out2/10.pdf: out/10.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/10.html -t latex -o out2/10.pdf 
out2/11.pdf: out/11.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/11.html -t latex -o out2/11.pdf 
out2/12.pdf: out/12.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/12.html -t latex -o out2/12.pdf 
out2/13.pdf: out/13.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/13.html -t latex -o out2/13.pdf 
out2/14.pdf: out/14.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/14.html -t latex -o out2/14.pdf 
out2/15.pdf: out/15.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/15.html -t latex -o out2/15.pdf 
out2/16.pdf: out/16.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/16.html -t latex -o out2/16.pdf 
out2/17.pdf: out/17.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/17.html -t latex -o out2/17.pdf 
out2/18.pdf: out/18.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/18.html -t latex -o out2/18.pdf 
out2/19.pdf: out/19.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/19.html -t latex -o out2/19.pdf 
out2/20.pdf: out/20.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/20.html -t latex -o out2/20.pdf 
out2/21.pdf: out/21.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/21.html -t latex -o out2/21.pdf 
out2/22.pdf: out/22.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/22.html -t latex -o out2/22.pdf 
out2/23.pdf: out/23.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/23.html -t latex -o out2/23.pdf 
out2/24.pdf: out/24.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/24.html -t latex -o out2/24.pdf 
out2/25.pdf: out/25.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/25.html -t latex -o out2/25.pdf 
out2/26.pdf: out/26.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/26.html -t latex -o out2/26.pdf 
out2/27.pdf: out/27.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/27.html -t latex -o out2/27.pdf 
out2/28.pdf: out/28.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/28.html -t latex -o out2/28.pdf 
out2/29.pdf: out/29.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/29.html -t latex -o out2/29.pdf 
out2/30.pdf: out/30.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/30.html -t latex -o out2/30.pdf 
out2/31.pdf: out/31.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/31.html -t latex -o out2/31.pdf 
out2/32.pdf: out/32.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/32.html -t latex -o out2/32.pdf 
out2/33.pdf: out/33.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/33.html -t latex -o out2/33.pdf 
out2/34.pdf: out/34.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/34.html -t latex -o out2/34.pdf 
out2/35.pdf: out/35.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/35.html -t latex -o out2/35.pdf 
out2/36.pdf: out/36.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/36.html -t latex -o out2/36.pdf 
out2/37.pdf: out/37.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/37.html -t latex -o out2/37.pdf 
out2/38.pdf: out/38.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/38.html -t latex -o out2/38.pdf 
out2/39.pdf: out/39.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/39.html -t latex -o out2/39.pdf 
out2/40.pdf: out/40.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/40.html -t latex -o out2/40.pdf 
out2/41.pdf: out/41.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/41.html -t latex -o out2/41.pdf 
out2/42.pdf: out/42.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/42.html -t latex -o out2/42.pdf 
out2/43.pdf: out/43.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/43.html -t latex -o out2/43.pdf 
out2/44.pdf: out/44.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/44.html -t latex -o out2/44.pdf 
out2/45.pdf: out/45.html out2
	pandoc -V fontsize=14pt -H gobble-page-numbers.template out/45.html -t latex -o out2/45.pdf 



gen-pdfs: out2 convert-to-pdf gobble-page-numbers.template \
	out/1.html out/2.html out/3.html out/4.html out/5.html out/6.html out/7.html out/8.html out/9.html out/10.html out/11.html out/12.html out/13.html out/14.html out/15.html out/16.html out/17.html out/18.html out/19.html out/20.html out/21.html out/22.html out/23.html out/24.html out/25.html out/26.html out/27.html out/28.html out/29.html out/30.html out/31.html out/32.html out/33.html out/34.html out/35.html out/36.html out/37.html out/38.html out/39.html out/40.html out/41.html out/42.html out/43.html out/44.html out/45.html 
	./convert-to-pdf

out/1.html out/2.html out/3.html out/4.html out/5.html out/6.html out/7.html out/8.html out/9.html out/10.html out/11.html out/12.html out/13.html out/14.html out/15.html out/16.html out/17.html out/18.html out/19.html out/20.html out/21.html out/22.html out/23.html out/24.html out/25.html out/26.html out/27.html out/28.html out/29.html out/30.html out/31.html out/32.html out/33.html out/34.html out/35.html out/36.html out/37.html out/38.html out/39.html out/40.html out/41.html out/42.html out/43.html out/44.html out/45.html: \
	out src/*.liquid src/*.rs manual_data.json batch_data.json
	cargo run -- create

out:
	mkdir out

out2:
	mkdir out2
