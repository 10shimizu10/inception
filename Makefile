RUN = docker-compose up --build

CLEAN = docker-compose down --rmi all; clear

all :
	cd srcs && $(RUN)

down:
	cd srcs && $(CLEAN)

re : down all
