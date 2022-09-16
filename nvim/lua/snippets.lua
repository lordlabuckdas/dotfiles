local ls = require("luasnip")

ls.config.setup({
	history = true,
	region_check_events = "CursorHold",
	delete_check_events = "TextChanged",
	store_selection_keys = "<Tab>",
})

ls.add_snippets("cpp", {
  ls.parser.parse_snippet({
    trig = "tpl",
  },
  [[
#include "bits/stdc++.h"
using namespace std;
#define int long long

signed main() {
  ios_base::sync_with_stdio(0);
  cin.tie(0);
  int _t = 1;
  // cin >> _t;
  while(_t--) {
    $0
  }
  return 0;
}]]),
  ls.parser.parse_snippet({
    trig = "us",
  },
  [[
#include "bits/stdc++.h"
using namespace std;
#define int long long

signed main() {
  ios_base::sync_with_stdio(0);
  cin.tie(0);
  freopen("$1.in", "r", stdin);
  freopen("$1.out", "w", stdout);
  $0
}]]),
  ls.parser.parse_snippet({
    trig = "hc",
  },
  [[
#include "bits/stdc++.h"
using namespace std;
#define int long long

signed main() {
  ios_base::sync_with_stdio(0);
  cin.tie(0);
  freopen("input.txt", "r", stdin);
  freopen("output.txt", "w", stdout);
  int _t;
  cin >> _t;
  for(int _i = 1; _i <= _t; _i++) {
    int ans = 0;
    $0
    cout << "Case #" << _i << ": " << ans << endl;
  }
}]]),
  ls.parser.parse_snippet({
    trig = "ks",
  },
  [[
#include "bits/stdc++.h"
using namespace std;
#define int long long

signed main() {
  ios_base::sync_with_stdio(0);
  cin.tie(0);
  int _t;
  cin >> _t;
  for(int _i = 1; _i <= _t; _i++) {
    int ans = 0;
    $0
    cout << "Case #" << _i << ": " << ans << endl;
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
  },
  [[
vector<bool> is_prime(1e6+1, 1);

void sieve(int n = 1e6 + 1) {
  is_prime[0] = is_prime[1] = false;
  for(int i = 2; i <= n; ++i) {
    if(is_prime[i] && (long long)i * i <= n) {
      for(int j = i * i; j <= n; j += i) {
        is_prime[j] = false;
      }
    }
  }
}
]]),
  ls.parser.parse_snippet({
      trig = "bs",
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
    trig = "bpow",
    wordTrig = true,
  },
  [[
long long bpow(long long b, long long p, long long m) {
  long long ans = 1;
  b %= m;
  while(p) {
    if(p & 1)
      ans = ans * b % m;
    b = b * b % m;
    p >>= 1;
  }
  return ans;
}
]]),
  ls.parser.parse_snippet({
    trig = "imod",
  },
  [[
long long imod(long long n, long long m = 1e9 + 7) {
  return bpow(n, m - 2, m);
}
]]),
  ls.parser.parse_snippet({
    trig = "lc",
  },
  [[
#include "bits/stdc++.h"
using namespace std;

$2 solve($1) {
  // int n = nums.size();
  // int m = nums[0].size();
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
  },
  [[
cout<<#$1<<" = "<<$1;]]),
  ls.parser.parse_snippet({
    trig = "pbds",
  },
  [[
#include <ext/pb_ds/assoc_container.hpp>
using namespace __gnu_pbds;
using ordered_set = tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update>;
]]),
  ls.parser.parse_snippet({
    trig = "auue",
  },
  [[
void add_undirected_unweighted_edge(int u, int v) {
  adj[u].push_back(v);
  adj[v].push_back(u);
}]]),
  ls.parser.parse_snippet({
    trig = "adue",
  },
  [[
void add_directed_unweighted_edge(int u, int v) {
  adj[u].push_back(v);
}]]),
  ls.parser.parse_snippet({
    trig = "auwe",
  },
  [[
void add_undirected_weighted_edge(int u, int v, int w) {
  adj[u].push_back({v, w});
  adj[v].push_back({u, w});
}]]),
  ls.parser.parse_snippet({
    trig = "adwe",
  },
  [[
void add_directed_weighted_edge(int u, int v, int w) {
  adj[u].push_back({v, w});
}]]),
  ls.parser.parse_snippet({
    trig = "dsu",
  },
  [[
class union_find {
private:
  vector<int> e;
  int num_sets;
public:
  union_find(int n) {
    e.resize(n + 1, -1);
    num_sets = n;
  }
  int find_set(int u) {
    return e[u] < 0 ? u : e[u] = find_set(e[u]);
  }
  bool in_same_set(int u, int v) {
    return find_set(u) == find_set(v);
  }
  int size() {
    return num_sets;
  }
  int size(int u) {
    return -e[find_set(u)];
  }
  bool merge_set(int u, int v) {
    u = find_set(u);
    v = find_set(v);
    if(u == v)
      return false;
    --num_sets;
    if(e[u] > e[v])
      swap(u, v);
    e[u] += e[v];
    e[v] = u;
    return true;
  }
};
]]),
  ls.parser.parse_snippet({
    trig = "krusk",
  },
  [[
pair<long long, vector<tuple<int, int, int>>> kruskal(vector<tuple<int, int, int>> &edges, int &n) {
  sort(edges.begin(), edges.end(), [](const tuple<int, int, int> &a, const tuple<int, int, int> &b) -> bool {
    return get<2>(a) < get<2>(b);
  });
  long long cost = 0;
  vector<tuple<int, int, int>> mst_edges(n - 1);
  int idx = 0;
  union_find mst(n);
  for(auto [u, v, w]: edges) {
    if(mst.in_same_set(u, v))
      continue;
    cost += w;
    mst_edges[idx++] = {u, v, w};
    mst.merge_set(u, v);
  }
  return {cost, mst_edges};
}]]),
  ls.parser.parse_snippet({
    trig = "make_edges",
  },
  [[
vector<tuple<int, int, int>> make_edge_list(vector<vector<pair<int, int>>> &adj) {
  vector<tuple<int, int, int>> edges;
  int V = adj.size();
  for(int u = 0; u < V; ++u) {
    for(auto [v, w]: adj[u]) {
      edges.push_back({u, v, w});
    }
  }
  return edges;
}]]),
})
