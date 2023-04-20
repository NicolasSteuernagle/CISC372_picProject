
image:image.c image.h
	gcc -g image.c -o image -lm
image_pthread: pthreads_image.c image.h
	gcc -g pthreads_image.c -o pthreadimage -lm -pthread
image_openmp: openmp_image.c image.h
	gcc -g openmp_image.c -o openmpimage -lm -fopenmp
clean:
	rm -f image pthreadimage openmpimage output.png