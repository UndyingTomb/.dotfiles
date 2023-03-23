linux: 
	./bin/linux.sh
	chmod +x ./bin/linux.sh	
	./bin/linux.sh

clean: 
	./bin/cleanup.sh
	chmod +x ./bin/cleanup.sh
	./bin/cleanup.sh

linux:
	clean
