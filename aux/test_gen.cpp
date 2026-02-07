#include<iostream>
#include<random>

const int N = 1e6;
const int Q = 1e6;
const int X = 1e9;

std::mt19937 rng(std::random_device{}());
std::uniform_int_distribution<int> dist_t(1, 2);
std::uniform_int_distribution<int> dist_i(0, N - 1);
std::uniform_int_distribution<int> dist_x(1, X);

int32_t main()
{
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);
    
    int n = N, q = Q;
    std::cout << n << " " << q << std::endl;

    while(q --)
    {
        int t = dist_t(rng);
        std::cout << t << " ";

        if(t == 1)
        {
            int i = dist_i(rng), x = dist_x(rng);
            std::cout << i << " " << x << std::endl;
        }
        else
        {
            int l = dist_i(rng), r = dist_i(rng);
            if(l > r)
                std::swap(l, r);
            std::cout << l << " " << r << std::endl;
        }
    }
}