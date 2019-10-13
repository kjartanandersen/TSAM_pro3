# the compiler: gcc for C program, define as g++ for C++
  CC = g++

  # compiler flags:
  #  -pthread		add threading support
  #  -g    		adds debugging information to the executable file
  #  -std=c++11		support c++11
  CFLAGS  = -std=c++11 -pthread

  # the build target executable:
  TARGET = tsamvgroup26
  
  all: $(TARGET)
  

  $(TARGET): server.cpp
	$(CC) $(CFLAGS) server.cpp -o $(TARGET)

  clean:
	$(RM) $(TARGET)
