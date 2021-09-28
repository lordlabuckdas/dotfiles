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
#define SYNC std::ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0)
using namespace std;

int main() {
	SYNC;
	$0
	return 0;
}
]]),
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
	// for(auto i: op) {
	// 	cout<<i<<" ";
	// }
	// for(auto i: op) {
	// 	for(auto j: i)
	// 		cout<<j<<" ";
	// 	cout<<"\n";
	// }
	return 0;
}
]]),
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
cout<<$1<<' ';
]]),
    },
}
