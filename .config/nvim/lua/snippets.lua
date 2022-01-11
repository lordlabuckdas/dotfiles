local ls = require("luasnip")

ls.config.setup({
	history = true,
	region_check_events = "CursorHold",
	delete_check_events = "TextChanged",
	store_selection_keys = "<Tab>",
})

ls.snippets = {
    cpp = {
        ls.parser.parse_snippet({
            trig = "tpl",
            wordTrig = true,
        },
        [[
#include "bits/stdc++.h"
using namespace std;

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    $0
    return 0;
}]]),
        ls.parser.parse_snippet({
            trig = "us",
            wordTrig = true,
        },
        [[
#include "bits/stdc++.h"
using namespace std;

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    freopen("$1.in", "r", stdin);
    freopen("$1.out", "w", stdout);
    $0
}]]),
        ls.parser.parse_snippet({
            trig = "hc",
            wordTrig = true,
        },
        [[
#include "bits/stdc++.h"
using namespace std;

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    int t;
    cint>>t;
    for(int case = 1; case <= t; case++) {
        int ans = 0;
        $0
        cout<<"Case #" << case << ": " << ans << endl;
    }
}]]),
        ls.parser.parse_snippet({
            trig = "ks",
            wordTrig = true,
        },
        [[
#include "bits/stdc++.h"
using namespace std;

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    int t;
    cint>>t;
    for(int case = 1; case <= t; case++) {
        int ans = 0;
        $0
        cout<<"Case #" << case << ": " << ans << endl;
    }
}]]),
        ls.parser.parse_snippet({
            trig = "cses",
            wordTrig = true,
        },
        [[
#include "bits/stdc++.h"
using namespace std;
#define int long long

signed main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    $0
    return 0;
}]]),
        ls.parser.parse_snippet({
            trig = "sieve",
            wordTrig = true,
        },
        [[
vector<bool> prime(1e6+7, 0);

void sieve(long long n) {
    prime[0] = prime[1] = false;
    for (long long p = 2; p * p <= n; p++) {
        if (prime[p] == true) {
            for (long long i = p * p; i <= n; i += p)
                prime[i] = false;
      }
    }
}
]]),
        ls.parser.parse_snippet({
            trig = "bs",
            wordTrig = true,
        },
        [[
long long low = ${1:0}, high = ${2:n - 1}, mid;
while (low <= high) {
    mid = low + (high - low) / 2;
    if (${3:a}[mid] < ${4:x}) {
        low = mid + 1;
    }
    else if (${3:a}[mid] == ${4:x}) {
        $0
    }
    else {
        high = mid - 1;
    }
}
]]),
        ls.parser.parse_snippet({
            trig = "lc",
            wordTrig = true,
        },
        [[
#include "bits/stdc++.h"
using namespace std;

$2 solve($1) {
    // int n = A.size();
    // int m = A[0].size();
    $2 $4;
    $0
    return $4;
}

int main() {
    $1;
    $2 op = solve();
    // cout<<op;
    // for(auto &i: op) {
    //   cout<<i<<" ";
    // }
    // for(auto &i: op) {
    //   for(auto &j: i)
    //     cout<<j<<" ";
    //   cout<<"\n";
    // }
    return 0;
}]]),
        ls.parser.parse_snippet({
            trig = "listnode",
            wordTrig = true,
        },
        [[
struct ListNode {
    ${1:int} val;
    ListNode *next;
    ListNode(): val(0), next(NULL) {}
    ListNode(${1:int} x): val(x), next(NULL) {}
};
]]),
        ls.parser.parse_snippet({
            trig = "treenode",
            wordTrig = true,
        },
        [[
struct TreeNode {
    ${1:int} val;
    TreeNode *left, *right;
    TreeNode(${1:int} x): val(x), left(NULL), right(NULL) {}
};
]]),
        ls.parser.parse_snippet({
            trig = "comb",
            wordTrig = true,
        },
        [[
long ncr(int n,int r) {
    long ans=1;
    r=r>n-r?n-r:r;
    int j=1;
    for(;j<=r;j++,n--) {
        if(n%j==0) {
            ans*=n/j;
      	} else if(ans%j==0) {
            ans=ans/j*n;
      	} else {
            ans=(ans*n)/j;
      	}
    }
    return ans;
}
]]),
        ls.parser.parse_snippet({
            trig = "debmac",
            wordTrig = true,
        },
        [[
#define deb(...) logger(#__VA_ARGS__, __VA_ARGS__)
template<typename ...Args>
void logger(string vars, Args&&... values) {
    cout << vars << " = ";
    string delim = "";
    (..., (cout << delim << values, delim = ", "));
}
]]),
        ls.parser.parse_snippet({
            trig = "deb",
            wordTrig = true,
        },
        [[
cout<<#$1<<" = "<<$1;]]),
        ls.parser.parse_snippet({
            trig = "pbds",
            wordTrig = true,
        },
        [[
#include <ext/pb_ds/assoc_container.hpp>
using namespace __gnu_pbds;
using ordered_set = tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update>;
]]),
        ls.parser.parse_snippet({
            trig = "auue",
            wordTrig = true,
        },
        [[
void add_undirected_unweighted_edge(int u, int v) {
    adj[u].push_back(v);
    adj[v].push_back(u);
}]]),
        ls.parser.parse_snippet({
            trig = "adue",
            wordTrig = true,
        },
        [[
void add_directed_unweighted_edge(int u, int v) {
    adj[u].push_back(v);
}]]),
        ls.parser.parse_snippet({
            trig = "auwe",
            wordTrig = true,
        },
        [[
void add_undirected_weighted_edge(int u, int v, int w) {
    adj[u].push_back({v, w});
    adj[v].push_back({u, w});
}]]),
        ls.parser.parse_snippet({
            trig = "adwe",
            wordTrig = true,
        },
        [[
void add_directed_weighted_edge(int u, int v, int w) {
    adj[u].push_back({v, w});
}]]),
        ls.parser.parse_snippet({
            trig = "dsus",
            wordTrig = true,
        },
        [[
int par[(size_t)(1e5 + 1)];
int sizee[(size_t)(1e5 + 1)];

void make_set(int u) {
    par[u] = u;
    sizee[u] = 1;
}

int find_set(int u) {
    if(u == par[u])
        return u;
    return par[u] = find_set(par[u]);
}

bool union_set(int u, int v) {
    u = find_set(u);
    v = find_set(v);
    if(u == v)
        return false;
    if(sizee[u] < sizee[v])
        swap(u, v);
    par[v] = u;
    sizee[u] += sizee[v];
    return true;
}]]),
        ls.parser.parse_snippet({
            trig = "dsur",
            wordTrig = true,
        },
        [[
int par[(size_t)(1e5 + 1)];
int rankk[(size_t)(1e5 + 1)];

void make_set(int u) {
    par[u] = u;
    rankk[u] = 0;
}

int find_set(int u) {
    if(u == par[u])
        return u;
    return par[u] = find_set(par[u]);
}

bool union_set(int u, int v) {
    u = find_set(u);
    v = find_set(v);
    if(u == v)
        return false;
    if(rankk[u] < rankk[v])
        swap(u, v);
    par[v] = u;
    if(rankk[u] == rankk[v])
        rankk[u]++;
    return true;
}]]),
        ls.parser.parse_snippet({
            trig = "dv",
            wordTrig = true,
        },
        [[
const int dr[4] = {0, 1, 0, -1};
const int dc[4] = {1, 0, -1, 0};
const string ds = "RDLU";
]]),
    },
}
