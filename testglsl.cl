//
// Created by tly on 17.03.2019.
//

#include <opencl_def>
#include <opencl_common>
#include <opencl_geometric>
#include <opengl_shader>

__uniform uint32_t test = 77;

constexpr bool isPrimeLoop(int i, int k) {
    return (k*k > i) ? true : (i%k == 0) ? false : isPrimeLoop(i, k + 1);
}

constexpr bool isPrime(int i) {
    return isPrimeLoop(i, 2);
}

constexpr int nextPrime(int k) {
    return isPrime(k)?k:nextPrime(k + 1);
}

constexpr int getPrimeLoop(int i, int k) {
// i - nr of primes to advance
// k - some starting prime
    return (i == 0)?k:getPrimeLoop(i - 1, nextPrime(k + 1));
}

constexpr int getPrime(int i) {
    return getPrimeLoop(i, 2);
}

static_assert(getPrime(99) == 541, "computed incorrectly");

template<int N> float4 create_vector(){
    return float4(N);
}

int test1 = 22545;

void main() {
    int test2 = 2345 + test1;
    gl_Position.xy += cl::dot(create_vector<getPrime(99)>(), float4{4,5,6,7}) + test1 + test2;
    //gl_ClipDistance[2] = 0.34;
}