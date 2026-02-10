#include "bits/stdc++.h"
using namespace std;

#ifndef arling
    static const auto IOSetup = [] {
        std::cin.tie(nullptr)->sync_with_stdio(false);
        std::cout << std::setprecision(7) << std::fixed;
        return nullptr;
    }();
    struct IOPre {static constexpr int TEN = 10, SZ = TEN * TEN * TEN * TEN; std::array<char, 4 * SZ> num; constexpr IOPre() : num{} {for (int i = 0; i < SZ; i++) {int n = i; for (int j = 3; j >= 0; j--) {num[i * 4 + j] = static_cast<char>(n % TEN + '0'); n /= TEN;}}}};
    struct IO {
    #if !HAVE_DECL_FREAD_UNLOCKED
    #define fread_unlocked fread
    #endif
    #if !HAVE_DECL_FWRITE_UNLOCKED
    #define fwrite_unlocked fwrite
    #endif
        static constexpr int SZ = 1 << 17, LEN = 32, TEN = 10, HUNDRED = TEN * TEN, THOUSAND = HUNDRED * TEN, TENTHOUSAND = THOUSAND * TEN, MAGIC_MULTIPLY = 205, MAGIC_SHIFT = 11, MASK = 15, TWELVE = 12, SIXTEEN = 16; static constexpr IOPre io_pre = {}; std::array<char, SZ> input_buffer, output_buffer; int input_ptr_left, input_ptr_right, output_ptr_right;
        IO(): input_buffer{}, output_buffer{}, input_ptr_left{}, input_ptr_right{}, output_ptr_right{} {}
        IO(const IO&) = delete; IO(IO&&) = delete; IO& operator=(const IO&) = delete; IO& operator=(IO&&) = delete;
        ~IO() { flush(); }
        template <class T>struct is_char {static constexpr bool value = std::is_same_v<T, char>;};
        template <class T>struct is_bool {static constexpr bool value = std::is_same_v<T, bool>;};
        template <class T>struct is_string {static constexpr bool value = std::is_same_v<T, std::string> || std::is_same_v<T, const char*> || std::is_same_v<T, char*> || std::is_same_v<std::decay_t<T>, char*>;;};
        template <class T, class D = void>struct is_custom {static constexpr bool value = false;};
        template <class T>struct is_custom<T, std::void_t<typename T::internal_value_type>> {static constexpr bool value = true;};
        template <class T>struct is_default {static constexpr bool value = is_char<T>::value || is_bool<T>::value || is_string<T>::value || std::is_integral_v<T>;};
        template <class T, class D = void>struct is_iterable {static constexpr bool value = false;};
        template <class T>struct is_iterable <T, typename std::void_t<decltype(std::begin(std::declval<T>())) >> {static constexpr bool value = true;};
        template <class T, class D = void, class E = void>struct is_applyable {static constexpr bool value = false;};
        template <class T>struct is_applyable<T, std::void_t<typename std::tuple_size<T>::type>, std::void_t<decltype(std::get<0>(std::declval<T>()))>> {static constexpr bool value = true;};
        template <class T>static constexpr bool needs_newline = (is_iterable<T>::value || is_applyable<T>::value) && (!is_default<T>::value);
        template <typename T, typename U> struct any_needs_newline {static constexpr bool value = false;}; template <typename T>
        struct any_needs_newline<T, std::index_sequence<>> {static constexpr bool value = false;};
        template <typename T, std::size_t I, std::size_t... Is>struct any_needs_newline<T, std::index_sequence<I, Is...>> {static constexpr bool value = needs_newline<decltype(std::get<I>(std::declval<T>()))> || any_needs_newline<T, std::index_sequence<Is...>>::value;};
        inline void load() {memmove(std::begin(input_buffer), std::begin(input_buffer) + input_ptr_left, input_ptr_right - input_ptr_left); input_ptr_right = input_ptr_right - input_ptr_left + static_cast<int>(fread_unlocked(std::begin(input_buffer) + input_ptr_right - input_ptr_left, 1, SZ - input_ptr_right + input_ptr_left, stdin)); input_ptr_left = 0;}
        inline void read_char(char& c) {if (input_ptr_left + LEN > input_ptr_right) load(); c = input_buffer[input_ptr_left++];}
        inline void read_string(std::string& x) {char c; while (read_char(c), c < '!') continue; x = c; while (read_char(c), c >= '!') x += c;}
        template <class T> inline std::enable_if_t<std::is_integral_v<T>, void> read_int(T& x) {if (input_ptr_left + LEN > input_ptr_right) load(); char c = 0; do c = input_buffer[input_ptr_left++]; while (c < '-'); [[maybe_unused]] bool minus = false; if constexpr (std::is_signed<T>::value == true)if (c == '-') minus = true, c = input_buffer[input_ptr_left++]; x = 0; while (c >= '0')x = x * TEN + (c & MASK), c = input_buffer[input_ptr_left++]; if constexpr (std::is_signed<T>::value == true)if (minus) x = -x;}
        inline void skip_space() {if (input_ptr_left + LEN > input_ptr_right) load(); while (input_buffer[input_ptr_left] <= ' ') input_ptr_left++;}
        inline void flush() {fwrite_unlocked(std::begin(output_buffer), 1, output_ptr_right, stdout); output_ptr_right = 0;}
        inline void write_char(char c) {if (output_ptr_right > SZ - LEN) flush(); output_buffer[output_ptr_right++] = c;}
        inline void write_bool(bool b) {if (output_ptr_right > SZ - LEN) flush(); output_buffer[output_ptr_right++] = b ? '1' : '0';}
        inline void write_string(const std::string& s) {for (auto x : s) write_char(x);}
        inline void write_string(const char* s) {while (*s) write_char(*s++);}
        inline void write_string(char* s) {while (*s) write_char(*s++);}
        template <typename T>inline std::enable_if_t<std::is_integral_v<T>, void> write_int(T x) {if (output_ptr_right > SZ - LEN) flush(); if (!x) {output_buffer[output_ptr_right++] = '0'; return;} if constexpr (std::is_signed<T>::value == true)if (x < 0) output_buffer[output_ptr_right++] = '-', x = -x; int i = TWELVE; std::array<char, SIXTEEN> buf{}; while (x >= TENTHOUSAND) {memcpy(std::begin(buf) + i, std::begin(io_pre.num) + (x % TENTHOUSAND) * 4, 4); x /= TENTHOUSAND; i -= 4;} if (x < HUNDRED) {if (x < TEN) {output_buffer[output_ptr_right++] = static_cast<char>('0' + x);} else {std::uint32_t q = (static_cast<std::uint32_t>(x) * MAGIC_MULTIPLY) >> MAGIC_SHIFT; std::uint32_t r = static_cast<std::uint32_t>(x) - q * TEN; output_buffer[output_ptr_right] = static_cast<char>('0' + q); output_buffer[output_ptr_right + 1] = static_cast<char>('0' + r); output_ptr_right += 2;}} else {if (x < THOUSAND) {memcpy(std::begin(output_buffer) + output_ptr_right, std::begin(io_pre.num) + (x << 2) + 1, 3), output_ptr_right += 3;} else {memcpy(std::begin(output_buffer) + output_ptr_right, std::begin(io_pre.num) + (x << 2), 4), output_ptr_right += 4;}} memcpy(std::begin(output_buffer) + output_ptr_right, std::begin(buf) + i + 4, TWELVE - i); output_ptr_right += TWELVE - i;}
        template <typename T_>IO& operator<<(T_&& x) {using T = typename std::remove_cv < typename std::remove_reference<T_>::type >::type; static_assert(is_custom<T>::value or is_default<T>::value or is_iterable<T>::value or is_applyable<T>::value); if constexpr (is_custom<T>::value) {write_int(x.get());} else if constexpr (is_default<T>::value) {if constexpr (is_bool<T>::value) {write_bool(x);} else if constexpr (is_string<T>::value) {write_string(x);} else if constexpr (is_char<T>::value) {write_char(x);} else if constexpr (std::is_integral_v<T>) {write_int(x);}} else if constexpr (is_iterable<T>::value) {using E = decltype(*std::begin(x)); constexpr char sep = needs_newline<E> ? '\n' : ' '; int i = 0; for (const auto& y : x) {if (i++) write_char(sep); operator<<(y);}} else if constexpr (is_applyable<T>::value) {constexpr char sep = (any_needs_newline < T, std::make_index_sequence<std::tuple_size_v<T> >>::value) ? '\n' : ' '; int i = 0; std::apply([this, &sep, &i](auto const & ... y) {(((i++ ? write_char(sep) : void()), this->operator<<(y)), ...);}, x);} return *this;}
        template <typename T>IO& operator>>(T& x) {static_assert(is_custom<T>::value or is_default<T>::value or is_iterable<T>::value or is_applyable<T>::value); static_assert(!is_bool<T>::value); if constexpr (is_custom<T>::value) {typename T::internal_value_type y; read_int(y); x = y;} else if constexpr (is_default<T>::value) {if constexpr (is_string<T>::value) {read_string(x);} else if constexpr (is_char<T>::value) {read_char(x);} else if constexpr (std::is_integral_v<T>) {read_int(x);}} else if constexpr (is_iterable<T>::value) {for (auto& y : x) operator>>(y);} else if constexpr (is_applyable<T>::value) {std::apply([this](auto & ... y) { ((this->operator>>(y)), ...); }, x);} return *this;}
        IO* tie(std::nullptr_t) { return this; }
        void sync_with_stdio(bool) {}
    } io;
    #define cin io
    #define cout io
