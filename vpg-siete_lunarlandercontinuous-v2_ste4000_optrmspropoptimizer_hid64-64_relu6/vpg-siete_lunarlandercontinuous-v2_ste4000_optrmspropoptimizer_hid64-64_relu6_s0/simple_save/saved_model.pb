т‘

џ#І#
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ј
ApplyRMSProp
var"TА

ms"TА
mom"TА
lr"T
rho"T
momentum"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(И
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu6
features"T
activations"T"
Ttype:
2	
W
	Relu6Grad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Л
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'лы	
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
p
Placeholder_1Placeholder*
shape:€€€€€€€€€*
dtype0*'
_output_shapes
:€€€€€€€€€
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_3Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
h
Placeholder_4Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
•
0pi/dense/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@pi/dense/kernel*
valueB"   @   *
dtype0*
_output_shapes
:
Ч
.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *:ЌУЊ*
dtype0*
_output_shapes
: 
Ч
.pi/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
valueB
 *:ЌУ>
о
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2*
dtype0*
_output_shapes

:@
Џ
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
м
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
T0
ё
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
І
pi/dense/kernel
VariableV2*"
_class
loc:@pi/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
”
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
О
pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ы
pi/dense/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias*
	container 
Њ
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
t
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
Ф
pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€@*
transpose_b( 
Й
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€@
[
pi/dense/Relu6Relu6pi/dense/BiasAdd*'
_output_shapes
:€€€€€€€€€@*
T0
©
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Ы
0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *„≥]Њ*
dtype0*
_output_shapes
: 
Ы
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *„≥]>
ф
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@pi/dense_1/kernel*
seed2*
dtype0*
_output_shapes

:@@*

seed 
в
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
ф
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
ж
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Ђ
pi/dense_1/kernel
VariableV2*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name 
џ
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
Д
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0
Т
!pi/dense_1/bias/Initializer/zerosConst*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
valueB@*    *
dtype0
Я
pi/dense_1/bias
VariableV2*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
∆
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias
Ы
pi/dense_1/MatMulMatMulpi/dense/Relu6pi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€@*
transpose_b( *
T0
П
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€@
_
pi/dense_1/Relu6Relu6pi/dense_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€@
©
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ы
0pi/dense_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *≤_ЪЊ*
dtype0*
_output_shapes
: 
Ы
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *≤_Ъ>*
dtype0*
_output_shapes
: 
ф
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@pi/dense_2/kernel*
seed2**
dtype0*
_output_shapes

:@*

seed 
в
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_2/kernel
ф
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0
ж
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel
Ђ
pi/dense_2/kernel
VariableV2*
_output_shapes

:@*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0
џ
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel
Д
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0
Т
!pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0
Я
pi/dense_2/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container 
∆
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
Э
pi/dense_2/MatMulMatMulpi/dense_1/Relu6pi/dense_2/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
П
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
i
pi/log_std/initial_valueConst*
valueB"   њ   њ*
dtype0*
_output_shapes
:
v

pi/log_std
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
Ѓ
pi/log_std/AssignAssign
pi/log_stdpi/log_std/initial_value*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
k
pi/log_std/readIdentity
pi/log_std*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
C
pi/ExpExppi/log_std/read*
T0*
_output_shapes
:
Z
pi/ShapeShapepi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
Z
pi/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
\
pi/random_normal/stddevConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Я
%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*
dtype0*
seed2?*'
_output_shapes
:€€€€€€€€€*

seed *
T0
Н
pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*
T0*'
_output_shapes
:€€€€€€€€€
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*
T0*'
_output_shapes
:€€€€€€€€€
Y
pi/mulMulpi/random_normalpi/Exp*'
_output_shapes
:€€€€€€€€€*
T0
[
pi/addAddpi/dense_2/BiasAddpi/mul*'
_output_shapes
:€€€€€€€€€*
T0
b
pi/subSubPlaceholder_1pi/dense_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
E
pi/Exp_1Exppi/log_std/read*
_output_shapes
:*
T0
O

pi/add_1/yConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
J
pi/add_1Addpi/Exp_1
pi/add_1/y*
T0*
_output_shapes
:
Y

pi/truedivRealDivpi/subpi/add_1*'
_output_shapes
:€€€€€€€€€*
T0
M
pi/pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
U
pi/powPow
pi/truedivpi/pow/y*'
_output_shapes
:€€€€€€€€€*
T0
O

pi/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
Q
pi/mul_1Mul
pi/mul_1/xpi/log_std/read*
_output_shapes
:*
T0
S
pi/add_2Addpi/powpi/mul_1*
T0*'
_output_shapes
:€€€€€€€€€
O

pi/add_3/yConst*
valueB
 *О?л?*
dtype0*
_output_shapes
: 
W
pi/add_3Addpi/add_2
pi/add_3/y*
T0*'
_output_shapes
:€€€€€€€€€
O

pi/mul_2/xConst*
valueB
 *   њ*
dtype0*
_output_shapes
: 
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*
T0*'
_output_shapes
:€€€€€€€€€
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
]
pi/sub_1Subpi/addpi/dense_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
E
pi/Exp_2Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_4/yConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
J
pi/add_4Addpi/Exp_2
pi/add_4/y*
T0*
_output_shapes
:
]
pi/truediv_1RealDivpi/sub_1pi/add_4*
T0*'
_output_shapes
:€€€€€€€€€
O

pi/pow_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
[
pi/pow_1Powpi/truediv_1
pi/pow_1/y*
T0*'
_output_shapes
:€€€€€€€€€
O

pi/mul_3/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Q
pi/mul_3Mul
pi/mul_3/xpi/log_std/read*
_output_shapes
:*
T0
U
pi/add_5Addpi/pow_1pi/mul_3*
T0*'
_output_shapes
:€€€€€€€€€
O

pi/add_6/yConst*
_output_shapes
: *
valueB
 *О?л?*
dtype0
W
pi/add_6Addpi/add_5
pi/add_6/y*
T0*'
_output_shapes
:€€€€€€€€€
O

pi/mul_4/xConst*
valueB
 *   њ*
dtype0*
_output_shapes
: 
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*
T0*'
_output_shapes
:€€€€€€€€€
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
А
pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
£
/v/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*!
_class
loc:@v/dense/kernel*
valueB"   @   *
dtype0
Х
-v/dense/kernel/Initializer/random_uniform/minConst*!
_class
loc:@v/dense/kernel*
valueB
 *:ЌУЊ*
dtype0*
_output_shapes
: 
Х
-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *:ЌУ>*
dtype0*
_output_shapes
: 
л
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*!
_class
loc:@v/dense/kernel*
seed2g
÷
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
и
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
Џ
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
•
v/dense/kernel
VariableV2*
_output_shapes

:@*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0
ѕ
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
{
v/dense/kernel/readIdentityv/dense/kernel*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
М
v/dense/bias/Initializer/zerosConst*
_output_shapes
:@*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0
Щ
v/dense/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@
Ї
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
q
v/dense/bias/readIdentityv/dense/bias*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
Т
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€@
Ж
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*'
_output_shapes
:€€€€€€€€€@*
T0*
data_formatNHWC
Y
v/dense/Relu6Relu6v/dense/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€@
І
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Щ
/v/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *„≥]Њ
Щ
/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *„≥]>*
dtype0*
_output_shapes
: 
с
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@v/dense_1/kernel*
seed2x*
dtype0*
_output_shapes

:@@*

seed 
ё
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
р
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
в
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
©
v/dense_1/kernel
VariableV2*#
_class
loc:@v/dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name 
„
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Б
v/dense_1/kernel/readIdentityv/dense_1/kernel*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Р
 v/dense_1/bias/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Э
v/dense_1/bias
VariableV2*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
¬
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
w
v/dense_1/bias/readIdentityv/dense_1/bias*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0
Ш
v/dense_1/MatMulMatMulv/dense/Relu6v/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€@*
transpose_b( 
М
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€@
]
v/dense_1/Relu6Relu6v/dense_1/BiasAdd*'
_output_shapes
:€€€€€€€€€@*
T0
І
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Щ
/v/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel*
valueB
 *ИОЫЊ*
dtype0
Щ
/v/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel*
valueB
 *ИОЫ>*
dtype0
т
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
seed2Й*
dtype0*
_output_shapes

:@*

seed *
T0*#
_class
loc:@v/dense_2/kernel
ё
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_2/kernel
р
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
в
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
©
v/dense_2/kernel
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container *
shape
:@
„
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Б
v/dense_2/kernel/readIdentityv/dense_2/kernel*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Р
 v/dense_2/bias/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Э
