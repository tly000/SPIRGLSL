//
// Created by tly on 17.03.2019.
//

kernel void copyKernel(global int* a, global int* b){
    a[get_global_id(0)] = b[get_global_id(0)];
}