#endif

typedef long long           lol;
typedef std::pair<int,int>  pii;
#define pb                  push_back
#define ub                  upper_bound
#define lb                  lower_bound
#define fo(i,l,r,d)         for (auto i=(l); (d)<0?i>(r):((d)>0?i<(r):0); i+=(d))
#define all(x)              x.begin(), x.end()
#define ff                  first
#define ss                  second

std::mt19937 rng (std::chrono::high_resolution_clock::now().time_since_epoch().count());
template <typename A, typename B> std::ostream& operator<< (std::ostream &cout, const std::pair<A, B> &p) { return cout << p.first << ' ' << p.second; } template <typename A, size_t n> std::ostream& operator<< (std::ostream &cout, const std::array<A, n> &v) { for (int i = 0; i < int(n) - 1; ++i) cout << v[i] << ' '; return (n ? cout << v.back(): cout << '\n'); } template <typename A> std::ostream& operator<< (std::ostream &cout, const std::vector<A> &v) { for (int i = 0; i < int(v.size()) - 1; ++i) cout << v[i] << ' '; return (v.size() ? cout << v.back(): cout << '\n'); }
template <typename A, typename B> std::istream& operator>> (std::istream &cin, std::pair<A, B> &p) { cin >> p.first; return cin >> p.second; } template <typename A, size_t n> std::istream& operator>> (std::istream &cin, std::array<A, n> &v) { for (int i = 0; i < n; i++) cin >> v[i]; return cin; } template <typename A> std::istream& operator>> (std::istream &cin, std::vector<A> &v) { for (int i = 0; i < v.size(); i++) cin >> v[i]; return cin; }
template <typename A, typename B> auto amax (A &a, const B b){ if (b > a) a = b ; return a; }
template <typename A, typename B> auto amin (A &a, const B b){ if (b < a) a = b ; return a; }

