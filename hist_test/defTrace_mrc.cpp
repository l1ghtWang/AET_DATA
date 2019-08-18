#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <sys/time.h>
#include <iostream>

#include <fstream> //#include <string.h>
//#include "hyperloglog.h"
//using namespace std;

std::ofstream outFile;
const int PGAP = 1024*1024/4096; //mrc output step
const int MAXL = 100000+3; //number of bins in  reuse time histogram
const int MAXH = 9997; //size of hashvalue table
const int domain = 256; //reuse time histogram compression factor
const int STEP = 1; // sampling rate

struct node {
    long long addr,label;
    node *nxt;
    node(long long _addr = 0, long long _label = 0, node *_nxt = NULL)
         : addr(_addr),label(_label),nxt(_nxt) {}
};

struct tnode {
    long long tm,offset; int size;
};//trace file data structure

node *hashvalue[MAXH];
FILE *fin,*fout;
long long *rtd = new long long[MAXL];
 long long t;
long long n=0;
long long m=0;
long long loc = rand()%(STEP*2-1)+1;
long long node_cnt=0;
long long node_max = 0;
long long tott=0;
//memset (rtd,0,sizeof(long long)*MAXL);
long long domain_value_to_index(long long value)
{
    long long loc = 0,step = 1;
    int index = 0;
    while (loc+step*domain<value) {
        loc += step*domain;
        step *= 2;
        index += domain;
    }
    while (loc<value) index++,loc += step;
    return index;
}

long long domain_index_to_value(long long index)
{
    long long value = 0,step = 1;
    while (index>domain) {
        value += step*domain;
        step *= 2;
        index -= domain;
    }
    while (index>0) {
        value += step;
        index--;
    }
    return value;
}

void insert(long long addr, long long now)
{
    int t = addr%MAXH;
    node *tmp = new node(now,n,hashvalue[t]);
    hashvalue[t] = tmp;
} 

long long find(long long addr, long long now)
{
    int t = addr%MAXH;
    node *tmp = hashvalue[t];
    node *pre = NULL;
    while (tmp) {
        if (tmp->addr==now) {
            long long tlabel = tmp->label;
            if (pre==NULL) hashvalue[t] = tmp->nxt;
            else pre->nxt = tmp->nxt;
            delete tmp;
            return tlabel;
        }
        pre = tmp;
        tmp = tmp->nxt;
    }
    return 0;
}

void solve(long long addr)
{
    long long now = 0;
	now = addr;
    n++;
/*  long long */ addr = now; //Murmurhashvalue3_x86_32(&now,sizeof(now),0x5f61767a);
    t = find(addr,now);
    if (t) {

			rtd[domain_value_to_index(n-t)]++,tott++,node_cnt--;

	}
    if (n==loc) {
		insert(addr,now),loc += rand()%(STEP*2-1)+1,node_cnt++;

	}
    now++;
    if (node_cnt>node_max) node_max = node_cnt;
}

int main()
{
	int ii,j,r = 0;

	for(ii = 0; ii<100; ii++)
	{
		for(j=0;j<1000;j++)
		{
			solve(j);	
		}


	}
	//std::cout << i;
	m = node_cnt*STEP;
	double sum = 0; long long T = 0;
	double tot = 0;
	double N = tott+1.0*tott/(n-m)*m;
	long long step = 1; int dom = 0,dT = 0; loc = 0;
	//outFile << " m=   "<< m <<"  node_cnt   "<<node_cnt<< endl;
	std::cout << "cache_lines,MRC\n";

	for (long long c = 1; c<=m; c++) {
		//outFile << " c=   "<< c << endl;
		while (T<=n && tot/N<c)
		{
			 tot += N-sum;
			 T++;
			 if (T>loc) 
			 {
				if (++dom>domain) dom = 1,step *= 2;
				loc += step;
				dT++;
			 }
			 sum += 1.0*rtd[dT]/step;
   		}

		std::cout <<c<<","<< 1.0*(N-sum)/N<<"\n";
 	}
	
	return 0;

}

