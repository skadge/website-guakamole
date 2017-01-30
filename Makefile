TARGET=$(wildcard *.md)

all: $(TARGET:.md=.html)

%.html: %.md
	pandoc -s -thtml5 -o $(@) $(<)