template <
    class Node,
    bool Pow2 = false
>
class Segtree {
public:
    static constexpr auto cp2 (int n)  {
        return 1 << 32 - __builtin_clz(std::max(1, n - 1));
    }

    explicit Segtree (const int n, const Node id)
    : sz(n), a(N << 1, id), id(id), N(Pow2 ? cp2(sz) : sz) {}

    explicit Segtree (const std::vector<Node>& x, const Node id)
    : sz(std::size(x)), a(N << 1, id), id(id), N(Pow2 ? cp2(sz) : sz) {
        a.resize(N << 1, id);
        std::copy(x.begin(), x.end(), a.begin() + N);
        for (int i = N; --i; )
            a[i] = a[i << 1] + a[i << 1 | 1];
    }

    void set (int i, const Node x) {
        // assert(0 <= i and i < sz);
        for (a[i += N] += x; i >>= 1; )
            a[i] = a[i << 1] + a[i << 1 | 1];
    }

    Node qu (int l, int r) const {
        // assert(0 <= l and l <= r and r <= sz);

        Node x = id, y = id;
        for (l += N, r += N; l < r; l >>= 1, r >>= 1) {
            if (l & 1) x = x + a[l++];
            if (r & 1) y = a[--r] + y;
        }

        return x + y;
    }

    // First j in [l, N] such that pred(F[l, j)) is FALSE, if pred is monotonic
    template<class Predicate>
    int max_right (int l, const Predicate& pred) const {
        // assert(0 <= l and l <= N and pred(id)); 
        if (l == N) return l;

        Node prev = id, t = id;
        l += N;

        do {
            l >>= __builtin_ctz(l);
            if (!pred(prev + a[l])) {
                while (l < N)
                    if (pred(t = prev + a[l <<= 1]))
                        prev = t, l++;
                return l - N;
            }

            prev = prev + a[l++];
        } while ((l & -l) != l);

        return N;
    }

    // First j in [0, r] such that pred(F[j, r)) is TRUE, if pred is monotonic
    template<class Predicate>
    int min_left (int r, const Predicate& pred) const {
        // assert(r > -1 and r <= N and pred(id));
        if(r == 0) return r;

        Node last = id, t = id;
        r += N;
        
        do {
            r--, r >>= __builtin_ctz(~r);
            if (r == 0) r = 1;
            if (!pred(a[r] + last)){
                while (r < N)
                    if (pred(t = a[(r <<= 1) += 1] + last))
                        last = t, r--;
                return r + 1 - N;
            }

            last = a[r] + last;
        } while((r & -r) != r);

        return 0;
    }

private:

    const int sz;
    const int N;
    std::vector<Node> a;
    const Node id;
};

int main(){
    ios_base::sync_with_stdio(0), cin.tie(0);

    int n, q; cin >> n >> q;
    n += 5;

    struct node {
        lol a;
        auto operator+ (const node& x) const {
            return node{a + x.a};
        }
        auto operator+= (const node& x) {
            a += x.a;
            return *this;
        }
    };

    vector a(n, node{});
    Segtree z(a, node{0});

    while(q--){
        int c; cin >> c;
        if(c == 2){
            int l, r; cin >> l >> r;
            ++ r;
            auto f = z.qu(l, r);
            cout << f.a << '\n';
        }else if(c == 1) {
            int p, c; cin >> p >> c;
            z.set(p, node{c});
        }
    }

}