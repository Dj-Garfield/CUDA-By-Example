#include "common/book.h"



int main( void ) {
	cudaDeviceProp prop;
	int dev;

	//int count;
	//HANDLE_ERROR( cudaGetDeviceCount( &count ) );

	HANDLE_ERROR( cudaGetDevice( &dev ) );
	printf("ID of current CUDA device: %d\n", dev );

	memset( &prop , 0, sizeof(cudaDeviceProp) );

	prop.major = 1;
	prop.minor = 3;

	HANDLE_ERROR( cudaChooseDevice( &dev, &prop ) );
	printf("ID of CUDA device closest to revision 1.3: %d\n", dev);
	HANDLE_ERROR( cudaSetDevice(dev) );

	printf("Number of blocks allowed along each dimension of a grid: %d\n", prop.maxGridSize[0]);
	/*
	for( int i = 0; i < count; i++ ) {
		HANDLE_ERROR( cudaGetDeviceProperties( &prop, i ) );
		printf( "Name: %s\n", prop.name);
		printf( "CUDA Compute Capability: %d.%d\n", prop.major, prop.minor);
	}
	*/
}
