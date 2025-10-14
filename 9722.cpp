#include<iostream>
#include<vector>

using namespace std;

int main(){
    int t;
    std::cin >> t;
    for (int i=0;i<t;i++){
        int n;
        std::cin >> n;
        vector<int> elems;

        for (int j=0;j<n;++j){
            std::cin>> elems[j];
        }
        
        for (int elem : elems){
            std::cout << elem << " ";
        }
        std::cout << std::endl;
    }
}