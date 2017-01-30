#ifndef _ARRAY_H_
#define _ARRAY_H_


template <class t_type, unsigned int _size> class array
{
  public:
    t_type arr[_size];

  public:
    array()
    {

    }

    ~array()
    {

    }

    //acess to vector using v[idx] = value
    t_type &operator[](unsigned int idx)
    {
      return arr[idx];
    }

    //@return vector size
    unsigned int size()
    {
      return _size;
    }

    //shift existing array elements and store new value
    //shift : v[n] = v[n-1]
    //store : v[0] = value
    //@param value
    void add(t_type value)
    {
      unsigned int i;
      for (i = (_size-1); i > 0; i--)
        arr[i] = arr[i-1];
      arr[0] = value;
    }
};


#endif
