TARGET=$(wildcard *.md)

all: $(TARGET:.md=.html)

%.html: %.md
	pandoc -thtml -o $(@) $(<)
