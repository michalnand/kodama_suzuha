#ifndef _MATH_ARRAY_H_
#define _MATH_ARRAY_H_

#include "array.h"

#define MATH_ARRAY_RATIO_MAX    16

//math_array class : vector of floats (or int) with specified size
//some basic operators are implemented such : length. distance, dot and mix
template <unsigned int size_, class int_type = float> class math_array: public array<int_type, size_>
{
  public:
    //init vector of size_ with 0.0 values
    math_array()
    {
      init();
    }

    ~math_array()
    {

    }

    void init()
    {
      unsigned int i;
      for (i = 0; i < size_; i++)
        this->arr[i] = 0;
    }

    //return squre vector length
    int_type length()
    {
      unsigned int i;
      int_type result = 0;
      for (i = 0; i < size_; i++)
        result+= this->arr[i]*this->arr[i];

      return result;
    }

    //return square vectors distance
    //@param v - second vector
    int_type distance(class math_array &v)
    {
      unsigned int i;
      int_type result = 0;
      for (i = 0; i < size_; i++)
      {
        int_type tmp = v[i]-this->arr[i];
        if (tmp < 0)
          tmp = -tmp;
        //tmp = tmp*tmp;
        result+= tmp;
      }
      return result;
    }

    //return vectors dot product
    //@param v - second vector
    int_type dot(class math_array &v)
    {
      unsigned int i;
      int_type result = 0;
      for (i = 0; i < size_; i++)
        result+= v[i]*this->arr[i];

      return result;
    }

    //mix two vectors using formula this = ((MATH_ARRAY_RATIO_MAX - ratio)*this + ratio*v)/MATH_ARRAY_RATIO_MAX
    //ratio must be in range <0, MATH_ARRAY_RATIO_MAX>
    //example : ratio = MATH_ARRAY_RATIO_MAX/2 -> result is vectors average value
    //example : ratio = MATH_ARRAY_RATIO_MAX (default) -> result is copyed new vector
    //@param v - second vector, 1.0 default
    //@param ratio - vectors mixing ratio
    void mix(class math_array &v, int_type ratio = MATH_ARRAY_RATIO_MAX)
    {
      unsigned int i;

      for (i = 0; i < size_; i++)
        this->arr[i] = ((MATH_ARRAY_RATIO_MAX - ratio)*this->arr[i] + ratio*v[i])/MATH_ARRAY_RATIO_MAX;
    }
};


#endif
