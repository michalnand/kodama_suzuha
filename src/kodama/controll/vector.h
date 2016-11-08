#ifndef _VECTOR_H_
#define _VECTOR_H_

template <class t_type, unsigned int _size> class Vector
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

    t_type &operator[](unsigned int idx)
    {
      return arr[idx];
    }

    unsigned int size()
    {
      return _size;
    }
};


#endif
