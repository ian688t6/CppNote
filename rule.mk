.PHONY: all clean

OBJS = $(patsubst %.cpp, %.o, $(SRCS))
all: $(TARGET)
$(TARGET):$(OBJS)
	$(CXX) $(OBJS) $(CFLAGS) $(LIBS) -o $@

%.o: %.cpp
	$(CXX) -c $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJS) $@


