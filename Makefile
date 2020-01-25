DOCS=index misc

HDOCS=$(addsuffix .html, $(DOCS))

.PHONY : docs
docs : $(HDOCS)

%.html : %.jemdoc
	python jemdoc.py -o $@ $<

.PHONY : clean
clean :
	-rm -f *.html