v/dense_2/bias
VariableV2*!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
¬
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
w
v/dense_2/bias/readIdentityv/dense_2/bias*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
Ъ
v/dense_2/MatMulMatMulv/dense_1/Relu6v/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( 
М
v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
l
	v/SqueezeSqueezev/dense_2/BiasAdd*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
*
T0
O
mulMulpi/SumPlaceholder_2*
T0*#
_output_shapes
:€€€€€€€€€
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
V
MeanMeanmulConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
1
NegNegMean*
T0*
_output_shapes
: 
R
subSubPlaceholder_3	v/Squeeze*#
_output_shapes
:€€€€€€€€€*
T0
J
pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
D
powPowsubpow/y*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Z
Mean_1MeanpowConst_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Q
sub_1SubPlaceholder_4pi/Sum*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2Meansub_1Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
B
Neg_1Negpi/Sum*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_3Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_3MeanNeg_1Const_3*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Ф
gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
\
gradients/Mean_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
Ш
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
^
gradients/Mean_grad/Shape_1Shapemul*
_output_shapes
:*
T0*
out_type0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ъ
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
В
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
А
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
И
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
^
gradients/mul_grad/ShapeShapepi/Sum*
T0*
out_type0*
_output_shapes
:
g
gradients/mul_grad/Shape_1ShapePlaceholder_2*
_output_shapes
:*
T0*
out_type0
і
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
w
gradients/mul_grad/MulMulgradients/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:€€€€€€€€€
Я
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
У
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
r
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*#
_output_shapes
:€€€€€€€€€*
T0
•
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Щ
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
÷
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
№
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
c
gradients/pi/Sum_grad/ShapeShapepi/mul_2*
T0*
out_type0*
_output_shapes
:
М
gradients/pi/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :
І
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
≠
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
Р
gradients/pi/Sum_grad/Shape_1Const*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
У
!gradients/pi/Sum_grad/range/startConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
У
!gradients/pi/Sum_grad/range/deltaConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
ё
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
Т
 gradients/pi/Sum_grad/Fill/valueConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
∆
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*

index_type0*
_output_shapes
: 
Г
#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
N*
_output_shapes
:*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
С
gradients/pi/Sum_grad/Maximum/yConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
√
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
_output_shapes
:*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
ї
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
√
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
•
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
`
gradients/pi/mul_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
g
gradients/pi/mul_2_grad/Shape_1Shapepi/add_3*
T0*
out_type0*
_output_shapes
:
√
-gradients/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_2_grad/Shapegradients/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
z
gradients/pi/mul_2_grad/MulMulgradients/pi/Sum_grad/Tilepi/add_3*
T0*'
_output_shapes
:€€€€€€€€€
Ѓ
gradients/pi/mul_2_grad/SumSumgradients/pi/mul_2_grad/Mul-gradients/pi/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Х
gradients/pi/mul_2_grad/ReshapeReshapegradients/pi/mul_2_grad/Sumgradients/pi/mul_2_grad/Shape*
_output_shapes
: *
T0*
Tshape0
~
gradients/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients/pi/Sum_grad/Tile*
T0*'
_output_shapes
:€€€€€€€€€
і
gradients/pi/mul_2_grad/Sum_1Sumgradients/pi/mul_2_grad/Mul_1/gradients/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
!gradients/pi/mul_2_grad/Reshape_1Reshapegradients/pi/mul_2_grad/Sum_1gradients/pi/mul_2_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
v
(gradients/pi/mul_2_grad/tuple/group_depsNoOp ^gradients/pi/mul_2_grad/Reshape"^gradients/pi/mul_2_grad/Reshape_1
Ё
0gradients/pi/mul_2_grad/tuple/control_dependencyIdentitygradients/pi/mul_2_grad/Reshape)^gradients/pi/mul_2_grad/tuple/group_deps*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients/pi/mul_2_grad/Reshape
ф
2gradients/pi/mul_2_grad/tuple/control_dependency_1Identity!gradients/pi/mul_2_grad/Reshape_1)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_2_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
e
gradients/pi/add_3_grad/ShapeShapepi/add_2*
T0*
out_type0*
_output_shapes
:
b
gradients/pi/add_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
√
-gradients/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_3_grad/Shapegradients/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
≈
gradients/pi/add_3_grad/SumSum2gradients/pi/mul_2_grad/tuple/control_dependency_1-gradients/pi/add_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¶
gradients/pi/add_3_grad/ReshapeReshapegradients/pi/add_3_grad/Sumgradients/pi/add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
…
gradients/pi/add_3_grad/Sum_1Sum2gradients/pi/mul_2_grad/tuple/control_dependency_1/gradients/pi/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ы
!gradients/pi/add_3_grad/Reshape_1Reshapegradients/pi/add_3_grad/Sum_1gradients/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/pi/add_3_grad/tuple/group_depsNoOp ^gradients/pi/add_3_grad/Reshape"^gradients/pi/add_3_grad/Reshape_1
о
0gradients/pi/add_3_grad/tuple/control_dependencyIdentitygradients/pi/add_3_grad/Reshape)^gradients/pi/add_3_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*2
_class(
&$loc:@gradients/pi/add_3_grad/Reshape
г
2gradients/pi/add_3_grad/tuple/control_dependency_1Identity!gradients/pi/add_3_grad/Reshape_1)^gradients/pi/add_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_3_grad/Reshape_1*
_output_shapes
: 
c
gradients/pi/add_2_grad/ShapeShapepi/pow*
_output_shapes
:*
T0*
out_type0
i
gradients/pi/add_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
√
-gradients/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_2_grad/Shapegradients/pi/add_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
√
gradients/pi/add_2_grad/SumSum0gradients/pi/add_3_grad/tuple/control_dependency-gradients/pi/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¶
gradients/pi/add_2_grad/ReshapeReshapegradients/pi/add_2_grad/Sumgradients/pi/add_2_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
«
gradients/pi/add_2_grad/Sum_1Sum0gradients/pi/add_3_grad/tuple/control_dependency/gradients/pi/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Я
!gradients/pi/add_2_grad/Reshape_1Reshapegradients/pi/add_2_grad/Sum_1gradients/pi/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/add_2_grad/tuple/group_depsNoOp ^gradients/pi/add_2_grad/Reshape"^gradients/pi/add_2_grad/Reshape_1
о
0gradients/pi/add_2_grad/tuple/control_dependencyIdentitygradients/pi/add_2_grad/Reshape)^gradients/pi/add_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*2
_class(
&$loc:@gradients/pi/add_2_grad/Reshape
з
2gradients/pi/add_2_grad/tuple/control_dependency_1Identity!gradients/pi/add_2_grad/Reshape_1)^gradients/pi/add_2_grad/tuple/group_deps*
_output_shapes
:*
T0*4
_class*
(&loc:@gradients/pi/add_2_grad/Reshape_1
e
gradients/pi/pow_grad/ShapeShape
pi/truediv*
_output_shapes
:*
T0*
out_type0
`
gradients/pi/pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
љ
+gradients/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/pow_grad/Shapegradients/pi/pow_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
О
gradients/pi/pow_grad/mulMul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow/y*
T0*'
_output_shapes
:€€€€€€€€€
`
gradients/pi/pow_grad/sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
h
gradients/pi/pow_grad/subSubpi/pow/ygradients/pi/pow_grad/sub/y*
_output_shapes
: *
T0
y
gradients/pi/pow_grad/PowPow
pi/truedivgradients/pi/pow_grad/sub*
T0*'
_output_shapes
:€€€€€€€€€
К
gradients/pi/pow_grad/mul_1Mulgradients/pi/pow_grad/mulgradients/pi/pow_grad/Pow*
T0*'
_output_shapes
:€€€€€€€€€
™
gradients/pi/pow_grad/SumSumgradients/pi/pow_grad/mul_1+gradients/pi/pow_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
†
gradients/pi/pow_grad/ReshapeReshapegradients/pi/pow_grad/Sumgradients/pi/pow_grad/Shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
d
gradients/pi/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
З
gradients/pi/pow_grad/GreaterGreater
pi/truedivgradients/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:€€€€€€€€€
o
%gradients/pi/pow_grad/ones_like/ShapeShape
pi/truediv*
T0*
out_type0*
_output_shapes
:
j
%gradients/pi/pow_grad/ones_like/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
є
gradients/pi/pow_grad/ones_likeFill%gradients/pi/pow_grad/ones_like/Shape%gradients/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
§
gradients/pi/pow_grad/SelectSelectgradients/pi/pow_grad/Greater
pi/truedivgradients/pi/pow_grad/ones_like*
T0*'
_output_shapes
:€€€€€€€€€
p
gradients/pi/pow_grad/LogLoggradients/pi/pow_grad/Select*
T0*'
_output_shapes
:€€€€€€€€€
k
 gradients/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*
T0*'
_output_shapes
:€€€€€€€€€
ґ
gradients/pi/pow_grad/Select_1Selectgradients/pi/pow_grad/Greatergradients/pi/pow_grad/Log gradients/pi/pow_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
О
gradients/pi/pow_grad/mul_2Mul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow*'
_output_shapes
:€€€€€€€€€*
T0
С
gradients/pi/pow_grad/mul_3Mulgradients/pi/pow_grad/mul_2gradients/pi/pow_grad/Select_1*'
_output_shapes
:€€€€€€€€€*
T0
Ѓ
gradients/pi/pow_grad/Sum_1Sumgradients/pi/pow_grad/mul_3-gradients/pi/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Х
gradients/pi/pow_grad/Reshape_1Reshapegradients/pi/pow_grad/Sum_1gradients/pi/pow_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
p
&gradients/pi/pow_grad/tuple/group_depsNoOp^gradients/pi/pow_grad/Reshape ^gradients/pi/pow_grad/Reshape_1
ж
.gradients/pi/pow_grad/tuple/control_dependencyIdentitygradients/pi/pow_grad/Reshape'^gradients/pi/pow_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/pow_grad/Reshape*'
_output_shapes
:€€€€€€€€€
џ
0gradients/pi/pow_grad/tuple/control_dependency_1Identitygradients/pi/pow_grad/Reshape_1'^gradients/pi/pow_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/pow_grad/Reshape_1*
_output_shapes
: 
`
gradients/pi/mul_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
i
gradients/pi/mul_1_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
√
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
М
gradients/pi/mul_1_grad/MulMul2gradients/pi/add_2_grad/tuple/control_dependency_1pi/log_std/read*
T0*
_output_shapes
:
ђ
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Х
gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Й
gradients/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x2gradients/pi/add_2_grad/tuple/control_dependency_1*
_output_shapes
:*
T0
ґ
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Я
!gradients/pi/mul_1_grad/Reshape_1Reshapegradients/pi/mul_1_grad/Sum_1gradients/pi/mul_1_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
v
(gradients/pi/mul_1_grad/tuple/group_depsNoOp ^gradients/pi/mul_1_grad/Reshape"^gradients/pi/mul_1_grad/Reshape_1
Ё
0gradients/pi/mul_1_grad/tuple/control_dependencyIdentitygradients/pi/mul_1_grad/Reshape)^gradients/pi/mul_1_grad/tuple/group_deps*2
_class(
&$loc:@gradients/pi/mul_1_grad/Reshape*
_output_shapes
: *
T0
з
2gradients/pi/mul_1_grad/tuple/control_dependency_1Identity!gradients/pi/mul_1_grad/Reshape_1)^gradients/pi/mul_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
_output_shapes
:
e
gradients/pi/truediv_grad/ShapeShapepi/sub*
T0*
out_type0*
_output_shapes
:
k
!gradients/pi/truediv_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
…
/gradients/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/truediv_grad/Shape!gradients/pi/truediv_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ш
!gradients/pi/truediv_grad/RealDivRealDiv.gradients/pi/pow_grad/tuple/control_dependencypi/add_1*'
_output_shapes
:€€€€€€€€€*
T0
Є
gradients/pi/truediv_grad/SumSum!gradients/pi/truediv_grad/RealDiv/gradients/pi/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
!gradients/pi/truediv_grad/ReshapeReshapegradients/pi/truediv_grad/Sumgradients/pi/truediv_grad/Shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
^
gradients/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:€€€€€€€€€*
T0
Й
#gradients/pi/truediv_grad/RealDiv_1RealDivgradients/pi/truediv_grad/Negpi/add_1*
T0*'
_output_shapes
:€€€€€€€€€
П
#gradients/pi/truediv_grad/RealDiv_2RealDiv#gradients/pi/truediv_grad/RealDiv_1pi/add_1*'
_output_shapes
:€€€€€€€€€*
T0
Ђ
gradients/pi/truediv_grad/mulMul.gradients/pi/pow_grad/tuple/control_dependency#gradients/pi/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:€€€€€€€€€
Є
gradients/pi/truediv_grad/Sum_1Sumgradients/pi/truediv_grad/mul1gradients/pi/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
•
#gradients/pi/truediv_grad/Reshape_1Reshapegradients/pi/truediv_grad/Sum_1!gradients/pi/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients/pi/truediv_grad/tuple/group_depsNoOp"^gradients/pi/truediv_grad/Reshape$^gradients/pi/truediv_grad/Reshape_1
ц
2gradients/pi/truediv_grad/tuple/control_dependencyIdentity!gradients/pi/truediv_grad/Reshape+^gradients/pi/truediv_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/truediv_grad/Reshape*'
_output_shapes
:€€€€€€€€€
п
4gradients/pi/truediv_grad/tuple/control_dependency_1Identity#gradients/pi/truediv_grad/Reshape_1+^gradients/pi/truediv_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_grad/Reshape_1*
_output_shapes
:
h
gradients/pi/sub_grad/ShapeShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
o
gradients/pi/sub_grad/Shape_1Shapepi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
љ
+gradients/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_grad/Shapegradients/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ѕ
gradients/pi/sub_grad/SumSum2gradients/pi/truediv_grad/tuple/control_dependency+gradients/pi/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
†
gradients/pi/sub_grad/ReshapeReshapegradients/pi/sub_grad/Sumgradients/pi/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
≈
gradients/pi/sub_grad/Sum_1Sum2gradients/pi/truediv_grad/tuple/control_dependency-gradients/pi/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
`
gradients/pi/sub_grad/NegNeggradients/pi/sub_grad/Sum_1*
T0*
_output_shapes
:
§
gradients/pi/sub_grad/Reshape_1Reshapegradients/pi/sub_grad/Neggradients/pi/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
p
&gradients/pi/sub_grad/tuple/group_depsNoOp^gradients/pi/sub_grad/Reshape ^gradients/pi/sub_grad/Reshape_1
ж
.gradients/pi/sub_grad/tuple/control_dependencyIdentitygradients/pi/sub_grad/Reshape'^gradients/pi/sub_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€
м
0gradients/pi/sub_grad/tuple/control_dependency_1Identitygradients/pi/sub_grad/Reshape_1'^gradients/pi/sub_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1
g
gradients/pi/add_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
b
gradients/pi/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
√
-gradients/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_1_grad/Shapegradients/pi/add_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
…
gradients/pi/add_1_grad/SumSum4gradients/pi/truediv_grad/tuple/control_dependency_1-gradients/pi/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Щ
gradients/pi/add_1_grad/ReshapeReshapegradients/pi/add_1_grad/Sumgradients/pi/add_1_grad/Shape*
_output_shapes
:*
T0*
Tshape0
…
gradients/pi/add_1_grad/Sum_1Sum4gradients/pi/truediv_grad/tuple/control_dependency_1/gradients/pi/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ы
!gradients/pi/add_1_grad/Reshape_1Reshapegradients/pi/add_1_grad/Sum_1gradients/pi/add_1_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
v
(gradients/pi/add_1_grad/tuple/group_depsNoOp ^gradients/pi/add_1_grad/Reshape"^gradients/pi/add_1_grad/Reshape_1
б
0gradients/pi/add_1_grad/tuple/control_dependencyIdentitygradients/pi/add_1_grad/Reshape)^gradients/pi/add_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_1_grad/Reshape*
_output_shapes
:
г
2gradients/pi/add_1_grad/tuple/control_dependency_1Identity!gradients/pi/add_1_grad/Reshape_1)^gradients/pi/add_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_1_grad/Reshape_1*
_output_shapes
: 
™
-gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients/pi/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC*
_output_shapes
:
Э
2gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad1^gradients/pi/sub_grad/tuple/control_dependency_1
У
:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity0gradients/pi/sub_grad/tuple/control_dependency_13^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
У
<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Г
gradients/pi/Exp_1_grad/mulMul0gradients/pi/add_1_grad/tuple/control_dependencypi/Exp_1*
T0*
_output_shapes
:
Ё
'gradients/pi/dense_2/MatMul_grad/MatMulMatMul:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencypi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€@*
transpose_b(*
T0
–
)gradients/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Relu6:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@
П
1gradients/pi/dense_2/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_2/MatMul_grad/MatMul*^gradients/pi/dense_2/MatMul_grad/MatMul_1
Р
9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_2/MatMul_grad/MatMul2^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€@
Н
;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_2/MatMul_grad/MatMul_12^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*<
_class2
0.loc:@gradients/pi/dense_2/MatMul_grad/MatMul_1
Ћ
gradients/AddNAddN2gradients/pi/mul_1_grad/tuple/control_dependency_1gradients/pi/Exp_1_grad/mul*
N*
_output_shapes
:*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1
µ
)gradients/pi/dense_1/Relu6_grad/Relu6Grad	Relu6Grad9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencypi/dense_1/Relu6*
T0*'
_output_shapes
:€€€€€€€€€@
£
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/pi/dense_1/Relu6_grad/Relu6Grad*
T0*
data_formatNHWC*
_output_shapes
:@
Ц
2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*^gradients/pi/dense_1/Relu6_grad/Relu6Grad
Ц
:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity)gradients/pi/dense_1/Relu6_grad/Relu6Grad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_1/Relu6_grad/Relu6Grad*'
_output_shapes
:€€€€€€€€€@
У
<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad
Ё
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€@*
transpose_b(
ќ
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu6:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@@*
transpose_b( 
П
1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1
Р
9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul
Н
;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@
±
'gradients/pi/dense/Relu6_grad/Relu6Grad	Relu6Grad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Relu6*
T0*'
_output_shapes
:€€€€€€€€€@
Я
+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense/Relu6_grad/Relu6Grad*
T0*
data_formatNHWC*
_output_shapes
:@
Р
0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense/Relu6_grad/Relu6Grad
О
8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense/Relu6_grad/Relu6Grad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense/Relu6_grad/Relu6Grad*'
_output_shapes
:€€€€€€€€€@
Л
:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
„
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b(
«
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
Й
/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1
И
7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€*
T0
Е
9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
`
Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Р
ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ф
	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_2/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ц
	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:А 
b
Reshape_3/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Ц
	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_4/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ц
	Reshape_4Reshape;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_5/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ц
	Reshape_5Reshape<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_6/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
h
	Reshape_6Reshapegradients/AddNReshape_6/shape*
Tshape0*
_output_shapes
:*
T0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
•
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6concat/axis*

Tidx0*
T0*
N*
_output_shapes	
:Д&
g
PyFuncPyFuncconcat*
Tin
2*
_output_shapes	
:Д&*
Tout
2*
token
pyfunc_0
l
Const_4Const*1
value(B&"   @      @   А         *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ъ
splitSplitVPyFuncConst_4split/split_dim*

Tlen0*
	num_split*A
_output_shapes/
-:А:@:А :@:А::*
T0
`
Reshape_7/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
c
	Reshape_7ReshapesplitReshape_7/shape*
_output_shapes

:@*
T0*
Tshape0
Y
Reshape_8/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
a
	Reshape_8Reshapesplit:1Reshape_8/shape*
T0*
Tshape0*
_output_shapes
:@
`
Reshape_9/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
e
	Reshape_9Reshapesplit:2Reshape_9/shape*
Tshape0*
_output_shapes

:@@*
T0
Z
Reshape_10/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
c

Reshape_10Reshapesplit:3Reshape_10/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_11/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
g

Reshape_11Reshapesplit:4Reshape_11/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_12/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_12Reshapesplit:5Reshape_12/shape*
_output_shapes
:*
T0*
Tshape0
Z
Reshape_13/shapeConst*
_output_shapes
:*
valueB:*
dtype0
c

Reshape_13Reshapesplit:6Reshape_13/shape*
T0*
Tshape0*
_output_shapes
:
°
(pi/dense/kernel/RMSProp/Initializer/onesConst*
_output_shapes

:@*
valueB@*  А?*"
_class
loc:@pi/dense/kernel*
dtype0
ѓ
pi/dense/kernel/RMSProp
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
:@
б
pi/dense/kernel/RMSProp/AssignAssignpi/dense/kernel/RMSProp(pi/dense/kernel/RMSProp/Initializer/ones*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
О
pi/dense/kernel/RMSProp/readIdentitypi/dense/kernel/RMSProp*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel
§
+pi/dense/kernel/RMSProp_1/Initializer/zerosConst*
dtype0*
_output_shapes

:@*
valueB@*    *"
_class
loc:@pi/dense/kernel
±
pi/dense/kernel/RMSProp_1
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container 
и
 pi/dense/kernel/RMSProp_1/AssignAssignpi/dense/kernel/RMSProp_1+pi/dense/kernel/RMSProp_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
Т
pi/dense/kernel/RMSProp_1/readIdentitypi/dense/kernel/RMSProp_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
Х
&pi/dense/bias/RMSProp/Initializer/onesConst*
valueB@*  А?* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:@
£
pi/dense/bias/RMSProp
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias*
	container 
’
pi/dense/bias/RMSProp/AssignAssignpi/dense/bias/RMSProp&pi/dense/bias/RMSProp/Initializer/ones*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Д
pi/dense/bias/RMSProp/readIdentitypi/dense/bias/RMSProp*
_output_shapes
:@*
T0* 
_class
loc:@pi/dense/bias
Ш
)pi/dense/bias/RMSProp_1/Initializer/zerosConst*
valueB@*    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:@
•
pi/dense/bias/RMSProp_1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias*
	container 
№
pi/dense/bias/RMSProp_1/AssignAssignpi/dense/bias/RMSProp_1)pi/dense/bias/RMSProp_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
И
pi/dense/bias/RMSProp_1/readIdentitypi/dense/bias/RMSProp_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
±
:pi/dense_1/kernel/RMSProp/Initializer/ones/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:
Ы
0pi/dense_1/kernel/RMSProp/Initializer/ones/ConstConst*
valueB
 *  А?*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
Б
*pi/dense_1/kernel/RMSProp/Initializer/onesFill:pi/dense_1/kernel/RMSProp/Initializer/ones/shape_as_tensor0pi/dense_1/kernel/RMSProp/Initializer/ones/Const*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
≥
pi/dense_1/kernel/RMSProp
VariableV2*
dtype0*
_output_shapes

:@@*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:@@
й
 pi/dense_1/kernel/RMSProp/AssignAssignpi/dense_1/kernel/RMSProp*pi/dense_1/kernel/RMSProp/Initializer/ones*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Ф
pi/dense_1/kernel/RMSProp/readIdentitypi/dense_1/kernel/RMSProp*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
і
=pi/dense_1/kernel/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:
Ю
3pi/dense_1/kernel/RMSProp_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0
К
-pi/dense_1/kernel/RMSProp_1/Initializer/zerosFill=pi/dense_1/kernel/RMSProp_1/Initializer/zeros/shape_as_tensor3pi/dense_1/kernel/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
µ
pi/dense_1/kernel/RMSProp_1
VariableV2*
_output_shapes

:@@*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:@@*
dtype0
р
"pi/dense_1/kernel/RMSProp_1/AssignAssignpi/dense_1/kernel/RMSProp_1-pi/dense_1/kernel/RMSProp_1/Initializer/zeros*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
Ш
 pi/dense_1/kernel/RMSProp_1/readIdentitypi/dense_1/kernel/RMSProp_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Щ
(pi/dense_1/bias/RMSProp/Initializer/onesConst*
valueB@*  А?*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:@
І
pi/dense_1/bias/RMSProp
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@
Ё
pi/dense_1/bias/RMSProp/AssignAssignpi/dense_1/bias/RMSProp(pi/dense_1/bias/RMSProp/Initializer/ones*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
К
pi/dense_1/bias/RMSProp/readIdentitypi/dense_1/bias/RMSProp*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias
Ь
+pi/dense_1/bias/RMSProp_1/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0
©
pi/dense_1/bias/RMSProp_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias
д
 pi/dense_1/bias/RMSProp_1/AssignAssignpi/dense_1/bias/RMSProp_1+pi/dense_1/bias/RMSProp_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
О
pi/dense_1/bias/RMSProp_1/readIdentitypi/dense_1/bias/RMSProp_1*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
T0
•
*pi/dense_2/kernel/RMSProp/Initializer/onesConst*
valueB@*  А?*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:@
≥
pi/dense_2/kernel/RMSProp
VariableV2*$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
й
 pi/dense_2/kernel/RMSProp/AssignAssignpi/dense_2/kernel/RMSProp*pi/dense_2/kernel/RMSProp/Initializer/ones*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Ф
pi/dense_2/kernel/RMSProp/readIdentitypi/dense_2/kernel/RMSProp*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
®
-pi/dense_2/kernel/RMSProp_1/Initializer/zerosConst*
valueB@*    *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:@
µ
pi/dense_2/kernel/RMSProp_1
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@
р
"pi/dense_2/kernel/RMSProp_1/AssignAssignpi/dense_2/kernel/RMSProp_1-pi/dense_2/kernel/RMSProp_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Ш
 pi/dense_2/kernel/RMSProp_1/readIdentitypi/dense_2/kernel/RMSProp_1*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Щ
(pi/dense_2/bias/RMSProp/Initializer/onesConst*
dtype0*
_output_shapes
:*
valueB*  А?*"
_class
loc:@pi/dense_2/bias
І
pi/dense_2/bias/RMSProp
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:
Ё
pi/dense_2/bias/RMSProp/AssignAssignpi/dense_2/bias/RMSProp(pi/dense_2/bias/RMSProp/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
К
pi/dense_2/bias/RMSProp/readIdentitypi/dense_2/bias/RMSProp*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
Ь
+pi/dense_2/bias/RMSProp_1/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0*
_output_shapes
:
©
pi/dense_2/bias/RMSProp_1
VariableV2*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0
д
 pi/dense_2/bias/RMSProp_1/AssignAssignpi/dense_2/bias/RMSProp_1+pi/dense_2/bias/RMSProp_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
О
pi/dense_2/bias/RMSProp_1/readIdentitypi/dense_2/bias/RMSProp_1*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
П
#pi/log_std/RMSProp/Initializer/onesConst*
valueB*  А?*
_class
loc:@pi/log_std*
dtype0*
_output_shapes
:
Э
pi/log_std/RMSProp
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std*
	container 
…
pi/log_std/RMSProp/AssignAssignpi/log_std/RMSProp#pi/log_std/RMSProp/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
{
pi/log_std/RMSProp/readIdentitypi/log_std/RMSProp*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
Т
&pi/log_std/RMSProp_1/Initializer/zerosConst*
valueB*    *
_class
loc:@pi/log_std*
dtype0*
_output_shapes
:
Я
pi/log_std/RMSProp_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std*
	container *
shape:
–
pi/log_std/RMSProp_1/AssignAssignpi/log_std/RMSProp_1&pi/log_std/RMSProp_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:

pi/log_std/RMSProp_1/readIdentitypi/log_std/RMSProp_1*
_output_shapes
:*
T0*
_class
loc:@pi/log_std
Z
RMSProp/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *RIЭ9
R
RMSProp/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
RMSProp/momentumConst*
valueB
 *    *
dtype0*
_output_shapes
: 
T
RMSProp/epsilonConst*
valueB
 *€жџ.*
dtype0*
_output_shapes
: 
і
+RMSProp/update_pi/dense/kernel/ApplyRMSPropApplyRMSProppi/dense/kernelpi/dense/kernel/RMSProppi/dense/kernel/RMSProp_1RMSProp/learning_rateRMSProp/decayRMSProp/momentumRMSProp/epsilon	Reshape_7*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
use_locking( *
T0
¶
)RMSProp/update_pi/dense/bias/ApplyRMSPropApplyRMSProppi/dense/biaspi/dense/bias/RMSProppi/dense/bias/RMSProp_1RMSProp/learning_rateRMSProp/decayRMSProp/momentumRMSProp/epsilon	Reshape_8*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
use_locking( 
Њ
-RMSProp/update_pi/dense_1/kernel/ApplyRMSPropApplyRMSProppi/dense_1/kernelpi/dense_1/kernel/RMSProppi/dense_1/kernel/RMSProp_1RMSProp/learning_rateRMSProp/decayRMSProp/momentumRMSProp/epsilon	Reshape_9*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
use_locking( 
±
+RMSProp/update_pi/dense_1/bias/ApplyRMSPropApplyRMSProppi/dense_1/biaspi/dense_1/bias/RMSProppi/dense_1/bias/RMSProp_1RMSProp/learning_rateRMSProp/decayRMSProp/momentumRMSProp/epsilon
Reshape_10*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
њ
-RMSProp/update_pi/dense_2/kernel/ApplyRMSPropApplyRMSProppi/dense_2/kernelpi/dense_2/kernel/RMSProppi/dense_2/kernel/RMSProp_1RMSProp/learning_rateRMSProp/decayRMSProp/momentumRMSProp/epsilon
Reshape_11*
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
±
+RMSProp/update_pi/dense_2/bias/ApplyRMSPropApplyRMSProppi/dense_2/biaspi/dense_2/bias/RMSProppi/dense_2/bias/RMSProp_1RMSProp/learning_rateRMSProp/decayRMSProp/momentumRMSProp/epsilon
Reshape_12*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
use_locking( 
Ш
&RMSProp/update_pi/log_std/ApplyRMSPropApplyRMSProp
pi/log_stdpi/log_std/RMSProppi/log_std/RMSProp_1RMSProp/learning_rateRMSProp/decayRMSProp/momentumRMSProp/epsilon
Reshape_13*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@pi/log_std
ќ
RMSPropNoOp*^RMSProp/update_pi/dense/bias/ApplyRMSProp,^RMSProp/update_pi/dense/kernel/ApplyRMSProp,^RMSProp/update_pi/dense_1/bias/ApplyRMSProp.^RMSProp/update_pi/dense_1/kernel/ApplyRMSProp,^RMSProp/update_pi/dense_2/bias/ApplyRMSProp.^RMSProp/update_pi/dense_2/kernel/ApplyRMSProp'^RMSProp/update_pi/log_std/ApplyRMSProp
m
Reshape_14/shapeConst^RMSProp*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
q

Reshape_14Reshapepi/dense/kernel/readReshape_14/shape*
T0*
Tshape0*
_output_shapes	
:А
m
Reshape_15/shapeConst^RMSProp*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
n

Reshape_15Reshapepi/dense/bias/readReshape_15/shape*
Tshape0*
_output_shapes
:@*
T0
m
Reshape_16/shapeConst^RMSProp*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
s

Reshape_16Reshapepi/dense_1/kernel/readReshape_16/shape*
_output_shapes	
:А *
T0*
Tshape0
m
Reshape_17/shapeConst^RMSProp*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
p

Reshape_17Reshapepi/dense_1/bias/readReshape_17/shape*
T0*
Tshape0*
_output_shapes
:@
m
Reshape_18/shapeConst^RMSProp*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
s

Reshape_18Reshapepi/dense_2/kernel/readReshape_18/shape*
_output_shapes	
:А*
T0*
Tshape0
m
Reshape_19/shapeConst^RMSProp*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
p

Reshape_19Reshapepi/dense_2/bias/readReshape_19/shape*
T0*
Tshape0*
_output_shapes
:
m
Reshape_20/shapeConst^RMSProp*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
k

Reshape_20Reshapepi/log_std/readReshape_20/shape*
T0*
Tshape0*
_output_shapes
:
Y
concat_1/axisConst^RMSProp*
dtype0*
_output_shapes
: *
value	B : 
≤
concat_1ConcatV2
Reshape_14
Reshape_15
Reshape_16
Reshape_17
Reshape_18
Reshape_19
Reshape_20concat_1/axis*
T0*
N*
_output_shapes	
:Д&*

Tidx0
h
PyFunc_1PyFuncconcat_1*
Tin
2*
_output_shapes
:*
Tout
2*
token
pyfunc_1
v
Const_5Const^RMSProp*
dtype0*
_output_shapes
:*1
value(B&"   @      @   А         
]
split_1/split_dimConst^RMSProp*
value	B : *
dtype0*
_output_shapes
: 
П
split_1SplitVPyFunc_1Const_5split_1/split_dim*
T0*

Tlen0*
	num_split*0
_output_shapes
:::::::
k
Reshape_21/shapeConst^RMSProp*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_21Reshapesplit_1Reshape_21/shape*
T0*
Tshape0*
_output_shapes

:@
d
Reshape_22/shapeConst^RMSProp*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_22Reshape	split_1:1Reshape_22/shape*
T0*
Tshape0*
_output_shapes
:@
k
Reshape_23/shapeConst^RMSProp*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_23Reshape	split_1:2Reshape_23/shape*
T0*
Tshape0*
_output_shapes

:@@
d
Reshape_24/shapeConst^RMSProp*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_24Reshape	split_1:3Reshape_24/shape*
T0*
Tshape0*
_output_shapes
:@
k
Reshape_25/shapeConst^RMSProp*
_output_shapes
:*
valueB"@      *
dtype0
i

Reshape_25Reshape	split_1:4Reshape_25/shape*
T0*
Tshape0*
_output_shapes

:@
d
Reshape_26/shapeConst^RMSProp*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_26Reshape	split_1:5Reshape_26/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_27/shapeConst^RMSProp*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_27Reshape	split_1:6Reshape_27/shape*
T0*
Tshape0*
_output_shapes
:
£
AssignAssignpi/dense/kernel
Reshape_21*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
Э
Assign_1Assignpi/dense/bias
Reshape_22* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
©
Assign_2Assignpi/dense_1/kernel
Reshape_23*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
°
Assign_3Assignpi/dense_1/bias
Reshape_24*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
©
Assign_4Assignpi/dense_2/kernel
Reshape_25*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel
°
Assign_5Assignpi/dense_2/bias
Reshape_26*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ч
Assign_6Assign
pi/log_std
Reshape_27*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
g

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6^RMSProp
+
group_deps_1NoOp^RMSProp^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Ц
gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
`
gradients_1/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:
§
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
b
gradients_1/Mean_1_grad/Shape_1Shapepow*
_output_shapes
:*
T0*
out_type0
b
gradients_1/Mean_1_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
g
gradients_1/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ґ
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
i
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
¶
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
О
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0
М
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
Ж
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
Ф
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
]
gradients_1/pow_grad/ShapeShapesub*
T0*
out_type0*
_output_shapes
:
_
gradients_1/pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ї
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:€€€€€€€€€
_
gradients_1/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
_output_shapes
: *
T0
l
gradients_1/pow_grad/PowPowsubgradients_1/pow_grad/sub*#
_output_shapes
:€€€€€€€€€*
T0
Г
gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*
T0*#
_output_shapes
:€€€€€€€€€
І
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Щ
gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
c
gradients_1/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
gradients_1/pow_grad/GreaterGreatersubgradients_1/pow_grad/Greater/y*
T0*#
_output_shapes
:€€€€€€€€€
g
$gradients_1/pow_grad/ones_like/ShapeShapesub*
T0*
out_type0*
_output_shapes
:
i
$gradients_1/pow_grad/ones_like/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
≤
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:€€€€€€€€€
Ц
gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersubgradients_1/pow_grad/ones_like*#
_output_shapes
:€€€€€€€€€*
T0
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*#
_output_shapes
:€€€€€€€€€*
T0
_
gradients_1/pow_grad/zeros_like	ZerosLikesub*
T0*#
_output_shapes
:€€€€€€€€€
Ѓ
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*
T0*#
_output_shapes
:€€€€€€€€€
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:€€€€€€€€€
К
gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:€€€€€€€€€
Ђ
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Т
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
ё
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:€€€€€€€€€*
T0
„
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1*
_output_shapes
: 
g
gradients_1/sub_grad/ShapeShapePlaceholder_3*
T0*
out_type0*
_output_shapes
:
e
gradients_1/sub_grad/Shape_1Shape	v/Squeeze*
T0*
out_type0*
_output_shapes
:
Ї
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ї
gradients_1/sub_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Щ
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Њ
gradients_1/sub_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
^
gradients_1/sub_grad/NegNeggradients_1/sub_grad/Sum_1*
T0*
_output_shapes
:
Э
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
ё
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape*#
_output_shapes
:€€€€€€€€€
д
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
ј
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Э
.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
С
3gradients_1/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad
К
;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Ч
=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad
ё
(gradients_1/v/dense_2/MatMul_grad/MatMulMatMul;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€@*
transpose_b(
—
*gradients_1/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Relu6;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0
Т
2gradients_1/v/dense_2/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_2/MatMul_grad/MatMul+^gradients_1/v/dense_2/MatMul_grad/MatMul_1
Ф
:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/MatMul_grad/MatMul3^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*;
_class1
/-loc:@gradients_1/v/dense_2/MatMul_grad/MatMul
С
<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_2/MatMul_grad/MatMul_13^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*=
_class3
1/loc:@gradients_1/v/dense_2/MatMul_grad/MatMul_1
ґ
*gradients_1/v/dense_1/Relu6_grad/Relu6Grad	Relu6Grad:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyv/dense_1/Relu6*
T0*'
_output_shapes
:€€€€€€€€€@
•
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/v/dense_1/Relu6_grad/Relu6Grad*
T0*
data_formatNHWC*
_output_shapes
:@
Щ
3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad+^gradients_1/v/dense_1/Relu6_grad/Relu6Grad
Ъ
;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/v/dense_1/Relu6_grad/Relu6Grad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*=
_class3
1/loc:@gradients_1/v/dense_1/Relu6_grad/Relu6Grad
Ч
=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
ё
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€@
ѕ
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Relu6;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@@
Т
2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1
Ф
:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€@
С
<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

:@@*
T0*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1
≤
(gradients_1/v/dense/Relu6_grad/Relu6Grad	Relu6Grad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Relu6*
T0*'
_output_shapes
:€€€€€€€€€@
°
,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/v/dense/Relu6_grad/Relu6Grad*
_output_shapes
:@*
T0*
data_formatNHWC
У
1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad)^gradients_1/v/dense/Relu6_grad/Relu6Grad
Т
9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/v/dense/Relu6_grad/Relu6Grad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense/Relu6_grad/Relu6Grad*'
_output_shapes
:€€€€€€€€€@
П
;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
Ў
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b(
…
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0
М
0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1
М
8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€
Й
:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes

:@
c
Reshape_28/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ч

Reshape_28Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_28/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_29/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Ч

Reshape_29Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_29/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_30/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Щ

Reshape_30Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_30/shape*
T0*
Tshape0*
_output_shapes	
:А 
c
Reshape_31/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Щ

Reshape_31Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_31/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_32/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ш

Reshape_32Reshape<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_32/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_33/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Щ

Reshape_33Reshape=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_33/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¶
concat_2ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31
Reshape_32
Reshape_33concat_2/axis*
T0*
N*
_output_shapes	
:Ѕ%*

Tidx0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:Ѕ%*
Tout
2*
token
pyfunc_2
h
Const_6Const*-
value$B""   @      @   @      *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
split_2SplitVPyFunc_2Const_6split_2/split_dim*

Tlen0*
	num_split*:
_output_shapes(
&:А:@:А :@:@:*
T0
a
Reshape_34/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_34Reshapesplit_2Reshape_34/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_35/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_35Reshape	split_2:1Reshape_35/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_36/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_36Reshape	split_2:2Reshape_36/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_37/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_37Reshape	split_2:3Reshape_37/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_38/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_38Reshape	split_2:4Reshape_38/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_39/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_39Reshape	split_2:5Reshape_39/shape*
T0*
Tshape0*
_output_shapes
:
Я
'v/dense/kernel/RMSProp/Initializer/onesConst*
valueB@*  А?*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes

:@
≠
v/dense/kernel/RMSProp
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *!
_class
loc:@v/dense/kernel*
	container 
Ё
v/dense/kernel/RMSProp/AssignAssignv/dense/kernel/RMSProp'v/dense/kernel/RMSProp/Initializer/ones*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Л
v/dense/kernel/RMSProp/readIdentityv/dense/kernel/RMSProp*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
Ґ
*v/dense/kernel/RMSProp_1/Initializer/zerosConst*
valueB@*    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes

:@
ѓ
v/dense/kernel/RMSProp_1
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *!
_class
loc:@v/dense/kernel*
	container 
д
v/dense/kernel/RMSProp_1/AssignAssignv/dense/kernel/RMSProp_1*v/dense/kernel/RMSProp_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
П
v/dense/kernel/RMSProp_1/readIdentityv/dense/kernel/RMSProp_1*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
У
%v/dense/bias/RMSProp/Initializer/onesConst*
valueB@*  А?*
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@
°
v/dense/bias/RMSProp
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@
—
v/dense/bias/RMSProp/AssignAssignv/dense/bias/RMSProp%v/dense/bias/RMSProp/Initializer/ones*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Б
v/dense/bias/RMSProp/readIdentityv/dense/bias/RMSProp*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
Ц
(v/dense/bias/RMSProp_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@
£
v/dense/bias/RMSProp_1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container 
Ў
v/dense/bias/RMSProp_1/AssignAssignv/dense/bias/RMSProp_1(v/dense/bias/RMSProp_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Е
v/dense/bias/RMSProp_1/readIdentityv/dense/bias/RMSProp_1*
_class
loc:@v/dense/bias*
_output_shapes
:@*
T0
ѓ
9v/dense_1/kernel/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel
Щ
/v/dense_1/kernel/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*#
_class
loc:@v/dense_1/kernel
э
)v/dense_1/kernel/RMSProp/Initializer/onesFill9v/dense_1/kernel/RMSProp/Initializer/ones/shape_as_tensor/v/dense_1/kernel/RMSProp/Initializer/ones/Const*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
±
v/dense_1/kernel/RMSProp
VariableV2*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@
е
v/dense_1/kernel/RMSProp/AssignAssignv/dense_1/kernel/RMSProp)v/dense_1/kernel/RMSProp/Initializer/ones*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
С
v/dense_1/kernel/RMSProp/readIdentityv/dense_1/kernel/RMSProp*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
≤
<v/dense_1/kernel/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:
Ь
2v/dense_1/kernel/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
Ж
,v/dense_1/kernel/RMSProp_1/Initializer/zerosFill<v/dense_1/kernel/RMSProp_1/Initializer/zeros/shape_as_tensor2v/dense_1/kernel/RMSProp_1/Initializer/zeros/Const*
_output_shapes

:@@*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel
≥
v/dense_1/kernel/RMSProp_1
VariableV2*
dtype0*
_output_shapes

:@@*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
:@@
м
!v/dense_1/kernel/RMSProp_1/AssignAssignv/dense_1/kernel/RMSProp_1,v/dense_1/kernel/RMSProp_1/Initializer/zeros*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
Х
v/dense_1/kernel/RMSProp_1/readIdentityv/dense_1/kernel/RMSProp_1*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Ч
'v/dense_1/bias/RMSProp/Initializer/onesConst*
valueB@*  А?*!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:@
•
v/dense_1/bias/RMSProp
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@
ў
v/dense_1/bias/RMSProp/AssignAssignv/dense_1/bias/RMSProp'v/dense_1/bias/RMSProp/Initializer/ones*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
З
v/dense_1/bias/RMSProp/readIdentityv/dense_1/bias/RMSProp*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
Ъ
*v/dense_1/bias/RMSProp_1/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0
І
v/dense_1/bias/RMSProp_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@
а
v/dense_1/bias/RMSProp_1/AssignAssignv/dense_1/bias/RMSProp_1*v/dense_1/bias/RMSProp_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Л
v/dense_1/bias/RMSProp_1/readIdentityv/dense_1/bias/RMSProp_1*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0
£
)v/dense_2/kernel/RMSProp/Initializer/onesConst*
valueB@*  А?*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes

:@
±
v/dense_2/kernel/RMSProp
VariableV2*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *#
_class
loc:@v/dense_2/kernel
е
v/dense_2/kernel/RMSProp/AssignAssignv/dense_2/kernel/RMSProp)v/dense_2/kernel/RMSProp/Initializer/ones*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
С
v/dense_2/kernel/RMSProp/readIdentityv/dense_2/kernel/RMSProp*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
¶
,v/dense_2/kernel/RMSProp_1/Initializer/zerosConst*
valueB@*    *#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes

:@
≥
v/dense_2/kernel/RMSProp_1
VariableV2*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *#
_class
loc:@v/dense_2/kernel
м
!v/dense_2/kernel/RMSProp_1/AssignAssignv/dense_2/kernel/RMSProp_1,v/dense_2/kernel/RMSProp_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Х
v/dense_2/kernel/RMSProp_1/readIdentityv/dense_2/kernel/RMSProp_1*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Ч
'v/dense_2/bias/RMSProp/Initializer/onesConst*
valueB*  А?*!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
•
v/dense_2/bias/RMSProp
VariableV2*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
ў
v/dense_2/bias/RMSProp/AssignAssignv/dense_2/bias/RMSProp'v/dense_2/bias/RMSProp/Initializer/ones*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
З
v/dense_2/bias/RMSProp/readIdentityv/dense_2/bias/RMSProp*
_output_shapes
:*
T0*!
_class
loc:@v/dense_2/bias
Ъ
*v/dense_2/bias/RMSProp_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
І
v/dense_2/bias/RMSProp_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:
а
v/dense_2/bias/RMSProp_1/AssignAssignv/dense_2/bias/RMSProp_1*v/dense_2/bias/RMSProp_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
Л
v/dense_2/bias/RMSProp_1/readIdentityv/dense_2/bias/RMSProp_1*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
\
RMSProp_1/learning_rateConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
T
RMSProp_1/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
RMSProp_1/momentumConst*
valueB
 *
„#<*
dtype0*
_output_shapes
: 
V
RMSProp_1/epsilonConst*
valueB
 *€жџ.*
dtype0*
_output_shapes
: 
Ї
,RMSProp_1/update_v/dense/kernel/ApplyRMSPropApplyRMSPropv/dense/kernelv/dense/kernel/RMSPropv/dense/kernel/RMSProp_1RMSProp_1/learning_rateRMSProp_1/decayRMSProp_1/momentumRMSProp_1/epsilon
Reshape_34*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
use_locking( 
ђ
*RMSProp_1/update_v/dense/bias/ApplyRMSPropApplyRMSPropv/dense/biasv/dense/bias/RMSPropv/dense/bias/RMSProp_1RMSProp_1/learning_rateRMSProp_1/decayRMSProp_1/momentumRMSProp_1/epsilon
Reshape_35*
use_locking( *
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
ƒ
.RMSProp_1/update_v/dense_1/kernel/ApplyRMSPropApplyRMSPropv/dense_1/kernelv/dense_1/kernel/RMSPropv/dense_1/kernel/RMSProp_1RMSProp_1/learning_rateRMSProp_1/decayRMSProp_1/momentumRMSProp_1/epsilon
Reshape_36*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
ґ
,RMSProp_1/update_v/dense_1/bias/ApplyRMSPropApplyRMSPropv/dense_1/biasv/dense_1/bias/RMSPropv/dense_1/bias/RMSProp_1RMSProp_1/learning_rateRMSProp_1/decayRMSProp_1/momentumRMSProp_1/epsilon
Reshape_37*
_output_shapes
:@*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias
ƒ
.RMSProp_1/update_v/dense_2/kernel/ApplyRMSPropApplyRMSPropv/dense_2/kernelv/dense_2/kernel/RMSPropv/dense_2/kernel/RMSProp_1RMSProp_1/learning_rateRMSProp_1/decayRMSProp_1/momentumRMSProp_1/epsilon
Reshape_38*
_output_shapes

:@*
use_locking( *
T0*#
_class
loc:@v/dense_2/kernel
ґ
,RMSProp_1/update_v/dense_2/bias/ApplyRMSPropApplyRMSPropv/dense_2/biasv/dense_2/bias/RMSPropv/dense_2/bias/RMSProp_1RMSProp_1/learning_rateRMSProp_1/decayRMSProp_1/momentumRMSProp_1/epsilon
Reshape_39*
use_locking( *
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
≠
	RMSProp_1NoOp+^RMSProp_1/update_v/dense/bias/ApplyRMSProp-^RMSProp_1/update_v/dense/kernel/ApplyRMSProp-^RMSProp_1/update_v/dense_1/bias/ApplyRMSProp/^RMSProp_1/update_v/dense_1/kernel/ApplyRMSProp-^RMSProp_1/update_v/dense_2/bias/ApplyRMSProp/^RMSProp_1/update_v/dense_2/kernel/ApplyRMSProp
o
Reshape_40/shapeConst
^RMSProp_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
p

Reshape_40Reshapev/dense/kernel/readReshape_40/shape*
T0*
Tshape0*
_output_shapes	
:А
o
Reshape_41/shapeConst
^RMSProp_1*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
m

Reshape_41Reshapev/dense/bias/readReshape_41/shape*
T0*
Tshape0*
_output_shapes
:@
o
Reshape_42/shapeConst
^RMSProp_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
r

Reshape_42Reshapev/dense_1/kernel/readReshape_42/shape*
T0*
Tshape0*
_output_shapes	
:А 
o
Reshape_43/shapeConst
^RMSProp_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o

Reshape_43Reshapev/dense_1/bias/readReshape_43/shape*
T0*
Tshape0*
_output_shapes
:@
o
Reshape_44/shapeConst
^RMSProp_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
q

Reshape_44Reshapev/dense_2/kernel/readReshape_44/shape*
T0*
Tshape0*
_output_shapes
:@
o
Reshape_45/shapeConst
^RMSProp_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o

Reshape_45Reshapev/dense_2/bias/readReshape_45/shape*
_output_shapes
:*
T0*
Tshape0
[
concat_3/axisConst
^RMSProp_1*
value	B : *
dtype0*
_output_shapes
: 
¶
concat_3ConcatV2
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45concat_3/axis*

Tidx0*
T0*
N*
_output_shapes	
:Ѕ%
h
PyFunc_3PyFuncconcat_3*
Tin
2*
_output_shapes
:*
Tout
2*
token
pyfunc_3
t
Const_7Const
^RMSProp_1*-
value$B""   @      @   @      *
dtype0*
_output_shapes
:
_
split_3/split_dimConst
^RMSProp_1*
value	B : *
dtype0*
_output_shapes
: 
Л
split_3SplitVPyFunc_3Const_7split_3/split_dim*

Tlen0*
	num_split*,
_output_shapes
::::::*
T0
m
Reshape_46/shapeConst
^RMSProp_1*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_46Reshapesplit_3Reshape_46/shape*
Tshape0*
_output_shapes

:@*
T0
f
Reshape_47/shapeConst
^RMSProp_1*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_47Reshape	split_3:1Reshape_47/shape*
_output_shapes
:@*
T0*
Tshape0
m
Reshape_48/shapeConst
^RMSProp_1*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_48Reshape	split_3:2Reshape_48/shape*
T0*
Tshape0*
_output_shapes

:@@
f
Reshape_49/shapeConst
^RMSProp_1*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_49Reshape	split_3:3Reshape_49/shape*
T0*
Tshape0*
_output_shapes
:@
m
Reshape_50/shapeConst
^RMSProp_1*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_50Reshape	split_3:4Reshape_50/shape*
_output_shapes

:@*
T0*
Tshape0
f
Reshape_51/shapeConst
^RMSProp_1*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_51Reshape	split_3:5Reshape_51/shape*
_output_shapes
:*
T0*
Tshape0
£
Assign_7Assignv/dense/kernel
Reshape_46*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
Ы
Assign_8Assignv/dense/bias
Reshape_47*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
І
Assign_9Assignv/dense_1/kernel
Reshape_48*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
†
	Assign_10Assignv/dense_1/bias
Reshape_49*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
®
	Assign_11Assignv/dense_2/kernel
Reshape_50*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
†
	Assign_12Assignv/dense_2/bias
Reshape_51*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
e
group_deps_2NoOp
^Assign_10
^Assign_11
^Assign_12	^Assign_7	^Assign_8	^Assign_9
^RMSProp_1
/
group_deps_3NoOp
^RMSProp_1^group_deps_2
∞	
initNoOp^pi/dense/bias/Assign^pi/dense/bias/RMSProp/Assign^pi/dense/bias/RMSProp_1/Assign^pi/dense/kernel/Assign^pi/dense/kernel/RMSProp/Assign!^pi/dense/kernel/RMSProp_1/Assign^pi/dense_1/bias/Assign^pi/dense_1/bias/RMSProp/Assign!^pi/dense_1/bias/RMSProp_1/Assign^pi/dense_1/kernel/Assign!^pi/dense_1/kernel/RMSProp/Assign#^pi/dense_1/kernel/RMSProp_1/Assign^pi/dense_2/bias/Assign^pi/dense_2/bias/RMSProp/Assign!^pi/dense_2/bias/RMSProp_1/Assign^pi/dense_2/kernel/Assign!^pi/dense_2/kernel/RMSProp/Assign#^pi/dense_2/kernel/RMSProp_1/Assign^pi/log_std/Assign^pi/log_std/RMSProp/Assign^pi/log_std/RMSProp_1/Assign^v/dense/bias/Assign^v/dense/bias/RMSProp/Assign^v/dense/bias/RMSProp_1/Assign^v/dense/kernel/Assign^v/dense/kernel/RMSProp/Assign ^v/dense/kernel/RMSProp_1/Assign^v/dense_1/bias/Assign^v/dense_1/bias/RMSProp/Assign ^v/dense_1/bias/RMSProp_1/Assign^v/dense_1/kernel/Assign ^v/dense_1/kernel/RMSProp/Assign"^v/dense_1/kernel/RMSProp_1/Assign^v/dense_2/bias/Assign^v/dense_2/bias/RMSProp/Assign ^v/dense_2/bias/RMSProp_1/Assign^v/dense_2/kernel/Assign ^v/dense_2/kernel/RMSProp/Assign"^v/dense_2/kernel/RMSProp_1/Assign
c
Reshape_52/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
q

Reshape_52Reshapepi/dense/kernel/readReshape_52/shape*
_output_shapes	
:А*
T0*
Tshape0
c
Reshape_53/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
n

Reshape_53Reshapepi/dense/bias/readReshape_53/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_54/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
s

Reshape_54Reshapepi/dense_1/kernel/readReshape_54/shape*
Tshape0*
_output_shapes	
:А *
T0
c
Reshape_55/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
p

Reshape_55Reshapepi/dense_1/bias/readReshape_55/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_56/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
s

Reshape_56Reshapepi/dense_2/kernel/readReshape_56/shape*
_output_shapes	
:А*
T0*
Tshape0
c
Reshape_57/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
p

Reshape_57Reshapepi/dense_2/bias/readReshape_57/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_58/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
k

Reshape_58Reshapepi/log_std/readReshape_58/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_59/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
p

Reshape_59Reshapev/dense/kernel/readReshape_59/shape*
_output_shapes	
:А*
T0*
Tshape0
c
Reshape_60/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
m

Reshape_60Reshapev/dense/bias/readReshape_60/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_61/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
r

Reshape_61Reshapev/dense_1/kernel/readReshape_61/shape*
T0*
Tshape0*
_output_shapes	
:А 
c
Reshape_62/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
o

Reshape_62Reshapev/dense_1/bias/readReshape_62/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_63/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
q

Reshape_63Reshapev/dense_2/kernel/readReshape_63/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_64/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
o

Reshape_64Reshapev/dense_2/bias/readReshape_64/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_65/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
y

Reshape_65Reshapepi/dense/kernel/RMSProp/readReshape_65/shape*
_output_shapes	
:А*
T0*
Tshape0
c
Reshape_66/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
{

Reshape_66Reshapepi/dense/kernel/RMSProp_1/readReshape_66/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_67/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
v

Reshape_67Reshapepi/dense/bias/RMSProp/readReshape_67/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_68/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
x

Reshape_68Reshapepi/dense/bias/RMSProp_1/readReshape_68/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_69/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
{

Reshape_69Reshapepi/dense_1/kernel/RMSProp/readReshape_69/shape*
_output_shapes	
:А *
T0*
Tshape0
c
Reshape_70/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
}

Reshape_70Reshape pi/dense_1/kernel/RMSProp_1/readReshape_70/shape*
T0*
Tshape0*
_output_shapes	
:А 
c
Reshape_71/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
x

Reshape_71Reshapepi/dense_1/bias/RMSProp/readReshape_71/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_72/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
z

Reshape_72Reshapepi/dense_1/bias/RMSProp_1/readReshape_72/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_73/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
{

Reshape_73Reshapepi/dense_2/kernel/RMSProp/readReshape_73/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_74/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
}

Reshape_74Reshape pi/dense_2/kernel/RMSProp_1/readReshape_74/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_75/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
x

Reshape_75Reshapepi/dense_2/bias/RMSProp/readReshape_75/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_76/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
z

Reshape_76Reshapepi/dense_2/bias/RMSProp_1/readReshape_76/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_77/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
s

Reshape_77Reshapepi/log_std/RMSProp/readReshape_77/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_78/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
u

Reshape_78Reshapepi/log_std/RMSProp_1/readReshape_78/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_79/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
x

Reshape_79Reshapev/dense/kernel/RMSProp/readReshape_79/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_80/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
z

Reshape_80Reshapev/dense/kernel/RMSProp_1/readReshape_80/shape*
Tshape0*
_output_shapes	
:А*
T0
c
Reshape_81/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
u

Reshape_81Reshapev/dense/bias/RMSProp/readReshape_81/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_82/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
w

Reshape_82Reshapev/dense/bias/RMSProp_1/readReshape_82/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_83/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
z

Reshape_83Reshapev/dense_1/kernel/RMSProp/readReshape_83/shape*
_output_shapes	
:А *
T0*
Tshape0
c
Reshape_84/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
|

Reshape_84Reshapev/dense_1/kernel/RMSProp_1/readReshape_84/shape*
_output_shapes	
:А *
T0*
Tshape0
c
Reshape_85/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
w

Reshape_85Reshapev/dense_1/bias/RMSProp/readReshape_85/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_86/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
y

Reshape_86Reshapev/dense_1/bias/RMSProp_1/readReshape_86/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_87/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
y

Reshape_87Reshapev/dense_2/kernel/RMSProp/readReshape_87/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_88/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
{

Reshape_88Reshapev/dense_2/kernel/RMSProp_1/readReshape_88/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_89/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
w

Reshape_89Reshapev/dense_2/bias/RMSProp/readReshape_89/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_90/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
y

Reshape_90Reshapev/dense_2/bias/RMSProp_1/readReshape_90/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
≥
concat_4ConcatV2
Reshape_52
Reshape_53
Reshape_54
Reshape_55
Reshape_56
Reshape_57
Reshape_58
Reshape_59
Reshape_60
Reshape_61
Reshape_62
Reshape_63
Reshape_64
Reshape_65
Reshape_66
Reshape_67
Reshape_68
Reshape_69
Reshape_70
Reshape_71
Reshape_72
Reshape_73
Reshape_74
Reshape_75
Reshape_76
Reshape_77
Reshape_78
Reshape_79
Reshape_80
Reshape_81
Reshape_82
Reshape_83
Reshape_84
Reshape_85
Reshape_86
Reshape_87
Reshape_88
Reshape_89
Reshape_90concat_4/axis*
N'*
_output_shapes

:ѕв*

Tidx0*
T0
h
PyFunc_4PyFuncconcat_4*
Tin
2*
_output_shapes
:*
Tout
2*
token
pyfunc_4
р
Const_8Const*і
value™BІ'"Ь   @      @   А            @      @   @            @   @         @   @   А   А                     @   @         @   @   @   @         *
dtype0*
_output_shapes
:'
S
split_4/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Т
split_4SplitVPyFunc_4Const_8split_4/split_dim*
T0*

Tlen0*
	num_split'*≤
_output_shapesЯ
Ь:::::::::::::::::::::::::::::::::::::::
a
Reshape_91/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_91Reshapesplit_4Reshape_91/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_92/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_92Reshape	split_4:1Reshape_92/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_93/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_93Reshape	split_4:2Reshape_93/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_94/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_94Reshape	split_4:3Reshape_94/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_95/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_95Reshape	split_4:4Reshape_95/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_96/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_96Reshape	split_4:5Reshape_96/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_97/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_97Reshape	split_4:6Reshape_97/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_98/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
i

Reshape_98Reshape	split_4:7Reshape_98/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_99/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_99Reshape	split_4:8Reshape_99/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_100/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
k
Reshape_100Reshape	split_4:9Reshape_100/shape*
_output_shapes

:@@*
T0*
Tshape0
[
Reshape_101/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_101Reshape
split_4:10Reshape_101/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_102/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
l
Reshape_102Reshape
split_4:11Reshape_102/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_103/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_103Reshape
split_4:12Reshape_103/shape*
Tshape0*
_output_shapes
:*
T0
b
Reshape_104/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_104Reshape
split_4:13Reshape_104/shape*
_output_shapes

:@*
T0*
Tshape0
b
Reshape_105/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_105Reshape
split_4:14Reshape_105/shape*
Tshape0*
_output_shapes

:@*
T0
[
Reshape_106/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_106Reshape
split_4:15Reshape_106/shape*
_output_shapes
:@*
T0*
Tshape0
[
Reshape_107/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_107Reshape
split_4:16Reshape_107/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_108/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   @   
l
Reshape_108Reshape
split_4:17Reshape_108/shape*
T0*
Tshape0*
_output_shapes

:@@
b
Reshape_109/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
l
Reshape_109Reshape
split_4:18Reshape_109/shape*
_output_shapes

:@@*
T0*
Tshape0
[
Reshape_110/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_110Reshape
split_4:19Reshape_110/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_111/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_111Reshape
split_4:20Reshape_111/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_112/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
l
Reshape_112Reshape
split_4:21Reshape_112/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_113/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_113Reshape
split_4:22Reshape_113/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_114/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_114Reshape
split_4:23Reshape_114/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_115/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_115Reshape
split_4:24Reshape_115/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_116/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_116Reshape
split_4:25Reshape_116/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_117/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_117Reshape
split_4:26Reshape_117/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_118/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_118Reshape
split_4:27Reshape_118/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_119/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_119Reshape
split_4:28Reshape_119/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_120/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_120Reshape
split_4:29Reshape_120/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_121/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_121Reshape
split_4:30Reshape_121/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_122/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_122Reshape
split_4:31Reshape_122/shape*
T0*
Tshape0*
_output_shapes

:@@
b
Reshape_123/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_123Reshape
split_4:32Reshape_123/shape*
T0*
Tshape0*
_output_shapes

:@@
[
Reshape_124/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_124Reshape
split_4:33Reshape_124/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_125/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_125Reshape
split_4:34Reshape_125/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_126/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_126Reshape
split_4:35Reshape_126/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_127/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_127Reshape
split_4:36Reshape_127/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_128/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_128Reshape
split_4:37Reshape_128/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_129/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_129Reshape
split_4:38Reshape_129/shape*
T0*
Tshape0*
_output_shapes
:
¶
	Assign_13Assignpi/dense/kernel
Reshape_91*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
Ю
	Assign_14Assignpi/dense/bias
Reshape_92*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
™
	Assign_15Assignpi/dense_1/kernel
Reshape_93*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
Ґ
	Assign_16Assignpi/dense_1/bias
Reshape_94*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
™
	Assign_17Assignpi/dense_2/kernel
Reshape_95*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Ґ
	Assign_18Assignpi/dense_2/bias
Reshape_96*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Ш
	Assign_19Assign
pi/log_std
Reshape_97*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
§
	Assign_20Assignv/dense/kernel
Reshape_98*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Ь
	Assign_21Assignv/dense/bias
Reshape_99*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
©
	Assign_22Assignv/dense_1/kernelReshape_100*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
°
	Assign_23Assignv/dense_1/biasReshape_101*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
©
	Assign_24Assignv/dense_2/kernelReshape_102*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
°
	Assign_25Assignv/dense_2/biasReshape_103*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
ѓ
	Assign_26Assignpi/dense/kernel/RMSPropReshape_104*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
±
	Assign_27Assignpi/dense/kernel/RMSProp_1Reshape_105*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
І
	Assign_28Assignpi/dense/bias/RMSPropReshape_106* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
©
	Assign_29Assignpi/dense/bias/RMSProp_1Reshape_107*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
≥
	Assign_30Assignpi/dense_1/kernel/RMSPropReshape_108*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
µ
	Assign_31Assignpi/dense_1/kernel/RMSProp_1Reshape_109*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
Ђ
	Assign_32Assignpi/dense_1/bias/RMSPropReshape_110*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
≠
	Assign_33Assignpi/dense_1/bias/RMSProp_1Reshape_111*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
≥
	Assign_34Assignpi/dense_2/kernel/RMSPropReshape_112*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
µ
	Assign_35Assignpi/dense_2/kernel/RMSProp_1Reshape_113*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Ђ
	Assign_36Assignpi/dense_2/bias/RMSPropReshape_114*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
≠
	Assign_37Assignpi/dense_2/bias/RMSProp_1Reshape_115*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
°
	Assign_38Assignpi/log_std/RMSPropReshape_116*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
£
	Assign_39Assignpi/log_std/RMSProp_1Reshape_117*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
≠
	Assign_40Assignv/dense/kernel/RMSPropReshape_118*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
ѓ
	Assign_41Assignv/dense/kernel/RMSProp_1Reshape_119*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
•
	Assign_42Assignv/dense/bias/RMSPropReshape_120*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
І
	Assign_43Assignv/dense/bias/RMSProp_1Reshape_121*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
±
	Assign_44Assignv/dense_1/kernel/RMSPropReshape_122*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
≥
	Assign_45Assignv/dense_1/kernel/RMSProp_1Reshape_123*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
©
	Assign_46Assignv/dense_1/bias/RMSPropReshape_124*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ђ
	Assign_47Assignv/dense_1/bias/RMSProp_1Reshape_125*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
±
	Assign_48Assignv/dense_2/kernel/RMSPropReshape_126*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
≥
	Assign_49Assignv/dense_2/kernel/RMSProp_1Reshape_127*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
©
	Assign_50Assignv/dense_2/bias/RMSPropReshape_128*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ђ
	Assign_51Assignv/dense_2/bias/RMSProp_1Reshape_129*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
и
group_deps_4NoOp
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
^Assign_38
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
^Assign_44
^Assign_45
^Assign_46
^Assign_47
^Assign_48
^Assign_49
^Assign_50
^Assign_51
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Д
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_a1411c050da84f6789b91b4df5a80e16/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ќ
save/SaveV2/tensor_namesConst*Б
valueчBф'Bpi/dense/biasBpi/dense/bias/RMSPropBpi/dense/bias/RMSProp_1Bpi/dense/kernelBpi/dense/kernel/RMSPropBpi/dense/kernel/RMSProp_1Bpi/dense_1/biasBpi/dense_1/bias/RMSPropBpi/dense_1/bias/RMSProp_1Bpi/dense_1/kernelBpi/dense_1/kernel/RMSPropBpi/dense_1/kernel/RMSProp_1Bpi/dense_2/biasBpi/dense_2/bias/RMSPropBpi/dense_2/bias/RMSProp_1Bpi/dense_2/kernelBpi/dense_2/kernel/RMSPropBpi/dense_2/kernel/RMSProp_1B
pi/log_stdBpi/log_std/RMSPropBpi/log_std/RMSProp_1Bv/dense/biasBv/dense/bias/RMSPropBv/dense/bias/RMSProp_1Bv/dense/kernelBv/dense/kernel/RMSPropBv/dense/kernel/RMSProp_1Bv/dense_1/biasBv/dense_1/bias/RMSPropBv/dense_1/bias/RMSProp_1Bv/dense_1/kernelBv/dense_1/kernel/RMSPropBv/dense_1/kernel/RMSProp_1Bv/dense_2/biasBv/dense_2/bias/RMSPropBv/dense_2/bias/RMSProp_1Bv/dense_2/kernelBv/dense_2/kernel/RMSPropBv/dense_2/kernel/RMSProp_1*
dtype0*
_output_shapes
:'
±
save/SaveV2/shape_and_slicesConst*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
Ж
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/RMSProppi/dense/bias/RMSProp_1pi/dense/kernelpi/dense/kernel/RMSProppi/dense/kernel/RMSProp_1pi/dense_1/biaspi/dense_1/bias/RMSProppi/dense_1/bias/RMSProp_1pi/dense_1/kernelpi/dense_1/kernel/RMSProppi/dense_1/kernel/RMSProp_1pi/dense_2/biaspi/dense_2/bias/RMSProppi/dense_2/bias/RMSProp_1pi/dense_2/kernelpi/dense_2/kernel/RMSProppi/dense_2/kernel/RMSProp_1
pi/log_stdpi/log_std/RMSProppi/log_std/RMSProp_1v/dense/biasv/dense/bias/RMSPropv/dense/bias/RMSProp_1v/dense/kernelv/dense/kernel/RMSPropv/dense/kernel/RMSProp_1v/dense_1/biasv/dense_1/bias/RMSPropv/dense_1/bias/RMSProp_1v/dense_1/kernelv/dense_1/kernel/RMSPropv/dense_1/kernel/RMSProp_1v/dense_2/biasv/dense_2/bias/RMSPropv/dense_2/bias/RMSProp_1v/dense_2/kernelv/dense_2/kernel/RMSPropv/dense_2/kernel/RMSProp_1*5
dtypes+
)2'
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
—
save/RestoreV2/tensor_namesConst*
_output_shapes
:'*Б
valueчBф'Bpi/dense/biasBpi/dense/bias/RMSPropBpi/dense/bias/RMSProp_1Bpi/dense/kernelBpi/dense/kernel/RMSPropBpi/dense/kernel/RMSProp_1Bpi/dense_1/biasBpi/dense_1/bias/RMSPropBpi/dense_1/bias/RMSProp_1Bpi/dense_1/kernelBpi/dense_1/kernel/RMSPropBpi/dense_1/kernel/RMSProp_1Bpi/dense_2/biasBpi/dense_2/bias/RMSPropBpi/dense_2/bias/RMSProp_1Bpi/dense_2/kernelBpi/dense_2/kernel/RMSPropBpi/dense_2/kernel/RMSProp_1B
pi/log_stdBpi/log_std/RMSPropBpi/log_std/RMSProp_1Bv/dense/biasBv/dense/bias/RMSPropBv/dense/bias/RMSProp_1Bv/dense/kernelBv/dense/kernel/RMSPropBv/dense/kernel/RMSProp_1Bv/dense_1/biasBv/dense_1/bias/RMSPropBv/dense_1/bias/RMSProp_1Bv/dense_1/kernelBv/dense_1/kernel/RMSPropBv/dense_1/kernel/RMSProp_1Bv/dense_2/biasBv/dense_2/bias/RMSPropBv/dense_2/bias/RMSProp_1Bv/dense_2/kernelBv/dense_2/kernel/RMSPropBv/dense_2/kernel/RMSProp_1*
dtype0
і
save/RestoreV2/shape_and_slicesConst*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
—
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*≤
_output_shapesЯ
Ь:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'
§
save/AssignAssignpi/dense/biassave/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
∞
save/Assign_1Assignpi/dense/bias/RMSPropsave/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
≤
save/Assign_2Assignpi/dense/bias/RMSProp_1save/RestoreV2:2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
∞
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
Є
save/Assign_4Assignpi/dense/kernel/RMSPropsave/RestoreV2:4*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
Ї
save/Assign_5Assignpi/dense/kernel/RMSProp_1save/RestoreV2:5*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
ђ
save/Assign_6Assignpi/dense_1/biassave/RestoreV2:6*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
і
save/Assign_7Assignpi/dense_1/bias/RMSPropsave/RestoreV2:7*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ґ
save/Assign_8Assignpi/dense_1/bias/RMSProp_1save/RestoreV2:8*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
і
save/Assign_9Assignpi/dense_1/kernelsave/RestoreV2:9*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
Њ
save/Assign_10Assignpi/dense_1/kernel/RMSPropsave/RestoreV2:10*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ј
save/Assign_11Assignpi/dense_1/kernel/RMSProp_1save/RestoreV2:11*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
Ѓ
save/Assign_12Assignpi/dense_2/biassave/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
ґ
save/Assign_13Assignpi/dense_2/bias/RMSPropsave/RestoreV2:13*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Є
save/Assign_14Assignpi/dense_2/bias/RMSProp_1save/RestoreV2:14*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
ґ
save/Assign_15Assignpi/dense_2/kernelsave/RestoreV2:15*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Њ
save/Assign_16Assignpi/dense_2/kernel/RMSPropsave/RestoreV2:16*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ј
save/Assign_17Assignpi/dense_2/kernel/RMSProp_1save/RestoreV2:17*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
§
save/Assign_18Assign
pi/log_stdsave/RestoreV2:18*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
ђ
save/Assign_19Assignpi/log_std/RMSPropsave/RestoreV2:19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
Ѓ
save/Assign_20Assignpi/log_std/RMSProp_1save/RestoreV2:20*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
®
save/Assign_21Assignv/dense/biassave/RestoreV2:21*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
∞
save/Assign_22Assignv/dense/bias/RMSPropsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
≤
save/Assign_23Assignv/dense/bias/RMSProp_1save/RestoreV2:23*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
∞
save/Assign_24Assignv/dense/kernelsave/RestoreV2:24*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Є
save/Assign_25Assignv/dense/kernel/RMSPropsave/RestoreV2:25*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Ї
save/Assign_26Assignv/dense/kernel/RMSProp_1save/RestoreV2:26*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
ђ
save/Assign_27Assignv/dense_1/biassave/RestoreV2:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
і
save/Assign_28Assignv/dense_1/bias/RMSPropsave/RestoreV2:28*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
ґ
save/Assign_29Assignv/dense_1/bias/RMSProp_1save/RestoreV2:29*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
і
save/Assign_30Assignv/dense_1/kernelsave/RestoreV2:30*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
Љ
save/Assign_31Assignv/dense_1/kernel/RMSPropsave/RestoreV2:31*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Њ
save/Assign_32Assignv/dense_1/kernel/RMSProp_1save/RestoreV2:32*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ђ
save/Assign_33Assignv/dense_2/biassave/RestoreV2:33*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
і
save/Assign_34Assignv/dense_2/bias/RMSPropsave/RestoreV2:34*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
ґ
save/Assign_35Assignv/dense_2/bias/RMSProp_1save/RestoreV2:35*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
і
save/Assign_36Assignv/dense_2/kernelsave/RestoreV2:36*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Љ
save/Assign_37Assignv/dense_2/kernel/RMSPropsave/RestoreV2:37*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Њ
save/Assign_38Assignv/dense_2/kernel/RMSProp_1save/RestoreV2:38*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
•
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
shape: *
dtype0
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_f3c4b20282654cea987e3e7fb9b11a09/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
–
save_1/SaveV2/tensor_namesConst*Б
valueчBф'Bpi/dense/biasBpi/dense/bias/RMSPropBpi/dense/bias/RMSProp_1Bpi/dense/kernelBpi/dense/kernel/RMSPropBpi/dense/kernel/RMSProp_1Bpi/dense_1/biasBpi/dense_1/bias/RMSPropBpi/dense_1/bias/RMSProp_1Bpi/dense_1/kernelBpi/dense_1/kernel/RMSPropBpi/dense_1/kernel/RMSProp_1Bpi/dense_2/biasBpi/dense_2/bias/RMSPropBpi/dense_2/bias/RMSProp_1Bpi/dense_2/kernelBpi/dense_2/kernel/RMSPropBpi/dense_2/kernel/RMSProp_1B
pi/log_stdBpi/log_std/RMSPropBpi/log_std/RMSProp_1Bv/dense/biasBv/dense/bias/RMSPropBv/dense/bias/RMSProp_1Bv/dense/kernelBv/dense/kernel/RMSPropBv/dense/kernel/RMSProp_1Bv/dense_1/biasBv/dense_1/bias/RMSPropBv/dense_1/bias/RMSProp_1Bv/dense_1/kernelBv/dense_1/kernel/RMSPropBv/dense_1/kernel/RMSProp_1Bv/dense_2/biasBv/dense_2/bias/RMSPropBv/dense_2/bias/RMSProp_1Bv/dense_2/kernelBv/dense_2/kernel/RMSPropBv/dense_2/kernel/RMSProp_1*
dtype0*
_output_shapes
:'
≥
save_1/SaveV2/shape_and_slicesConst*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
О
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/RMSProppi/dense/bias/RMSProp_1pi/dense/kernelpi/dense/kernel/RMSProppi/dense/kernel/RMSProp_1pi/dense_1/biaspi/dense_1/bias/RMSProppi/dense_1/bias/RMSProp_1pi/dense_1/kernelpi/dense_1/kernel/RMSProppi/dense_1/kernel/RMSProp_1pi/dense_2/biaspi/dense_2/bias/RMSProppi/dense_2/bias/RMSProp_1pi/dense_2/kernelpi/dense_2/kernel/RMSProppi/dense_2/kernel/RMSProp_1
pi/log_stdpi/log_std/RMSProppi/log_std/RMSProp_1v/dense/biasv/dense/bias/RMSPropv/dense/bias/RMSProp_1v/dense/kernelv/dense/kernel/RMSPropv/dense/kernel/RMSProp_1v/dense_1/biasv/dense_1/bias/RMSPropv/dense_1/bias/RMSProp_1v/dense_1/kernelv/dense_1/kernel/RMSPropv/dense_1/kernel/RMSProp_1v/dense_2/biasv/dense_2/bias/RMSPropv/dense_2/bias/RMSProp_1v/dense_2/kernelv/dense_2/kernel/RMSPropv/dense_2/kernel/RMSProp_1*5
dtypes+
)2'
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
”
save_1/RestoreV2/tensor_namesConst*Б
valueчBф'Bpi/dense/biasBpi/dense/bias/RMSPropBpi/dense/bias/RMSProp_1Bpi/dense/kernelBpi/dense/kernel/RMSPropBpi/dense/kernel/RMSProp_1Bpi/dense_1/biasBpi/dense_1/bias/RMSPropBpi/dense_1/bias/RMSProp_1Bpi/dense_1/kernelBpi/dense_1/kernel/RMSPropBpi/dense_1/kernel/RMSProp_1Bpi/dense_2/biasBpi/dense_2/bias/RMSPropBpi/dense_2/bias/RMSProp_1Bpi/dense_2/kernelBpi/dense_2/kernel/RMSPropBpi/dense_2/kernel/RMSProp_1B
pi/log_stdBpi/log_std/RMSPropBpi/log_std/RMSProp_1Bv/dense/biasBv/dense/bias/RMSPropBv/dense/bias/RMSProp_1Bv/dense/kernelBv/dense/kernel/RMSPropBv/dense/kernel/RMSProp_1Bv/dense_1/biasBv/dense_1/bias/RMSPropBv/dense_1/bias/RMSProp_1Bv/dense_1/kernelBv/dense_1/kernel/RMSPropBv/dense_1/kernel/RMSProp_1Bv/dense_2/biasBv/dense_2/bias/RMSPropBv/dense_2/bias/RMSProp_1Bv/dense_2/kernelBv/dense_2/kernel/RMSPropBv/dense_2/kernel/RMSProp_1*
dtype0*
_output_shapes
:'
ґ
!save_1/RestoreV2/shape_and_slicesConst*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
ў
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*5
dtypes+
)2'*≤
_output_shapesЯ
Ь:::::::::::::::::::::::::::::::::::::::
®
save_1/AssignAssignpi/dense/biassave_1/RestoreV2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
і
save_1/Assign_1Assignpi/dense/bias/RMSPropsave_1/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
ґ
save_1/Assign_2Assignpi/dense/bias/RMSProp_1save_1/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
і
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
Љ
save_1/Assign_4Assignpi/dense/kernel/RMSPropsave_1/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
Њ
save_1/Assign_5Assignpi/dense/kernel/RMSProp_1save_1/RestoreV2:5*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
∞
save_1/Assign_6Assignpi/dense_1/biassave_1/RestoreV2:6*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
Є
save_1/Assign_7Assignpi/dense_1/bias/RMSPropsave_1/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ї
save_1/Assign_8Assignpi/dense_1/bias/RMSProp_1save_1/RestoreV2:8*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
Є
save_1/Assign_9Assignpi/dense_1/kernelsave_1/RestoreV2:9*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
¬
save_1/Assign_10Assignpi/dense_1/kernel/RMSPropsave_1/RestoreV2:10*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ƒ
save_1/Assign_11Assignpi/dense_1/kernel/RMSProp_1save_1/RestoreV2:11*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
≤
save_1/Assign_12Assignpi/dense_2/biassave_1/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Ї
save_1/Assign_13Assignpi/dense_2/bias/RMSPropsave_1/RestoreV2:13*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Љ
save_1/Assign_14Assignpi/dense_2/bias/RMSProp_1save_1/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
Ї
save_1/Assign_15Assignpi/dense_2/kernelsave_1/RestoreV2:15*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
¬
save_1/Assign_16Assignpi/dense_2/kernel/RMSPropsave_1/RestoreV2:16*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ƒ
save_1/Assign_17Assignpi/dense_2/kernel/RMSProp_1save_1/RestoreV2:17*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
®
save_1/Assign_18Assign
pi/log_stdsave_1/RestoreV2:18*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
∞
save_1/Assign_19Assignpi/log_std/RMSPropsave_1/RestoreV2:19*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
≤
save_1/Assign_20Assignpi/log_std/RMSProp_1save_1/RestoreV2:20*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
ђ
save_1/Assign_21Assignv/dense/biassave_1/RestoreV2:21*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
і
save_1/Assign_22Assignv/dense/bias/RMSPropsave_1/RestoreV2:22*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ґ
save_1/Assign_23Assignv/dense/bias/RMSProp_1save_1/RestoreV2:23*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
і
save_1/Assign_24Assignv/dense/kernelsave_1/RestoreV2:24*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Љ
save_1/Assign_25Assignv/dense/kernel/RMSPropsave_1/RestoreV2:25*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Њ
save_1/Assign_26Assignv/dense/kernel/RMSProp_1save_1/RestoreV2:26*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
∞
save_1/Assign_27Assignv/dense_1/biassave_1/RestoreV2:27*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Є
save_1/Assign_28Assignv/dense_1/bias/RMSPropsave_1/RestoreV2:28*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ї
save_1/Assign_29Assignv/dense_1/bias/RMSProp_1save_1/RestoreV2:29*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
Є
save_1/Assign_30Assignv/dense_1/kernelsave_1/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ј
save_1/Assign_31Assignv/dense_1/kernel/RMSPropsave_1/RestoreV2:31*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
¬
save_1/Assign_32Assignv/dense_1/kernel/RMSProp_1save_1/RestoreV2:32*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
∞
save_1/Assign_33Assignv/dense_2/biassave_1/RestoreV2:33*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
Є
save_1/Assign_34Assignv/dense_2/bias/RMSPropsave_1/RestoreV2:34*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
Ї
save_1/Assign_35Assignv/dense_2/bias/RMSProp_1save_1/RestoreV2:35*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Є
save_1/Assign_36Assignv/dense_2/kernelsave_1/RestoreV2:36*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ј
save_1/Assign_37Assignv/dense_2/kernel/RMSPropsave_1/RestoreV2:37*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
¬
save_1/Assign_38Assignv/dense_2/kernel/RMSProp_1save_1/RestoreV2:38*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
х
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8""
train_op

RMSProp
	RMSProp_1"а'
	variables“'ѕ'
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
R
pi/log_std:0pi/log_std/Assignpi/log_std/read:02pi/log_std/initial_value:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08
З
pi/dense/kernel/RMSProp:0pi/dense/kernel/RMSProp/Assignpi/dense/kernel/RMSProp/read:02*pi/dense/kernel/RMSProp/Initializer/ones:0
Р
pi/dense/kernel/RMSProp_1:0 pi/dense/kernel/RMSProp_1/Assign pi/dense/kernel/RMSProp_1/read:02-pi/dense/kernel/RMSProp_1/Initializer/zeros:0

pi/dense/bias/RMSProp:0pi/dense/bias/RMSProp/Assignpi/dense/bias/RMSProp/read:02(pi/dense/bias/RMSProp/Initializer/ones:0
И
pi/dense/bias/RMSProp_1:0pi/dense/bias/RMSProp_1/Assignpi/dense/bias/RMSProp_1/read:02+pi/dense/bias/RMSProp_1/Initializer/zeros:0
П
pi/dense_1/kernel/RMSProp:0 pi/dense_1/kernel/RMSProp/Assign pi/dense_1/kernel/RMSProp/read:02,pi/dense_1/kernel/RMSProp/Initializer/ones:0
Ш
pi/dense_1/kernel/RMSProp_1:0"pi/dense_1/kernel/RMSProp_1/Assign"pi/dense_1/kernel/RMSProp_1/read:02/pi/dense_1/kernel/RMSProp_1/Initializer/zeros:0
З
pi/dense_1/bias/RMSProp:0pi/dense_1/bias/RMSProp/Assignpi/dense_1/bias/RMSProp/read:02*pi/dense_1/bias/RMSProp/Initializer/ones:0
Р
pi/dense_1/bias/RMSProp_1:0 pi/dense_1/bias/RMSProp_1/Assign pi/dense_1/bias/RMSProp_1/read:02-pi/dense_1/bias/RMSProp_1/Initializer/zeros:0
П
pi/dense_2/kernel/RMSProp:0 pi/dense_2/kernel/RMSProp/Assign pi/dense_2/kernel/RMSProp/read:02,pi/dense_2/kernel/RMSProp/Initializer/ones:0
Ш
pi/dense_2/kernel/RMSProp_1:0"pi/dense_2/kernel/RMSProp_1/Assign"pi/dense_2/kernel/RMSProp_1/read:02/pi/dense_2/kernel/RMSProp_1/Initializer/zeros:0
З
pi/dense_2/bias/RMSProp:0pi/dense_2/bias/RMSProp/Assignpi/dense_2/bias/RMSProp/read:02*pi/dense_2/bias/RMSProp/Initializer/ones:0
Р
pi/dense_2/bias/RMSProp_1:0 pi/dense_2/bias/RMSProp_1/Assign pi/dense_2/bias/RMSProp_1/read:02-pi/dense_2/bias/RMSProp_1/Initializer/zeros:0
s
pi/log_std/RMSProp:0pi/log_std/RMSProp/Assignpi/log_std/RMSProp/read:02%pi/log_std/RMSProp/Initializer/ones:0
|
pi/log_std/RMSProp_1:0pi/log_std/RMSProp_1/Assignpi/log_std/RMSProp_1/read:02(pi/log_std/RMSProp_1/Initializer/zeros:0
Г
v/dense/kernel/RMSProp:0v/dense/kernel/RMSProp/Assignv/dense/kernel/RMSProp/read:02)v/dense/kernel/RMSProp/Initializer/ones:0
М
v/dense/kernel/RMSProp_1:0v/dense/kernel/RMSProp_1/Assignv/dense/kernel/RMSProp_1/read:02,v/dense/kernel/RMSProp_1/Initializer/zeros:0
{
v/dense/bias/RMSProp:0v/dense/bias/RMSProp/Assignv/dense/bias/RMSProp/read:02'v/dense/bias/RMSProp/Initializer/ones:0
Д
v/dense/bias/RMSProp_1:0v/dense/bias/RMSProp_1/Assignv/dense/bias/RMSProp_1/read:02*v/dense/bias/RMSProp_1/Initializer/zeros:0
Л
v/dense_1/kernel/RMSProp:0v/dense_1/kernel/RMSProp/Assignv/dense_1/kernel/RMSProp/read:02+v/dense_1/kernel/RMSProp/Initializer/ones:0
Ф
v/dense_1/kernel/RMSProp_1:0!v/dense_1/kernel/RMSProp_1/Assign!v/dense_1/kernel/RMSProp_1/read:02.v/dense_1/kernel/RMSProp_1/Initializer/zeros:0
Г
v/dense_1/bias/RMSProp:0v/dense_1/bias/RMSProp/Assignv/dense_1/bias/RMSProp/read:02)v/dense_1/bias/RMSProp/Initializer/ones:0
М
v/dense_1/bias/RMSProp_1:0v/dense_1/bias/RMSProp_1/Assignv/dense_1/bias/RMSProp_1/read:02,v/dense_1/bias/RMSProp_1/Initializer/zeros:0
Л
v/dense_2/kernel/RMSProp:0v/dense_2/kernel/RMSProp/Assignv/dense_2/kernel/RMSProp/read:02+v/dense_2/kernel/RMSProp/Initializer/ones:0
Ф
v/dense_2/kernel/RMSProp_1:0!v/dense_2/kernel/RMSProp_1/Assign!v/dense_2/kernel/RMSProp_1/read:02.v/dense_2/kernel/RMSProp_1/Initializer/zeros:0
Г
v/dense_2/bias/RMSProp:0v/dense_2/bias/RMSProp/Assignv/dense_2/bias/RMSProp/read:02)v/dense_2/bias/RMSProp/Initializer/ones:0
М
v/dense_2/bias/RMSProp_1:0v/dense_2/bias/RMSProp_1/Assignv/dense_2/bias/RMSProp_1/read:02,v/dense_2/bias/RMSProp_1/Initializer/zeros:0"≠
trainable_variablesХТ
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
R
pi/log_std:0pi/log_std/Assignpi/log_std/read:02pi/log_std/initial_value:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08*І
serving_defaultУ
)
x$
Placeholder:0€€€€€€€€€#
v
v/Squeeze:0€€€€€€€€€%
pi
pi/add:0€€€€€€€€€tensorflow/serving/predict