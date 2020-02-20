function output = sha(str)
if nargin<1
  str = '3';
end
sha1hasher = System.Security.Cryptography.SHA1Managed;
sha1= uint8(sha1hasher.ComputeHash(uint8(str))); %consider the string as 8-bit characters
%display as hex:
hex_val = dec2hex(sha1)
string = [];
for i=1:length(hex_val)
%     hex_val(i,1:2)
    string = [string,hex_val(i,1:2)];
end
output = string;

