function output = web(str)

url = ['https://api.pwnedpasswords.com/range/',str];
data = webread(url);
newStr = splitlines(data);
output = newStr;
end
% cell2str(newStr)