#ifndef _SPARSE_MEMORY_H_
#define _SPARSE_MEMORY_H_

#include "vector.h"


template <unsigned int hard_locations_count, unsigned int address_vector_size, unsigned int data_vector_size> class CSparseMemory
{
  private:
    unsigned int used_locations;

    float distance_range;
    float error_treshold;
    float output_learning_rate;
    float error_filter_k;


    float **w;
    float **output;

    float *distance;
    float *result;

    float *error;

    float activated;


    unsigned int *nearest;
    unsigned int nearest_count;


  public:
    CSparseMemory(  float distance_range = 0.01, float error_treshold = 0.4,
                    float initial_coverage = 0.1);
    ~CSparseMemory();

    void erase();

    /*
    void save(std::vector<float> *address_vector, std::vector<float> *data_vector);
    float* load(std::vector<float> *address_vector);
    */
    float* get_result();


    float get_utilization();

    void save_hard_locations(char *file_name);


  private:
    float vector_angle(float *va, float *vb, unsigned int size);
    void calc_distances(float *address_vector);
    float vector_relative_error(float *va, float *vb, unsigned int size);
    void find_nearest();


};

#endif
