format compact
a = 1
b = 'x'
c = true
whos a b c
a == c
a + c
d = [1 2 3 4]
e = ['a' 'b' 'c' 'd']
f = ['abcd']
g = {'a' 'b' 'c' 'd'}
h = {a b c d}
whos d e f g h
intmax int16
intmin int16
intmax
intmin
int16(1000000000000)
int32(-999999999999999999999)
1\2
1/2
int8(1/2)
int8(1/3)
-5^2
(-5) ^ 2
10-6/2
5*4/2*3
a = [1 0; 2 1]
b = [-1 2; 0 1]
c = [3; 2]
d = 5
a + b
a .* b
a * b
a * c
a + c
a + d
a .* d
a * d
v = [2 2 2]
a = diag(v)
a = 2 * eye(3)
w = [2 0 0; 0 2 0; 0 0 2]
a = zeros(3) + w