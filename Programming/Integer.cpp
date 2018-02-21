#include <iostream>
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */

#include <vector>

typedef std::vector<bool> bitstring;

using namespace std;

long max (const long & a, const long & b)
  {
      if(a>b)
        return a;
      else
        return b;
  }

long  min (const long & a, const long & b)
  {
    if(a>b)
      return b;
    else
      return a;

  }


long Digits (const bitstring &  s) //Computes the integer represented by bitstring
  {
      long h = 0;
      long p =1;

      for (unsigned i = 0; i< s.size(); i++)
        {
          if (s[i] == true)
            h = h+p;
           p<<=1;
        }

    return h;
  }


bool AccessBit(const bitstring & a, unsigned i) // This function returns the i-th bit
                                                // of a. If i is out of range, then it
                                                // returns 0
{
  if (i >= a.size())
    return 0;
  else
    return a[i];
}


bitstring Add(const bitstring &a, const bitstring &b)
  {

      bitstring erg(max(a.size(),b.size()), 0); // erg will hold the result of
                                                // the addition. It is initialized
                                                // with 0s
                                                // Maybe we need an extra bit for
                                                // the last carry-overflow
                                                // This is taken care of below


      bool carry = 0;
      int h=0;

      for (unsigned i = 0; i<erg.size(); i++)
        {

          // We now compute the i-th bit and update the carry
          // We use the AccessBit function because i might
          // be out if range

              h =   int(AccessBit(a,i))+ int(AccessBit(b,i)) + int(carry);
              erg[i] = h%2;
              if (h>=2)
                carry = 1;
              else
                carry =0;
          }

      if (carry == 1) // erg has one bit more than the max. number of bits of a and b
        erg.push_back(1);

      return erg;
  }





  template < class T > // This is overloading the output operator
  std::ostream& operator << (std::ostream& os, const std::vector<T>& v)
  {
      os << "[";
      for (typename std::vector<T>::const_iterator ii = v.begin(); ii != v.end(); ++ii)
      {
          os << " " << *ii;
      }
      os << "]";
      return os;
  }


int main()
{

  /* initialize random seed: */
  srand (time(NULL));
  vector<bool> g1(20,0), g2(20,0);

  int N = 1000;
  bool flag;

  cout <<"\n Performing " << N <<" tests: " ;


for (unsigned i =0; i<1000; i++) // Perform 1000 tests
{


    for (int i = 0; i < 20; i++) // Create random 20-bit numbers g1 and g2
      {
          g1[i]=rand() % 2;
          g2[i]=rand() % 2;
      }

    if( (i%10) ==  0)
      {
          cout << "." ;
      }

      if (Digits(g1)+ Digits(g2) != Digits(Add(g1,g2)) )
        {
            flag =1;
        }

  }

  if (flag)
        cout <<"\n There was an error! \n";
  else
    cout <<"\n Tests were successful. No error found  \n";
}
