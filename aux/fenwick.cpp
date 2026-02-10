// #pragma GCC optimize("O3")
#include <iostream>
#include <cstdio>
#include <vector>
#include <cassert>

template <typename T>
class fenwick_tree_chan
{
public:
    std::vector<T> fenw;
    int n;
    int pw;

    fenwick_tree_chan() : n(0) {}
    fenwick_tree_chan(int n) : n(n)
    {
        fenw.resize(n);
        pw = (n == 0 ? 0 : 1ULL << (63 - __builtin_clzll(unsigned(n))));
    }

    // a[x] += v;
    void modify(int x, T v)
    {
        assert(0 <= x && x < n);
        while (x < n)
        {
            fenw[x] += v;
            x |= x + 1;
        }
    }

    // sum of prefix [0, .. x] 
    T query(int x)
    {
        ++ x;
        assert(0 <= x && x <= n);
        T v{};
        while (x > 0)
        {
            v += fenw[x - 1];
            x &= x - 1;
        }
        return v;
    }

    // Returns the length of the longest prefix (0 indexed) with sum <= c
    int max_prefix(T c)
    {
        T v{};
        int at = 0;
        for (int len = pw; len > 0; len >>= 1)
        {
            if (at + len <= n)
            {
                auto nv = v;
                nv += fenw[at + len - 1];
                if (!(c < nv))
                {
                    v = nv;
                    at += len;
                }
            }
        }
        assert(0 <= at && at <= n);
        return at;
    }

    // sum of [l, l + 1, ... r]
    T query(int l, int r)
    {
        if(l == 0)
            return query(r);
        return query(r) - query(l - 1);
    }
};

int32_t main()
{
    int64_t n, q;
    scanf("%ld", &n);
    scanf("%ld", &q);

    fenwick_tree_chan<int64_t> fen(n + 10);
    
    while(q --)
    {
        int64_t t, a, b;
        scanf("%ld %ld %ld", &t, &a, &b);
        if(t == 1)
            fen.modify(a, b);
        else
            printf("%ld\n", fen.query(b) - fen.query(a - 1));
    }
}