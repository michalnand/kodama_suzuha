#ifndef _VECTOR_H_
#define _VECTOR_H_

template <class t_type, int _size> class Vector
{
  public:
    t_type arr[_size];

  public:
    Vector()
    {

    }

    ~Vector()
    {

    }

    t_type &operator[](int idx)
    {
      return arr[idx];
    }

    int size()
    {
      return _size;
    }
};


#endif