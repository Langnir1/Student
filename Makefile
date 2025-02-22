Info: Student.o Date.o Address.o main.o
	g++ -g Student.o Date.o Address.o main.o -o Info

Address.o: Address.cpp Address.h
	g++ -g -c Address.cpp

Date.o: Date.cpp Date.h
	g++ -g -c Date.cpp

Student.o: Student.cpp Student.h Date.h Address.h
	g++ -g -c Student.cpp

main.o: main.cpp Date.h Student.h Address.h
	g++ -g -c main.cpp

clean:
	rm -f *.o Info

