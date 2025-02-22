Info: student.o date.o address.o main.o

address.o: Address.cpp Address.h
	g++ -c Address.cpp

date.o: Date.cpp Date.h
	g++ -c Date.cpp

student.o: Student.cpp Student.h Date.h Address.h
	g++ -c Student.cpp

main.o: main.cpp Date.h
	g++ -c main.cpp

clean:
	rm -f *.0 Info

