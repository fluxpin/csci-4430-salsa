SALSA = salsa-1.1.5.jar
OBJECTS = PriorityQueue.java SeqAlign.java SeqAlignWorker.java

.PHONY: all
all: seqalign

seqalign: Align.java AlignList.java PairList.java StringList.java $(OBJECTS)
	javac -classpath $(SALSA) -d . $^

%.java: %.salsa
	java -cp $(SALSA) salsac.SalsaCompiler '$<'

.PHONY: clean
clean:
	rm -rf seqalign $(OBJECTS)
