###代码
```
class Solution {
public:
    string convert(string s, int numRows) {
        if(numRows==1) return s;
        bool flag=false;
        int row=0;
        vector<string> v(numRows);
        for(char c:s)
        {
            v[row]+=c;
            if(row==0||row==numRows-1) flag=!flag;
            row+=flag?1:-1;
        }
        string ans="";
        for(auto ret:v) ans+=ret;
        return ans;
    }
};
```
