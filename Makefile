TARGET=$(wildcard *.md)
TARGET+=$(wildcard */*.md)

all: $(TARGET:.md=.html)

%.html: %.md
	pandoc -s -thtml5 -cstyles.css -o $(@) $(<)
