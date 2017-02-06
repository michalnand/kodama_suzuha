#ifndef _MATRIX_H_
#define _MATRIX_H_

#include "math_array.h"

template <unsigned int col, unsigned rows, class int_type = float> class matrix
{
  public:
    array<math_array<col, int_type>, rows> m;

    matrix()
    {
      init();
    }

    ~matrix()
    {

    }

    void init()
    {
      unsigned int i, j;
      for (j = 0; j < m.size(); j++)
        for (i = 0; i < m[j].size(); i++)
          m[j][i] = 0;
    }

    //init matrix from init_ptr 1D array (with size rows*col)
    void init(int_type *init_ptr)
    {
      unsigned int i, j, idx = 0;
      for (j = 0; j < m.size(); j++)
        for (i = 0; i < m[j].size(); i++)
        {
          m[j][i] = init_ptr[idx];
          idx++;
        }
    }

    //store matrix into store_ptr 1D array (with size rows*col)
    void store(int_type *store_ptr)
    {
      unsigned int i, j, idx = 0;
      for (j = 0; j < m.size(); j++)
        for (i = 0; i < m[j].size(); i++)
        {
          store_ptr[idx] = m[j][i];
          idx++;
        }
    }

    //multiply matrix by input_vector, result is stored into output_vector
    void multiply_by_vector(math_array<rows, int_type> &output_vector, math_array<col, int_type> &input_vector)
    {
      unsigned int j;
      for (j = 0; j < m.size(); j++)
        output_vector[j] = m[j].dot(input_vector);
    }

    //meassure distance from matrix[j] and input_vector, result is stored into output_vector[j]
    void distance_from_vector(math_array<rows, int_type> &output_vector, math_array<col, int_type> &input_vector)
    {
      unsigned int j;
      for (j = 0; j < m.size(); j++)
        output_vector[j] = m[j].distance(input_vector);
    }
};



#endif
