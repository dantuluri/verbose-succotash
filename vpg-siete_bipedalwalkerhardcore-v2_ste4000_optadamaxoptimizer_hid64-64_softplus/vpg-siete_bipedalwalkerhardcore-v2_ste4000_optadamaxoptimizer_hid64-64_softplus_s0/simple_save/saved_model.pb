ГД
▐#к#
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
─
ApplyAdaMax
var"TА	
m"TА	
v"TА
beta1_power"T
lr"T

beta1"T

beta2"T
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
@
Softplus
features"T
activations"T"
Ttype:
2
R
SoftplusGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2
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
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'вк

n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:         *
shape:         
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:         *
shape:         
h
Placeholder_2Placeholder*#
_output_shapes
:         *
shape:         *
dtype0
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
е
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense/kernel*
valueB"   @   
Ч
.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *▒Е╛*
dtype0*
_output_shapes
: 
Ч
.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *▒Е>*
dtype0*
_output_shapes
: 
ю
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
seed2*
dtype0*
_output_shapes

:@*

seed *
T0*"
_class
loc:@pi/dense/kernel
┌
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@pi/dense/kernel
ь
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
▐
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
з
pi/dense/kernel
VariableV2*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
╙
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
~
pi/dense/kernel/readIdentitypi/dense/kernel*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
T0
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
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
╛
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
:         @*
transpose_b( 
Й
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
a
pi/dense/SoftplusSoftpluspi/dense/BiasAdd*'
_output_shapes
:         @*
T0
й
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Ы
0pi/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *╫│]╛*
dtype0
Ы
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *╫│]>*
dtype0*
_output_shapes
: 
Ї
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
seed2*
dtype0*
_output_shapes

:@@*

seed *
T0*$
_class
loc:@pi/dense_1/kernel
т
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
Ї
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
ц
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0
л
pi/dense_1/kernel
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
█
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Д
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Т
!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
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
╞
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
Ю
pi/dense_1/MatMulMatMulpi/dense/Softpluspi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:         @*
transpose_b( *
T0
П
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
e
pi/dense_1/SoftplusSoftpluspi/dense_1/BiasAdd*
T0*'
_output_shapes
:         @
й
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ы
0pi/dense_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *0Ш╛*
dtype0*
_output_shapes
: 
Ы
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *0Ш>*
dtype0*
_output_shapes
: 
Ї
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@pi/dense_2/kernel*
seed2**
dtype0*
_output_shapes

:@*

seed 
т
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
Ї
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
ц
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0
л
pi/dense_2/kernel
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@
█
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Д
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Т
!pi/dense_2/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Я
pi/dense_2/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:
╞
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
а
pi/dense_2/MatMulMatMulpi/dense_1/Softpluspi/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         *
transpose_b( 
П
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
q
pi/log_std/initial_valueConst*
_output_shapes
:*%
valueB"   ┐   ┐   ┐   ┐*
dtype0
v

pi/log_std
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
о
pi/log_std/AssignAssign
pi/log_stdpi/log_std/initial_value*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
k
pi/log_std/readIdentity
pi/log_std*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
C
pi/ExpExppi/log_std/read*
T0*
_output_shapes
:
Z
pi/ShapeShapepi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
Z
pi/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
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
:         *

seed *
T0
Н
pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*
T0*'
_output_shapes
:         
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*
T0*'
_output_shapes
:         
Y
pi/mulMulpi/random_normalpi/Exp*
T0*'
_output_shapes
:         
[
pi/addAddpi/dense_2/BiasAddpi/mul*
T0*'
_output_shapes
:         
b
pi/subSubPlaceholder_1pi/dense_2/BiasAdd*
T0*'
_output_shapes
:         
E
pi/Exp_1Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *w╠+2
J
pi/add_1Addpi/Exp_1
pi/add_1/y*
_output_shapes
:*
T0
Y

pi/truedivRealDivpi/subpi/add_1*'
_output_shapes
:         *
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
pi/truedivpi/pow/y*
T0*'
_output_shapes
:         
O

pi/mul_1/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Q
pi/mul_1Mul
pi/mul_1/xpi/log_std/read*
_output_shapes
:*
T0
S
pi/add_2Addpi/powpi/mul_1*
T0*'
_output_shapes
:         
O

pi/add_3/yConst*
valueB
 *О?ы?*
dtype0*
_output_shapes
: 
W
pi/add_3Addpi/add_2
pi/add_3/y*
T0*'
_output_shapes
:         
O

pi/mul_2/xConst*
valueB
 *   ┐*
dtype0*
_output_shapes
: 
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*'
_output_shapes
:         *
T0
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*#
_output_shapes
:         *

Tidx0*
	keep_dims( *
T0
]
pi/sub_1Subpi/addpi/dense_2/BiasAdd*'
_output_shapes
:         *
T0
E
pi/Exp_2Exppi/log_std/read*
_output_shapes
:*
T0
O

pi/add_4/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
J
pi/add_4Addpi/Exp_2
pi/add_4/y*
T0*
_output_shapes
:
]
pi/truediv_1RealDivpi/sub_1pi/add_4*
T0*'
_output_shapes
:         
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
:         
O

pi/mul_3/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Q
pi/mul_3Mul
pi/mul_3/xpi/log_std/read*
T0*
_output_shapes
:
U
pi/add_5Addpi/pow_1pi/mul_3*'
_output_shapes
:         *
T0
O

pi/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *О?ы?
W
pi/add_6Addpi/add_5
pi/add_6/y*
T0*'
_output_shapes
:         
O

pi/mul_4/xConst*
valueB
 *   ┐*
dtype0*
_output_shapes
: 
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*
T0*'
_output_shapes
:         
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
А
pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
г
/v/dense/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@v/dense/kernel*
valueB"   @   *
dtype0*
_output_shapes
:
Х
-v/dense/kernel/Initializer/random_uniform/minConst*!
_class
loc:@v/dense/kernel*
valueB
 *▒Е╛*
dtype0*
_output_shapes
: 
Х
-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *▒Е>*
dtype0*
_output_shapes
: 
ы
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
seed2g*
dtype0*
_output_shapes

:@*

seed *
T0*!
_class
loc:@v/dense/kernel
╓
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
ш
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
┌
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
е
v/dense/kernel
VariableV2*
_output_shapes

:@*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0
╧
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
{
v/dense/kernel/readIdentityv/dense/kernel*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
М
v/dense/bias/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Щ
v/dense/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias
║
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
q
v/dense/bias/readIdentityv/dense/bias*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
Т
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b( 
Ж
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
_
v/dense/SoftplusSoftplusv/dense/BiasAdd*
T0*'
_output_shapes
:         @
з
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   
Щ
/v/dense_1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *╫│]╛*
dtype0*
_output_shapes
: 
Щ
/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *╫│]>*
dtype0*
_output_shapes
: 
ё
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@@*

seed *
T0*#
_class
loc:@v/dense_1/kernel*
seed2x
▐
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
Ё
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
т
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
й
v/dense_1/kernel
VariableV2*
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container 
╫
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Б
v/dense_1/kernel/readIdentityv/dense_1/kernel*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel
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
┬
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
w
v/dense_1/bias/readIdentityv/dense_1/bias*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias
Ы
v/dense_1/MatMulMatMulv/dense/Softplusv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b( 
М
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
c
v/dense_1/SoftplusSoftplusv/dense_1/BiasAdd*'
_output_shapes
:         @*
T0
з
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Щ
/v/dense_2/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_2/kernel*
valueB
 *ИОЫ╛*
dtype0*
_output_shapes
: 
Щ
/v/dense_2/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_2/kernel*
valueB
 *ИОЫ>*
dtype0*
_output_shapes
: 
Є
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*#
_class
loc:@v/dense_2/kernel*
seed2Й
▐
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_2/kernel
Ё
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
т
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
й
v/dense_2/kernel
VariableV2*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
╫
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Б
v/dense_2/kernel/readIdentityv/dense_2/kernel*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
Р
 v/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
valueB*    
Э
v/dense_2/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_2/bias*
	container 
┬
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
w
v/dense_2/bias/readIdentityv/dense_2/bias*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
Э
v/dense_2/MatMulMatMulv/dense_1/Softplusv/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b( *
T0
М
v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
l
	v/SqueezeSqueezev/dense_2/BiasAdd*
T0*#
_output_shapes
:         *
squeeze_dims

O
mulMulpi/SumPlaceholder_2*
T0*#
_output_shapes
:         
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
subSubPlaceholder_3	v/Squeeze*
T0*#
_output_shapes
:         
J
pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
D
powPowsubpow/y*#
_output_shapes
:         *
T0
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
sub_1SubPlaceholder_4pi/Sum*#
_output_shapes
:         *
T0
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2Meansub_1Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
B
Neg_1Negpi/Sum*
T0*#
_output_shapes
:         
Q
Const_3Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_3MeanNeg_1Const_3*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
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
gradients/Neg_grad/NegNeggradients/Fill*
_output_shapes
: *
T0
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
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*#
_output_shapes
:         *

Tmultiples0
^
gradients/Mean_grad/Shape_1Shapemul*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ъ
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
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
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
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
:         
^
gradients/mul_grad/ShapeShapepi/Sum*
T0*
out_type0*
_output_shapes
:
g
gradients/mul_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
┤
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
w
gradients/mul_grad/MulMulgradients/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:         
Я
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
У
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*#
_output_shapes
:         *
T0*
Tshape0
r
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*#
_output_shapes
:         *
T0
е
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
:         
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
╓
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*#
_output_shapes
:         
▄
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*#
_output_shapes
:         *
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
c
gradients/pi/Sum_grad/ShapeShapepi/mul_2*
T0*
out_type0*
_output_shapes
:
М
gradients/pi/Sum_grad/SizeConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
з
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
н
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
!gradients/pi/Sum_grad/range/deltaConst*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0
▐
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
╞
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*

index_type0*
_output_shapes
: 
Г
#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
N*
_output_shapes
:
С
gradients/pi/Sum_grad/Maximum/yConst*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0
├
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*
T0
╗
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
├
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*0
_output_shapes
:                  *
T0*
Tshape0
е
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:         
`
gradients/pi/mul_2_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
g
gradients/pi/mul_2_grad/Shape_1Shapepi/add_3*
T0*
out_type0*
_output_shapes
:
├
-gradients/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_2_grad/Shapegradients/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
z
gradients/pi/mul_2_grad/MulMulgradients/pi/Sum_grad/Tilepi/add_3*'
_output_shapes
:         *
T0
о
gradients/pi/mul_2_grad/SumSumgradients/pi/mul_2_grad/Mul-gradients/pi/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Х
gradients/pi/mul_2_grad/ReshapeReshapegradients/pi/mul_2_grad/Sumgradients/pi/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
~
gradients/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients/pi/Sum_grad/Tile*
T0*'
_output_shapes
:         
┤
gradients/pi/mul_2_grad/Sum_1Sumgradients/pi/mul_2_grad/Mul_1/gradients/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
м
!gradients/pi/mul_2_grad/Reshape_1Reshapegradients/pi/mul_2_grad/Sum_1gradients/pi/mul_2_grad/Shape_1*'
_output_shapes
:         *
T0*
Tshape0
v
(gradients/pi/mul_2_grad/tuple/group_depsNoOp ^gradients/pi/mul_2_grad/Reshape"^gradients/pi/mul_2_grad/Reshape_1
▌
0gradients/pi/mul_2_grad/tuple/control_dependencyIdentitygradients/pi/mul_2_grad/Reshape)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_2_grad/Reshape*
_output_shapes
: 
Ї
2gradients/pi/mul_2_grad/tuple/control_dependency_1Identity!gradients/pi/mul_2_grad/Reshape_1)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_2_grad/Reshape_1*'
_output_shapes
:         
e
gradients/pi/add_3_grad/ShapeShapepi/add_2*
T0*
out_type0*
_output_shapes
:
b
gradients/pi/add_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
├
-gradients/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_3_grad/Shapegradients/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┼
gradients/pi/add_3_grad/SumSum2gradients/pi/mul_2_grad/tuple/control_dependency_1-gradients/pi/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ж
gradients/pi/add_3_grad/ReshapeReshapegradients/pi/add_3_grad/Sumgradients/pi/add_3_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
╔
gradients/pi/add_3_grad/Sum_1Sum2gradients/pi/mul_2_grad/tuple/control_dependency_1/gradients/pi/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ы
!gradients/pi/add_3_grad/Reshape_1Reshapegradients/pi/add_3_grad/Sum_1gradients/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/pi/add_3_grad/tuple/group_depsNoOp ^gradients/pi/add_3_grad/Reshape"^gradients/pi/add_3_grad/Reshape_1
ю
0gradients/pi/add_3_grad/tuple/control_dependencyIdentitygradients/pi/add_3_grad/Reshape)^gradients/pi/add_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_3_grad/Reshape*'
_output_shapes
:         
у
2gradients/pi/add_3_grad/tuple/control_dependency_1Identity!gradients/pi/add_3_grad/Reshape_1)^gradients/pi/add_3_grad/tuple/group_deps*
_output_shapes
: *
T0*4
_class*
(&loc:@gradients/pi/add_3_grad/Reshape_1
c
gradients/pi/add_2_grad/ShapeShapepi/pow*
_output_shapes
:*
T0*
out_type0
i
gradients/pi/add_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
├
-gradients/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_2_grad/Shapegradients/pi/add_2_grad/Shape_1*2
_output_shapes 
:         :         *
T0
├
gradients/pi/add_2_grad/SumSum0gradients/pi/add_3_grad/tuple/control_dependency-gradients/pi/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ж
gradients/pi/add_2_grad/ReshapeReshapegradients/pi/add_2_grad/Sumgradients/pi/add_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
╟
gradients/pi/add_2_grad/Sum_1Sum0gradients/pi/add_3_grad/tuple/control_dependency/gradients/pi/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Я
!gradients/pi/add_2_grad/Reshape_1Reshapegradients/pi/add_2_grad/Sum_1gradients/pi/add_2_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
v
(gradients/pi/add_2_grad/tuple/group_depsNoOp ^gradients/pi/add_2_grad/Reshape"^gradients/pi/add_2_grad/Reshape_1
ю
0gradients/pi/add_2_grad/tuple/control_dependencyIdentitygradients/pi/add_2_grad/Reshape)^gradients/pi/add_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_2_grad/Reshape*'
_output_shapes
:         
ч
2gradients/pi/add_2_grad/tuple/control_dependency_1Identity!gradients/pi/add_2_grad/Reshape_1)^gradients/pi/add_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_2_grad/Reshape_1*
_output_shapes
:
e
gradients/pi/pow_grad/ShapeShape
pi/truediv*
out_type0*
_output_shapes
:*
T0
`
gradients/pi/pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
╜
+gradients/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/pow_grad/Shapegradients/pi/pow_grad/Shape_1*
T0*2
_output_shapes 
:         :         
О
gradients/pi/pow_grad/mulMul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow/y*'
_output_shapes
:         *
T0
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
pi/truedivgradients/pi/pow_grad/sub*'
_output_shapes
:         *
T0
К
gradients/pi/pow_grad/mul_1Mulgradients/pi/pow_grad/mulgradients/pi/pow_grad/Pow*
T0*'
_output_shapes
:         
к
gradients/pi/pow_grad/SumSumgradients/pi/pow_grad/mul_1+gradients/pi/pow_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
а
gradients/pi/pow_grad/ReshapeReshapegradients/pi/pow_grad/Sumgradients/pi/pow_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
d
gradients/pi/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
З
gradients/pi/pow_grad/GreaterGreater
pi/truedivgradients/pi/pow_grad/Greater/y*'
_output_shapes
:         *
T0
o
%gradients/pi/pow_grad/ones_like/ShapeShape
pi/truediv*
T0*
out_type0*
_output_shapes
:
j
%gradients/pi/pow_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
╣
gradients/pi/pow_grad/ones_likeFill%gradients/pi/pow_grad/ones_like/Shape%gradients/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:         
д
gradients/pi/pow_grad/SelectSelectgradients/pi/pow_grad/Greater
pi/truedivgradients/pi/pow_grad/ones_like*
T0*'
_output_shapes
:         
p
gradients/pi/pow_grad/LogLoggradients/pi/pow_grad/Select*
T0*'
_output_shapes
:         
k
 gradients/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*
T0*'
_output_shapes
:         
╢
gradients/pi/pow_grad/Select_1Selectgradients/pi/pow_grad/Greatergradients/pi/pow_grad/Log gradients/pi/pow_grad/zeros_like*
T0*'
_output_shapes
:         
О
gradients/pi/pow_grad/mul_2Mul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow*
T0*'
_output_shapes
:         
С
gradients/pi/pow_grad/mul_3Mulgradients/pi/pow_grad/mul_2gradients/pi/pow_grad/Select_1*
T0*'
_output_shapes
:         
о
gradients/pi/pow_grad/Sum_1Sumgradients/pi/pow_grad/mul_3-gradients/pi/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Х
gradients/pi/pow_grad/Reshape_1Reshapegradients/pi/pow_grad/Sum_1gradients/pi/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
p
&gradients/pi/pow_grad/tuple/group_depsNoOp^gradients/pi/pow_grad/Reshape ^gradients/pi/pow_grad/Reshape_1
ц
.gradients/pi/pow_grad/tuple/control_dependencyIdentitygradients/pi/pow_grad/Reshape'^gradients/pi/pow_grad/tuple/group_deps*0
_class&
$"loc:@gradients/pi/pow_grad/Reshape*'
_output_shapes
:         *
T0
█
0gradients/pi/pow_grad/tuple/control_dependency_1Identitygradients/pi/pow_grad/Reshape_1'^gradients/pi/pow_grad/tuple/group_deps*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients/pi/pow_grad/Reshape_1
`
gradients/pi/mul_1_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
i
gradients/pi/mul_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
├
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*2
_output_shapes 
:         :         *
T0
М
gradients/pi/mul_1_grad/MulMul2gradients/pi/add_2_grad/tuple/control_dependency_1pi/log_std/read*
_output_shapes
:*
T0
м
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Х
gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Й
gradients/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x2gradients/pi/add_2_grad/tuple/control_dependency_1*
_output_shapes
:*
T0
╢
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Я
!gradients/pi/mul_1_grad/Reshape_1Reshapegradients/pi/mul_1_grad/Sum_1gradients/pi/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/mul_1_grad/tuple/group_depsNoOp ^gradients/pi/mul_1_grad/Reshape"^gradients/pi/mul_1_grad/Reshape_1
▌
0gradients/pi/mul_1_grad/tuple/control_dependencyIdentitygradients/pi/mul_1_grad/Reshape)^gradients/pi/mul_1_grad/tuple/group_deps*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients/pi/mul_1_grad/Reshape
ч
2gradients/pi/mul_1_grad/tuple/control_dependency_1Identity!gradients/pi/mul_1_grad/Reshape_1)^gradients/pi/mul_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
_output_shapes
:
e
gradients/pi/truediv_grad/ShapeShapepi/sub*
T0*
out_type0*
_output_shapes
:
k
!gradients/pi/truediv_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
╔
/gradients/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/truediv_grad/Shape!gradients/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Ш
!gradients/pi/truediv_grad/RealDivRealDiv.gradients/pi/pow_grad/tuple/control_dependencypi/add_1*
T0*'
_output_shapes
:         
╕
gradients/pi/truediv_grad/SumSum!gradients/pi/truediv_grad/RealDiv/gradients/pi/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
м
!gradients/pi/truediv_grad/ReshapeReshapegradients/pi/truediv_grad/Sumgradients/pi/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
^
gradients/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:         *
T0
Й
#gradients/pi/truediv_grad/RealDiv_1RealDivgradients/pi/truediv_grad/Negpi/add_1*'
_output_shapes
:         *
T0
П
#gradients/pi/truediv_grad/RealDiv_2RealDiv#gradients/pi/truediv_grad/RealDiv_1pi/add_1*
T0*'
_output_shapes
:         
л
gradients/pi/truediv_grad/mulMul.gradients/pi/pow_grad/tuple/control_dependency#gradients/pi/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:         
╕
gradients/pi/truediv_grad/Sum_1Sumgradients/pi/truediv_grad/mul1gradients/pi/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
е
#gradients/pi/truediv_grad/Reshape_1Reshapegradients/pi/truediv_grad/Sum_1!gradients/pi/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients/pi/truediv_grad/tuple/group_depsNoOp"^gradients/pi/truediv_grad/Reshape$^gradients/pi/truediv_grad/Reshape_1
Ў
2gradients/pi/truediv_grad/tuple/control_dependencyIdentity!gradients/pi/truediv_grad/Reshape+^gradients/pi/truediv_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/truediv_grad/Reshape*'
_output_shapes
:         
я
4gradients/pi/truediv_grad/tuple/control_dependency_1Identity#gradients/pi/truediv_grad/Reshape_1+^gradients/pi/truediv_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_grad/Reshape_1*
_output_shapes
:
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
╜
+gradients/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_grad/Shapegradients/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
gradients/pi/sub_grad/SumSum2gradients/pi/truediv_grad/tuple/control_dependency+gradients/pi/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
а
gradients/pi/sub_grad/ReshapeReshapegradients/pi/sub_grad/Sumgradients/pi/sub_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
┼
gradients/pi/sub_grad/Sum_1Sum2gradients/pi/truediv_grad/tuple/control_dependency-gradients/pi/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
`
gradients/pi/sub_grad/NegNeggradients/pi/sub_grad/Sum_1*
T0*
_output_shapes
:
д
gradients/pi/sub_grad/Reshape_1Reshapegradients/pi/sub_grad/Neggradients/pi/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
p
&gradients/pi/sub_grad/tuple/group_depsNoOp^gradients/pi/sub_grad/Reshape ^gradients/pi/sub_grad/Reshape_1
ц
.gradients/pi/sub_grad/tuple/control_dependencyIdentitygradients/pi/sub_grad/Reshape'^gradients/pi/sub_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/sub_grad/Reshape*'
_output_shapes
:         
ь
0gradients/pi/sub_grad/tuple/control_dependency_1Identitygradients/pi/sub_grad/Reshape_1'^gradients/pi/sub_grad/tuple/group_deps*'
_output_shapes
:         *
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1
g
gradients/pi/add_1_grad/ShapeConst*
_output_shapes
:*
valueB:*
dtype0
b
gradients/pi/add_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
├
-gradients/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_1_grad/Shapegradients/pi/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╔
gradients/pi/add_1_grad/SumSum4gradients/pi/truediv_grad/tuple/control_dependency_1-gradients/pi/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Щ
gradients/pi/add_1_grad/ReshapeReshapegradients/pi/add_1_grad/Sumgradients/pi/add_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
╔
gradients/pi/add_1_grad/Sum_1Sum4gradients/pi/truediv_grad/tuple/control_dependency_1/gradients/pi/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Ы
!gradients/pi/add_1_grad/Reshape_1Reshapegradients/pi/add_1_grad/Sum_1gradients/pi/add_1_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
v
(gradients/pi/add_1_grad/tuple/group_depsNoOp ^gradients/pi/add_1_grad/Reshape"^gradients/pi/add_1_grad/Reshape_1
с
0gradients/pi/add_1_grad/tuple/control_dependencyIdentitygradients/pi/add_1_grad/Reshape)^gradients/pi/add_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_1_grad/Reshape*
_output_shapes
:
у
2gradients/pi/add_1_grad/tuple/control_dependency_1Identity!gradients/pi/add_1_grad/Reshape_1)^gradients/pi/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*4
_class*
(&loc:@gradients/pi/add_1_grad/Reshape_1
к
-gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients/pi/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC*
_output_shapes
:
Э
2gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad1^gradients/pi/sub_grad/tuple/control_dependency_1
У
:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity0gradients/pi/sub_grad/tuple/control_dependency_13^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:         
У
<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*@
_class6
42loc:@gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
Г
gradients/pi/Exp_1_grad/mulMul0gradients/pi/add_1_grad/tuple/control_dependencypi/Exp_1*
T0*
_output_shapes
:
▌
'gradients/pi/dense_2/MatMul_grad/MatMulMatMul:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencypi/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b(
╙
)gradients/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Softplus:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
П
1gradients/pi/dense_2/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_2/MatMul_grad/MatMul*^gradients/pi/dense_2/MatMul_grad/MatMul_1
Р
9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_2/MatMul_grad/MatMul2^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:         @
Н
;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_2/MatMul_grad/MatMul_12^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@
╦
gradients/AddNAddN2gradients/pi/mul_1_grad/tuple/control_dependency_1gradients/pi/Exp_1_grad/mul*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
N*
_output_shapes
:*
T0
└
/gradients/pi/dense_1/Softplus_grad/SoftplusGradSoftplusGrad9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencypi/dense_1/BiasAdd*'
_output_shapes
:         @*
T0
й
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/pi/dense_1/Softplus_grad/SoftplusGrad*
_output_shapes
:@*
T0*
data_formatNHWC
Ь
2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/pi/dense_1/Softplus_grad/SoftplusGrad
в
:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/pi/dense_1/Softplus_grad/SoftplusGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/pi/dense_1/Softplus_grad/SoftplusGrad*'
_output_shapes
:         @
У
<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad
▌
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b(
╤
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Softplus:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@@
П
1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1
Р
9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:         @*
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
╝
-gradients/pi/dense/Softplus_grad/SoftplusGradSoftplusGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/BiasAdd*'
_output_shapes
:         @*
T0
е
+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/pi/dense/Softplus_grad/SoftplusGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Ц
0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad.^gradients/pi/dense/Softplus_grad/SoftplusGrad
Ъ
8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/pi/dense/Softplus_grad/SoftplusGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         @*
T0*@
_class6
42loc:@gradients/pi/dense/Softplus_grad/SoftplusGrad
Л
:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad
╫
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b(*
T0
╟
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0
Й
/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1
И
7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul*'
_output_shapes
:         
Е
9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1
`
Reshape/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
Р
ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:А
b
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
Ф
	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_2/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ц
	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
Tshape0*
_output_shapes	
:А *
T0
b
Reshape_3/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
Ц
	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_4/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
Ц
	Reshape_4Reshape;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
T0*
Tshape0*
_output_shapes	
:А
b
Reshape_5/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ц
	Reshape_5Reshape<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_6/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
h
	Reshape_6Reshapegradients/AddNReshape_6/shape*
_output_shapes
:*
T0*
Tshape0
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
е
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6concat/axis*

Tidx0*
T0*
N*
_output_shapes	
:И/
g
PyFuncPyFuncconcat*
Tin
2*
_output_shapes	
:И/*
Tout
2*
token
pyfunc_0
l
Const_4Const*1
value(B&"   @      @            *
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
splitSplitVPyFuncConst_4split/split_dim*
T0*

Tlen0*
	num_split*A
_output_shapes/
-:А:@:А :@:А::
`
Reshape_7/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
c
	Reshape_7ReshapesplitReshape_7/shape*
_output_shapes

:@*
T0*
Tshape0
Y
Reshape_8/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
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

Reshape_10Reshapesplit:3Reshape_10/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_11/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
g

Reshape_11Reshapesplit:4Reshape_11/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_12/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_12Reshapesplit:5Reshape_12/shape*
_output_shapes
:*
T0*
Tshape0
Z
Reshape_13/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_13Reshapesplit:6Reshape_13/shape*
_output_shapes
:*
T0*
Tshape0
А
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *fff?
С
beta1_power
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
░
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
l
beta1_power/readIdentitybeta1_power*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
н
8pi/dense/kernel/AdaMax/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:
Ч
.pi/dense/kernel/AdaMax/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
∙
(pi/dense/kernel/AdaMax/Initializer/zerosFill8pi/dense/kernel/AdaMax/Initializer/zeros/shape_as_tensor.pi/dense/kernel/AdaMax/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
о
pi/dense/kernel/AdaMax
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
:@
▀
pi/dense/kernel/AdaMax/AssignAssignpi/dense/kernel/AdaMax(pi/dense/kernel/AdaMax/Initializer/zeros*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
М
pi/dense/kernel/AdaMax/readIdentitypi/dense/kernel/AdaMax*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel
п
:pi/dense/kernel/AdaMax_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"   @   *"
_class
loc:@pi/dense/kernel*
dtype0
Щ
0pi/dense/kernel/AdaMax_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
 
*pi/dense/kernel/AdaMax_1/Initializer/zerosFill:pi/dense/kernel/AdaMax_1/Initializer/zeros/shape_as_tensor0pi/dense/kernel/AdaMax_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
░
pi/dense/kernel/AdaMax_1
VariableV2*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
х
pi/dense/kernel/AdaMax_1/AssignAssignpi/dense/kernel/AdaMax_1*pi/dense/kernel/AdaMax_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
Р
pi/dense/kernel/AdaMax_1/readIdentitypi/dense/kernel/AdaMax_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
Х
&pi/dense/bias/AdaMax/Initializer/zerosConst*
valueB@*    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:@
в
pi/dense/bias/AdaMax
VariableV2* 
_class
loc:@pi/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
╙
pi/dense/bias/AdaMax/AssignAssignpi/dense/bias/AdaMax&pi/dense/bias/AdaMax/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
В
pi/dense/bias/AdaMax/readIdentitypi/dense/bias/AdaMax*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
Ч
(pi/dense/bias/AdaMax_1/Initializer/zerosConst*
valueB@*    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:@
д
pi/dense/bias/AdaMax_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias
┘
pi/dense/bias/AdaMax_1/AssignAssignpi/dense/bias/AdaMax_1(pi/dense/bias/AdaMax_1/Initializer/zeros* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ж
pi/dense/bias/AdaMax_1/readIdentitypi/dense/bias/AdaMax_1* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
T0
▒
:pi/dense_1/kernel/AdaMax/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:
Ы
0pi/dense_1/kernel/AdaMax/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
Б
*pi/dense_1/kernel/AdaMax/Initializer/zerosFill:pi/dense_1/kernel/AdaMax/Initializer/zeros/shape_as_tensor0pi/dense_1/kernel/AdaMax/Initializer/zeros/Const*
_output_shapes

:@@*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel
▓
pi/dense_1/kernel/AdaMax
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
ч
pi/dense_1/kernel/AdaMax/AssignAssignpi/dense_1/kernel/AdaMax*pi/dense_1/kernel/AdaMax/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Т
pi/dense_1/kernel/AdaMax/readIdentitypi/dense_1/kernel/AdaMax*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
│
<pi/dense_1/kernel/AdaMax_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:
Э
2pi/dense_1/kernel/AdaMax_1/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
З
,pi/dense_1/kernel/AdaMax_1/Initializer/zerosFill<pi/dense_1/kernel/AdaMax_1/Initializer/zeros/shape_as_tensor2pi/dense_1/kernel/AdaMax_1/Initializer/zeros/Const*
_output_shapes

:@@*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel
┤
pi/dense_1/kernel/AdaMax_1
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
э
!pi/dense_1/kernel/AdaMax_1/AssignAssignpi/dense_1/kernel/AdaMax_1,pi/dense_1/kernel/AdaMax_1/Initializer/zeros*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
Ц
pi/dense_1/kernel/AdaMax_1/readIdentitypi/dense_1/kernel/AdaMax_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Щ
(pi/dense_1/bias/AdaMax/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0
ж
pi/dense_1/bias/AdaMax
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@
█
pi/dense_1/bias/AdaMax/AssignAssignpi/dense_1/bias/AdaMax(pi/dense_1/bias/AdaMax/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
И
pi/dense_1/bias/AdaMax/readIdentitypi/dense_1/bias/AdaMax*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
Ы
*pi/dense_1/bias/AdaMax_1/Initializer/zerosConst*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:@
и
pi/dense_1/bias/AdaMax_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@
с
pi/dense_1/bias/AdaMax_1/AssignAssignpi/dense_1/bias/AdaMax_1*pi/dense_1/bias/AdaMax_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
М
pi/dense_1/bias/AdaMax_1/readIdentitypi/dense_1/bias/AdaMax_1*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias
е
*pi/dense_2/kernel/AdaMax/Initializer/zerosConst*
valueB@*    *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:@
▓
pi/dense_2/kernel/AdaMax
VariableV2*$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
ч
pi/dense_2/kernel/AdaMax/AssignAssignpi/dense_2/kernel/AdaMax*pi/dense_2/kernel/AdaMax/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Т
pi/dense_2/kernel/AdaMax/readIdentitypi/dense_2/kernel/AdaMax*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel
з
,pi/dense_2/kernel/AdaMax_1/Initializer/zerosConst*
valueB@*    *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:@
┤
pi/dense_2/kernel/AdaMax_1
VariableV2*
_output_shapes

:@*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0
э
!pi/dense_2/kernel/AdaMax_1/AssignAssignpi/dense_2/kernel/AdaMax_1,pi/dense_2/kernel/AdaMax_1/Initializer/zeros*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel
Ц
pi/dense_2/kernel/AdaMax_1/readIdentitypi/dense_2/kernel/AdaMax_1*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Щ
(pi/dense_2/bias/AdaMax/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0*
_output_shapes
:
ж
pi/dense_2/bias/AdaMax
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:
█
pi/dense_2/bias/AdaMax/AssignAssignpi/dense_2/bias/AdaMax(pi/dense_2/bias/AdaMax/Initializer/zeros*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
И
pi/dense_2/bias/AdaMax/readIdentitypi/dense_2/bias/AdaMax*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
Ы
*pi/dense_2/bias/AdaMax_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0
и
pi/dense_2/bias/AdaMax_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container 
с
pi/dense_2/bias/AdaMax_1/AssignAssignpi/dense_2/bias/AdaMax_1*pi/dense_2/bias/AdaMax_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
М
pi/dense_2/bias/AdaMax_1/readIdentitypi/dense_2/bias/AdaMax_1*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
П
#pi/log_std/AdaMax/Initializer/zerosConst*
valueB*    *
_class
loc:@pi/log_std*
dtype0*
_output_shapes
:
Ь
pi/log_std/AdaMax
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std*
	container 
╟
pi/log_std/AdaMax/AssignAssignpi/log_std/AdaMax#pi/log_std/AdaMax/Initializer/zeros*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
y
pi/log_std/AdaMax/readIdentitypi/log_std/AdaMax*
_class
loc:@pi/log_std*
_output_shapes
:*
T0
С
%pi/log_std/AdaMax_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@pi/log_std*
dtype0
Ю
pi/log_std/AdaMax_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std*
	container *
shape:
═
pi/log_std/AdaMax_1/AssignAssignpi/log_std/AdaMax_1%pi/log_std/AdaMax_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
}
pi/log_std/AdaMax_1/readIdentitypi/log_std/AdaMax_1*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
Y
AdaMax/learning_rateConst*
valueB
 *RIЭ9*
dtype0*
_output_shapes
: 
Q
AdaMax/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
Q
AdaMax/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
S
AdaMax/epsilonConst*
_output_shapes
: *
valueB
 *w╠+2*
dtype0
║
)AdaMax/update_pi/dense/kernel/ApplyAdaMaxApplyAdaMaxpi/dense/kernelpi/dense/kernel/AdaMaxpi/dense/kernel/AdaMax_1beta1_power/readAdaMax/learning_rateAdaMax/beta1AdaMax/beta2AdaMax/epsilon	Reshape_7*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
м
'AdaMax/update_pi/dense/bias/ApplyAdaMaxApplyAdaMaxpi/dense/biaspi/dense/bias/AdaMaxpi/dense/bias/AdaMax_1beta1_power/readAdaMax/learning_rateAdaMax/beta1AdaMax/beta2AdaMax/epsilon	Reshape_8*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
─
+AdaMax/update_pi/dense_1/kernel/ApplyAdaMaxApplyAdaMaxpi/dense_1/kernelpi/dense_1/kernel/AdaMaxpi/dense_1/kernel/AdaMax_1beta1_power/readAdaMax/learning_rateAdaMax/beta1AdaMax/beta2AdaMax/epsilon	Reshape_9*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
use_locking( 
╖
)AdaMax/update_pi/dense_1/bias/ApplyAdaMaxApplyAdaMaxpi/dense_1/biaspi/dense_1/bias/AdaMaxpi/dense_1/bias/AdaMax_1beta1_power/readAdaMax/learning_rateAdaMax/beta1AdaMax/beta2AdaMax/epsilon
Reshape_10*
_output_shapes
:@*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias
┼
+AdaMax/update_pi/dense_2/kernel/ApplyAdaMaxApplyAdaMaxpi/dense_2/kernelpi/dense_2/kernel/AdaMaxpi/dense_2/kernel/AdaMax_1beta1_power/readAdaMax/learning_rateAdaMax/beta1AdaMax/beta2AdaMax/epsilon
Reshape_11*
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
╖
)AdaMax/update_pi/dense_2/bias/ApplyAdaMaxApplyAdaMaxpi/dense_2/biaspi/dense_2/bias/AdaMaxpi/dense_2/bias/AdaMax_1beta1_power/readAdaMax/learning_rateAdaMax/beta1AdaMax/beta2AdaMax/epsilon
Reshape_12*
use_locking( *
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
Ю
$AdaMax/update_pi/log_std/ApplyAdaMaxApplyAdaMax
pi/log_stdpi/log_std/AdaMaxpi/log_std/AdaMax_1beta1_power/readAdaMax/learning_rateAdaMax/beta1AdaMax/beta2AdaMax/epsilon
Reshape_13*
T0*
_class
loc:@pi/log_std*
_output_shapes
:*
use_locking( 
е

AdaMax/mulMulbeta1_power/readAdaMax/beta1(^AdaMax/update_pi/dense/bias/ApplyAdaMax*^AdaMax/update_pi/dense/kernel/ApplyAdaMax*^AdaMax/update_pi/dense_1/bias/ApplyAdaMax,^AdaMax/update_pi/dense_1/kernel/ApplyAdaMax*^AdaMax/update_pi/dense_2/bias/ApplyAdaMax,^AdaMax/update_pi/dense_2/kernel/ApplyAdaMax%^AdaMax/update_pi/log_std/ApplyAdaMax*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
Ь
AdaMax/AssignAssignbeta1_power
AdaMax/mul*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
╧
AdaMaxNoOp^AdaMax/Assign(^AdaMax/update_pi/dense/bias/ApplyAdaMax*^AdaMax/update_pi/dense/kernel/ApplyAdaMax*^AdaMax/update_pi/dense_1/bias/ApplyAdaMax,^AdaMax/update_pi/dense_1/kernel/ApplyAdaMax*^AdaMax/update_pi/dense_2/bias/ApplyAdaMax,^AdaMax/update_pi/dense_2/kernel/ApplyAdaMax%^AdaMax/update_pi/log_std/ApplyAdaMax
l
Reshape_14/shapeConst^AdaMax*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_14Reshapepi/dense/kernel/readReshape_14/shape*
T0*
Tshape0*
_output_shapes	
:А
l
Reshape_15/shapeConst^AdaMax*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_15Reshapepi/dense/bias/readReshape_15/shape*
T0*
Tshape0*
_output_shapes
:@
l
Reshape_16/shapeConst^AdaMax*
dtype0*
_output_shapes
:*
valueB:
         
s

Reshape_16Reshapepi/dense_1/kernel/readReshape_16/shape*
_output_shapes	
:А *
T0*
Tshape0
l
Reshape_17/shapeConst^AdaMax*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_17Reshapepi/dense_1/bias/readReshape_17/shape*
_output_shapes
:@*
T0*
Tshape0
l
Reshape_18/shapeConst^AdaMax*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_18Reshapepi/dense_2/kernel/readReshape_18/shape*
T0*
Tshape0*
_output_shapes	
:А
l
Reshape_19/shapeConst^AdaMax*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_19Reshapepi/dense_2/bias/readReshape_19/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_20/shapeConst^AdaMax*
valueB:
         *
dtype0*
_output_shapes
:
k

Reshape_20Reshapepi/log_std/readReshape_20/shape*
T0*
Tshape0*
_output_shapes
:
X
concat_1/axisConst^AdaMax*
value	B : *
dtype0*
_output_shapes
: 
▓
concat_1ConcatV2
Reshape_14
Reshape_15
Reshape_16
Reshape_17
Reshape_18
Reshape_19
Reshape_20concat_1/axis*
N*
_output_shapes	
:И/*

Tidx0*
T0
h
PyFunc_1PyFuncconcat_1*
Tout
2*
token
pyfunc_1*
Tin
2*
_output_shapes
:
u
Const_5Const^AdaMax*
_output_shapes
:*1
value(B&"   @      @            *
dtype0
\
split_1/split_dimConst^AdaMax*
_output_shapes
: *
value	B : *
dtype0
П
split_1SplitVPyFunc_1Const_5split_1/split_dim*
T0*

Tlen0*
	num_split*0
_output_shapes
:::::::
j
Reshape_21/shapeConst^AdaMax*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_21Reshapesplit_1Reshape_21/shape*
T0*
Tshape0*
_output_shapes

:@
c
Reshape_22/shapeConst^AdaMax*
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
j
Reshape_23/shapeConst^AdaMax*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_23Reshape	split_1:2Reshape_23/shape*
Tshape0*
_output_shapes

:@@*
T0
c
Reshape_24/shapeConst^AdaMax*
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
j
Reshape_25/shapeConst^AdaMax*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_25Reshape	split_1:4Reshape_25/shape*
T0*
Tshape0*
_output_shapes

:@
c
Reshape_26/shapeConst^AdaMax*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_26Reshape	split_1:5Reshape_26/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_27/shapeConst^AdaMax*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_27Reshape	split_1:6Reshape_27/shape*
_output_shapes
:*
T0*
Tshape0
г
AssignAssignpi/dense/kernel
Reshape_21*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
Э
Assign_1Assignpi/dense/bias
Reshape_22*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
й
Assign_2Assignpi/dense_1/kernel
Reshape_23*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
б
Assign_3Assignpi/dense_1/bias
Reshape_24*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
й
Assign_4Assignpi/dense_2/kernel
Reshape_25*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
б
Assign_5Assignpi/dense_2/bias
Reshape_26*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
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
:
f

group_depsNoOp^AdaMax^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6
*
group_deps_1NoOp^AdaMax^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  А?
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
_output_shapes
: *
T0*

index_type0
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
Ц
gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients_1/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:
д
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*#
_output_shapes
:         *

Tmultiples0*
T0
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
в
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
i
gradients_1/Mean_1_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
ж
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
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
Ф
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:         
]
gradients_1/pow_grad/ShapeShapesub*
_output_shapes
:*
T0*
out_type0
_
gradients_1/pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
║
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*
T0*2
_output_shapes 
:         :         
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*#
_output_shapes
:         *
T0
_
gradients_1/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
T0*
_output_shapes
: 
l
gradients_1/pow_grad/PowPowsubgradients_1/pow_grad/sub*#
_output_shapes
:         *
T0
Г
gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*
T0*#
_output_shapes
:         
з
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
:         
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
:         
g
$gradients_1/pow_grad/ones_like/ShapeShapesub*
T0*
out_type0*
_output_shapes
:
i
$gradients_1/pow_grad/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
▓
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:         
Ц
gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersubgradients_1/pow_grad/ones_like*#
_output_shapes
:         *
T0
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*
T0*#
_output_shapes
:         
_
gradients_1/pow_grad/zeros_like	ZerosLikesub*
T0*#
_output_shapes
:         
о
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*
T0*#
_output_shapes
:         
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*#
_output_shapes
:         *
T0
К
gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:         
л
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Т
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
▐
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:         
╫
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
gradients_1/sub_grad/Shape_1Shape	v/Squeeze*
_output_shapes
:*
T0*
out_type0
║
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
║
gradients_1/sub_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Щ
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
╛
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
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
▐
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape*#
_output_shapes
:         
ф
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1*#
_output_shapes
:         
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
└
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Э
.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
С
3gradients_1/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad
К
;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape*'
_output_shapes
:         *
T0
Ч
=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad
▐
(gradients_1/v/dense_2/MatMul_grad/MatMulMatMul;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b(
╘
*gradients_1/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Softplus;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
Т
2gradients_1/v/dense_2/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_2/MatMul_grad/MatMul+^gradients_1/v/dense_2/MatMul_grad/MatMul_1
Ф
:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/MatMul_grad/MatMul3^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_2/MatMul_grad/MatMul*'
_output_shapes
:         @
С
<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_2/MatMul_grad/MatMul_13^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*=
_class3
1/loc:@gradients_1/v/dense_2/MatMul_grad/MatMul_1
┴
0gradients_1/v/dense_1/Softplus_grad/SoftplusGradSoftplusGrad:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyv/dense_1/BiasAdd*
T0*'
_output_shapes
:         @
л
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients_1/v/dense_1/Softplus_grad/SoftplusGrad*
data_formatNHWC*
_output_shapes
:@*
T0
Я
3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad1^gradients_1/v/dense_1/Softplus_grad/SoftplusGrad
ж
;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity0gradients_1/v/dense_1/Softplus_grad/SoftplusGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         @*
T0*C
_class9
75loc:@gradients_1/v/dense_1/Softplus_grad/SoftplusGrad
Ч
=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
▐
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:         @
╥
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Softplus;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@@*
transpose_b( 
Т
2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1
Ф
:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:         @
С
<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@
╜
.gradients_1/v/dense/Softplus_grad/SoftplusGradSoftplusGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/BiasAdd*'
_output_shapes
:         @*
T0
з
,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients_1/v/dense/Softplus_grad/SoftplusGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Щ
1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad/^gradients_1/v/dense/Softplus_grad/SoftplusGrad
Ю
9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity.gradients_1/v/dense/Softplus_grad/SoftplusGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         @*
T0*A
_class7
53loc:@gradients_1/v/dense/Softplus_grad/SoftplusGrad
П
;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad
╪
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b(*
T0
╔
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
М
0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1
М
8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul*'
_output_shapes
:         
Й
:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes

:@
c
Reshape_28/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ч

Reshape_28Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_28/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_29/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ч

Reshape_29Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_29/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_30/shapeConst*
valueB:
         *
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
Reshape_31/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Щ

Reshape_31Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_31/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_32/shapeConst*
valueB:
         *
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
         *
dtype0*
_output_shapes
:
Щ

Reshape_33Reshape=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_33/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ж
concat_2ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31
Reshape_32
Reshape_33concat_2/axis*
N*
_output_shapes	
:┴-*

Tidx0*
T0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:┴-*
Tout
2*
token
pyfunc_2
h
Const_6Const*-
value$B""   @      @   @      *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
Щ
split_2SplitVPyFunc_2Const_6split_2/split_dim*

Tlen0*
	num_split*:
_output_shapes(
&:А:@:А :@:@:*
T0
a
Reshape_34/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_34Reshapesplit_2Reshape_34/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_35/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_35Reshape	split_2:1Reshape_35/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_36/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_36Reshape	split_2:2Reshape_36/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_37/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_37Reshape	split_2:3Reshape_37/shape*
T0*
Tshape0*
_output_shapes
:@
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
Б
beta1_power_1/initial_valueConst*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *fff?*
dtype0
Т
beta1_power_1
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
╡
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
o
beta1_power_1/readIdentitybeta1_power_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
л
7v/dense/kernel/AdaMax/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:
Х
-v/dense/kernel/AdaMax/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
ї
'v/dense/kernel/AdaMax/Initializer/zerosFill7v/dense/kernel/AdaMax/Initializer/zeros/shape_as_tensor-v/dense/kernel/AdaMax/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
м
v/dense/kernel/AdaMax
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
█
v/dense/kernel/AdaMax/AssignAssignv/dense/kernel/AdaMax'v/dense/kernel/AdaMax/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Й
v/dense/kernel/AdaMax/readIdentityv/dense/kernel/AdaMax*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
н
9v/dense/kernel/AdaMax_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"   @   *!
_class
loc:@v/dense/kernel*
dtype0
Ч
/v/dense/kernel/AdaMax_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
√
)v/dense/kernel/AdaMax_1/Initializer/zerosFill9v/dense/kernel/AdaMax_1/Initializer/zeros/shape_as_tensor/v/dense/kernel/AdaMax_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
о
v/dense/kernel/AdaMax_1
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
с
v/dense/kernel/AdaMax_1/AssignAssignv/dense/kernel/AdaMax_1)v/dense/kernel/AdaMax_1/Initializer/zeros*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Н
v/dense/kernel/AdaMax_1/readIdentityv/dense/kernel/AdaMax_1*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
У
%v/dense/bias/AdaMax/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@
а
v/dense/bias/AdaMax
VariableV2*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@*
dtype0
╧
v/dense/bias/AdaMax/AssignAssignv/dense/bias/AdaMax%v/dense/bias/AdaMax/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@

v/dense/bias/AdaMax/readIdentityv/dense/bias/AdaMax*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
Х
'v/dense/bias/AdaMax_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@
в
v/dense/bias/AdaMax_1
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
╒
v/dense/bias/AdaMax_1/AssignAssignv/dense/bias/AdaMax_1'v/dense/bias/AdaMax_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Г
v/dense/bias/AdaMax_1/readIdentityv/dense/bias/AdaMax_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
п
9v/dense_1/kernel/AdaMax/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:
Щ
/v/dense_1/kernel/AdaMax/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
¤
)v/dense_1/kernel/AdaMax/Initializer/zerosFill9v/dense_1/kernel/AdaMax/Initializer/zeros/shape_as_tensor/v/dense_1/kernel/AdaMax/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
░
v/dense_1/kernel/AdaMax
VariableV2*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name *#
_class
loc:@v/dense_1/kernel
у
v/dense_1/kernel/AdaMax/AssignAssignv/dense_1/kernel/AdaMax)v/dense_1/kernel/AdaMax/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
П
v/dense_1/kernel/AdaMax/readIdentityv/dense_1/kernel/AdaMax*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
▒
;v/dense_1/kernel/AdaMax_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel
Ы
1v/dense_1/kernel/AdaMax_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
Г
+v/dense_1/kernel/AdaMax_1/Initializer/zerosFill;v/dense_1/kernel/AdaMax_1/Initializer/zeros/shape_as_tensor1v/dense_1/kernel/AdaMax_1/Initializer/zeros/Const*
_output_shapes

:@@*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel
▓
v/dense_1/kernel/AdaMax_1
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
щ
 v/dense_1/kernel/AdaMax_1/AssignAssignv/dense_1/kernel/AdaMax_1+v/dense_1/kernel/AdaMax_1/Initializer/zeros*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
У
v/dense_1/kernel/AdaMax_1/readIdentityv/dense_1/kernel/AdaMax_1*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0
Ч
'v/dense_1/bias/AdaMax/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0
д
v/dense_1/bias/AdaMax
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias
╫
v/dense_1/bias/AdaMax/AssignAssignv/dense_1/bias/AdaMax'v/dense_1/bias/AdaMax/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Е
v/dense_1/bias/AdaMax/readIdentityv/dense_1/bias/AdaMax*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
Щ
)v/dense_1/bias/AdaMax_1/Initializer/zerosConst*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:@
ж
v/dense_1/bias/AdaMax_1
VariableV2*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
▌
v/dense_1/bias/AdaMax_1/AssignAssignv/dense_1/bias/AdaMax_1)v/dense_1/bias/AdaMax_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Й
v/dense_1/bias/AdaMax_1/readIdentityv/dense_1/bias/AdaMax_1*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0
г
)v/dense_2/kernel/AdaMax/Initializer/zerosConst*
valueB@*    *#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes

:@
░
v/dense_2/kernel/AdaMax
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
у
v/dense_2/kernel/AdaMax/AssignAssignv/dense_2/kernel/AdaMax)v/dense_2/kernel/AdaMax/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
П
v/dense_2/kernel/AdaMax/readIdentityv/dense_2/kernel/AdaMax*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
е
+v/dense_2/kernel/AdaMax_1/Initializer/zerosConst*
valueB@*    *#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes

:@
▓
v/dense_2/kernel/AdaMax_1
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
щ
 v/dense_2/kernel/AdaMax_1/AssignAssignv/dense_2/kernel/AdaMax_1+v/dense_2/kernel/AdaMax_1/Initializer/zeros*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
У
v/dense_2/kernel/AdaMax_1/readIdentityv/dense_2/kernel/AdaMax_1*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
Ч
'v/dense_2/bias/AdaMax/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
д
v/dense_2/bias/AdaMax
VariableV2*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╫
v/dense_2/bias/AdaMax/AssignAssignv/dense_2/bias/AdaMax'v/dense_2/bias/AdaMax/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Е
v/dense_2/bias/AdaMax/readIdentityv/dense_2/bias/AdaMax*
_output_shapes
:*
T0*!
_class
loc:@v/dense_2/bias
Щ
)v/dense_2/bias/AdaMax_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *!
_class
loc:@v/dense_2/bias
ж
v/dense_2/bias/AdaMax_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:
▌
v/dense_2/bias/AdaMax_1/AssignAssignv/dense_2/bias/AdaMax_1)v/dense_2/bias/AdaMax_1/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Й
v/dense_2/bias/AdaMax_1/readIdentityv/dense_2/bias/AdaMax_1*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
[
AdaMax_1/learning_rateConst*
_output_shapes
: *
valueB
 *oГ:*
dtype0
S
AdaMax_1/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
S
AdaMax_1/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
U
AdaMax_1/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
┬
*AdaMax_1/update_v/dense/kernel/ApplyAdaMaxApplyAdaMaxv/dense/kernelv/dense/kernel/AdaMaxv/dense/kernel/AdaMax_1beta1_power_1/readAdaMax_1/learning_rateAdaMax_1/beta1AdaMax_1/beta2AdaMax_1/epsilon
Reshape_34*
_output_shapes

:@*
use_locking( *
T0*!
_class
loc:@v/dense/kernel
┤
(AdaMax_1/update_v/dense/bias/ApplyAdaMaxApplyAdaMaxv/dense/biasv/dense/bias/AdaMaxv/dense/bias/AdaMax_1beta1_power_1/readAdaMax_1/learning_rateAdaMax_1/beta1AdaMax_1/beta2AdaMax_1/epsilon
Reshape_35*
_class
loc:@v/dense/bias*
_output_shapes
:@*
use_locking( *
T0
╠
,AdaMax_1/update_v/dense_1/kernel/ApplyAdaMaxApplyAdaMaxv/dense_1/kernelv/dense_1/kernel/AdaMaxv/dense_1/kernel/AdaMax_1beta1_power_1/readAdaMax_1/learning_rateAdaMax_1/beta1AdaMax_1/beta2AdaMax_1/epsilon
Reshape_36*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
use_locking( 
╛
*AdaMax_1/update_v/dense_1/bias/ApplyAdaMaxApplyAdaMaxv/dense_1/biasv/dense_1/bias/AdaMaxv/dense_1/bias/AdaMax_1beta1_power_1/readAdaMax_1/learning_rateAdaMax_1/beta1AdaMax_1/beta2AdaMax_1/epsilon
Reshape_37*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
╠
,AdaMax_1/update_v/dense_2/kernel/ApplyAdaMaxApplyAdaMaxv/dense_2/kernelv/dense_2/kernel/AdaMaxv/dense_2/kernel/AdaMax_1beta1_power_1/readAdaMax_1/learning_rateAdaMax_1/beta1AdaMax_1/beta2AdaMax_1/epsilon
Reshape_38*
use_locking( *
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
╛
*AdaMax_1/update_v/dense_2/bias/ApplyAdaMaxApplyAdaMaxv/dense_2/biasv/dense_2/bias/AdaMaxv/dense_2/bias/AdaMax_1beta1_power_1/readAdaMax_1/learning_rateAdaMax_1/beta1AdaMax_1/beta2AdaMax_1/epsilon
Reshape_39*
_output_shapes
:*
use_locking( *
T0*!
_class
loc:@v/dense_2/bias
Й
AdaMax_1/mulMulbeta1_power_1/readAdaMax_1/beta1)^AdaMax_1/update_v/dense/bias/ApplyAdaMax+^AdaMax_1/update_v/dense/kernel/ApplyAdaMax+^AdaMax_1/update_v/dense_1/bias/ApplyAdaMax-^AdaMax_1/update_v/dense_1/kernel/ApplyAdaMax+^AdaMax_1/update_v/dense_2/bias/ApplyAdaMax-^AdaMax_1/update_v/dense_2/kernel/ApplyAdaMax*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
б
AdaMax_1/AssignAssignbeta1_power_1AdaMax_1/mul*
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
▓
AdaMax_1NoOp^AdaMax_1/Assign)^AdaMax_1/update_v/dense/bias/ApplyAdaMax+^AdaMax_1/update_v/dense/kernel/ApplyAdaMax+^AdaMax_1/update_v/dense_1/bias/ApplyAdaMax-^AdaMax_1/update_v/dense_1/kernel/ApplyAdaMax+^AdaMax_1/update_v/dense_2/bias/ApplyAdaMax-^AdaMax_1/update_v/dense_2/kernel/ApplyAdaMax
n
Reshape_40/shapeConst	^AdaMax_1*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_40Reshapev/dense/kernel/readReshape_40/shape*
_output_shapes	
:А*
T0*
Tshape0
n
Reshape_41/shapeConst	^AdaMax_1*
valueB:
         *
dtype0*
_output_shapes
:
m

Reshape_41Reshapev/dense/bias/readReshape_41/shape*
_output_shapes
:@*
T0*
Tshape0
n
Reshape_42/shapeConst	^AdaMax_1*
valueB:
         *
dtype0*
_output_shapes
:
r

Reshape_42Reshapev/dense_1/kernel/readReshape_42/shape*
_output_shapes	
:А *
T0*
Tshape0
n
Reshape_43/shapeConst	^AdaMax_1*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_43Reshapev/dense_1/bias/readReshape_43/shape*
T0*
Tshape0*
_output_shapes
:@
n
Reshape_44/shapeConst	^AdaMax_1*
_output_shapes
:*
valueB:
         *
dtype0
q

Reshape_44Reshapev/dense_2/kernel/readReshape_44/shape*
T0*
Tshape0*
_output_shapes
:@
n
Reshape_45/shapeConst	^AdaMax_1*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_45Reshapev/dense_2/bias/readReshape_45/shape*
T0*
Tshape0*
_output_shapes
:
Z
concat_3/axisConst	^AdaMax_1*
value	B : *
dtype0*
_output_shapes
: 
ж
concat_3ConcatV2
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45concat_3/axis*
T0*
N*
_output_shapes	
:┴-*

Tidx0
h
PyFunc_3PyFuncconcat_3*
token
pyfunc_3*
Tin
2*
_output_shapes
:*
Tout
2
s
Const_7Const	^AdaMax_1*
_output_shapes
:*-
value$B""   @      @   @      *
dtype0
^
split_3/split_dimConst	^AdaMax_1*
value	B : *
dtype0*
_output_shapes
: 
Л
split_3SplitVPyFunc_3Const_7split_3/split_dim*
T0*

Tlen0*
	num_split*,
_output_shapes
::::::
l
Reshape_46/shapeConst	^AdaMax_1*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_46Reshapesplit_3Reshape_46/shape*
T0*
Tshape0*
_output_shapes

:@
e
Reshape_47/shapeConst	^AdaMax_1*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_47Reshape	split_3:1Reshape_47/shape*
_output_shapes
:@*
T0*
Tshape0
l
Reshape_48/shapeConst	^AdaMax_1*
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
e
Reshape_49/shapeConst	^AdaMax_1*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_49Reshape	split_3:3Reshape_49/shape*
T0*
Tshape0*
_output_shapes
:@
l
Reshape_50/shapeConst	^AdaMax_1*
_output_shapes
:*
valueB"@      *
dtype0
i

Reshape_50Reshape	split_3:4Reshape_50/shape*
T0*
Tshape0*
_output_shapes

:@
e
Reshape_51/shapeConst	^AdaMax_1*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_51Reshape	split_3:5Reshape_51/shape*
_output_shapes
:*
T0*
Tshape0
г
Assign_7Assignv/dense/kernel
Reshape_46*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
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
з
Assign_9Assignv/dense_1/kernel
Reshape_48*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
а
	Assign_10Assignv/dense_1/bias
Reshape_49*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
и
	Assign_11Assignv/dense_2/kernel
Reshape_50*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
а
	Assign_12Assignv/dense_2/bias
Reshape_51*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
d
group_deps_2NoOp	^AdaMax_1
^Assign_10
^Assign_11
^Assign_12	^Assign_7	^Assign_8	^Assign_9
.
group_deps_3NoOp	^AdaMax_1^group_deps_2
┬	
initNoOp^beta1_power/Assign^beta1_power_1/Assign^pi/dense/bias/AdaMax/Assign^pi/dense/bias/AdaMax_1/Assign^pi/dense/bias/Assign^pi/dense/kernel/AdaMax/Assign ^pi/dense/kernel/AdaMax_1/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/AdaMax/Assign ^pi/dense_1/bias/AdaMax_1/Assign^pi/dense_1/bias/Assign ^pi/dense_1/kernel/AdaMax/Assign"^pi/dense_1/kernel/AdaMax_1/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/AdaMax/Assign ^pi/dense_2/bias/AdaMax_1/Assign^pi/dense_2/bias/Assign ^pi/dense_2/kernel/AdaMax/Assign"^pi/dense_2/kernel/AdaMax_1/Assign^pi/dense_2/kernel/Assign^pi/log_std/AdaMax/Assign^pi/log_std/AdaMax_1/Assign^pi/log_std/Assign^v/dense/bias/AdaMax/Assign^v/dense/bias/AdaMax_1/Assign^v/dense/bias/Assign^v/dense/kernel/AdaMax/Assign^v/dense/kernel/AdaMax_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/AdaMax/Assign^v/dense_1/bias/AdaMax_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/AdaMax/Assign!^v/dense_1/kernel/AdaMax_1/Assign^v/dense_1/kernel/Assign^v/dense_2/bias/AdaMax/Assign^v/dense_2/bias/AdaMax_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/AdaMax/Assign!^v/dense_2/kernel/AdaMax_1/Assign^v/dense_2/kernel/Assign
c
Reshape_52/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
q

Reshape_52Reshapepi/dense/kernel/readReshape_52/shape*
_output_shapes	
:А*
T0*
Tshape0
c
Reshape_53/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
n

Reshape_53Reshapepi/dense/bias/readReshape_53/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_54/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_54Reshapepi/dense_1/kernel/readReshape_54/shape*
_output_shapes	
:А *
T0*
Tshape0
c
Reshape_55/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_55Reshapepi/dense_1/bias/readReshape_55/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_56/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
s

Reshape_56Reshapepi/dense_2/kernel/readReshape_56/shape*
Tshape0*
_output_shapes	
:А*
T0
c
Reshape_57/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_57Reshapepi/dense_2/bias/readReshape_57/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_58/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
k

Reshape_58Reshapepi/log_std/readReshape_58/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_59/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_59Reshapev/dense/kernel/readReshape_59/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_60/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
m

Reshape_60Reshapev/dense/bias/readReshape_60/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_61/shapeConst*
valueB:
         *
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
         *
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
dtype0*
_output_shapes
:*
valueB:
         
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
         
o

Reshape_64Reshapev/dense_2/bias/readReshape_64/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_65/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
l

Reshape_65Reshapebeta1_power/readReshape_65/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_66/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_66Reshapepi/dense/kernel/AdaMax/readReshape_66/shape*
_output_shapes	
:А*
T0*
Tshape0
c
Reshape_67/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
z

Reshape_67Reshapepi/dense/kernel/AdaMax_1/readReshape_67/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_68/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
u

Reshape_68Reshapepi/dense/bias/AdaMax/readReshape_68/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_69/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_69Reshapepi/dense/bias/AdaMax_1/readReshape_69/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_70/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
z

Reshape_70Reshapepi/dense_1/kernel/AdaMax/readReshape_70/shape*
_output_shapes	
:А *
T0*
Tshape0
c
Reshape_71/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
|

Reshape_71Reshapepi/dense_1/kernel/AdaMax_1/readReshape_71/shape*
_output_shapes	
:А *
T0*
Tshape0
c
Reshape_72/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_72Reshapepi/dense_1/bias/AdaMax/readReshape_72/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_73/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_73Reshapepi/dense_1/bias/AdaMax_1/readReshape_73/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_74/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
z

Reshape_74Reshapepi/dense_2/kernel/AdaMax/readReshape_74/shape*
Tshape0*
_output_shapes	
:А*
T0
c
Reshape_75/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
|

Reshape_75Reshapepi/dense_2/kernel/AdaMax_1/readReshape_75/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_76/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_76Reshapepi/dense_2/bias/AdaMax/readReshape_76/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_77/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_77Reshapepi/dense_2/bias/AdaMax_1/readReshape_77/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_78/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
r

Reshape_78Reshapepi/log_std/AdaMax/readReshape_78/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_79/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
t

Reshape_79Reshapepi/log_std/AdaMax_1/readReshape_79/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_80/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_80Reshapebeta1_power_1/readReshape_80/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_81/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_81Reshapev/dense/kernel/AdaMax/readReshape_81/shape*
T0*
Tshape0*
_output_shapes	
:А
c
Reshape_82/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_82Reshapev/dense/kernel/AdaMax_1/readReshape_82/shape*
_output_shapes	
:А*
T0*
Tshape0
c
Reshape_83/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
t

Reshape_83Reshapev/dense/bias/AdaMax/readReshape_83/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_84/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
v

Reshape_84Reshapev/dense/bias/AdaMax_1/readReshape_84/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_85/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_85Reshapev/dense_1/kernel/AdaMax/readReshape_85/shape*
T0*
Tshape0*
_output_shapes	
:А 
c
Reshape_86/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
{

Reshape_86Reshapev/dense_1/kernel/AdaMax_1/readReshape_86/shape*
T0*
Tshape0*
_output_shapes	
:А 
c
Reshape_87/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
v

Reshape_87Reshapev/dense_1/bias/AdaMax/readReshape_87/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_88/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_88Reshapev/dense_1/bias/AdaMax_1/readReshape_88/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_89/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_89Reshapev/dense_2/kernel/AdaMax/readReshape_89/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_90/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
z

Reshape_90Reshapev/dense_2/kernel/AdaMax_1/readReshape_90/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_91/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
v

Reshape_91Reshapev/dense_2/bias/AdaMax/readReshape_91/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_92/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_92Reshapev/dense_2/bias/AdaMax_1/readReshape_92/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_4/axisConst*
_output_shapes
: *
value	B : *
dtype0
╦
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
Reshape_90
Reshape_91
Reshape_92concat_4/axis*
T0*
N)*
_output_shapes

:▌Х*

Tidx0
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
°
Const_8Const*╝
value▓Bп)"д   @      @               @      @   @               @   @         @   @                              @   @         @   @   @   @         *
dtype0*
_output_shapes
:)
S
split_4/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ъ
split_4SplitVPyFunc_4Const_8split_4/split_dim*

Tlen0*
	num_split)*║
_output_shapesз
д:::::::::::::::::::::::::::::::::::::::::*
T0
a
Reshape_93/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_93Reshapesplit_4Reshape_93/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_94/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_94Reshape	split_4:1Reshape_94/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_95/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_95Reshape	split_4:2Reshape_95/shape*
Tshape0*
_output_shapes

:@@*
T0
Z
Reshape_96/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_96Reshape	split_4:3Reshape_96/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_97/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_97Reshape	split_4:4Reshape_97/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_98/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_98Reshape	split_4:5Reshape_98/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_99/shapeConst*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_99Reshape	split_4:6Reshape_99/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_100/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
k
Reshape_100Reshape	split_4:7Reshape_100/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_101/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
g
Reshape_101Reshape	split_4:8Reshape_101/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_102/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
k
Reshape_102Reshape	split_4:9Reshape_102/shape*
T0*
Tshape0*
_output_shapes

:@@
[
Reshape_103/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_103Reshape
split_4:10Reshape_103/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_104/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
l
Reshape_104Reshape
split_4:11Reshape_104/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_105/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_105Reshape
split_4:12Reshape_105/shape*
_output_shapes
:*
T0*
Tshape0
T
Reshape_106/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_106Reshape
split_4:13Reshape_106/shape*
_output_shapes
: *
T0*
Tshape0
b
Reshape_107/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
l
Reshape_107Reshape
split_4:14Reshape_107/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_108/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_108Reshape
split_4:15Reshape_108/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_109/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_109Reshape
split_4:16Reshape_109/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_110/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_110Reshape
split_4:17Reshape_110/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_111/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_111Reshape
split_4:18Reshape_111/shape*
Tshape0*
_output_shapes

:@@*
T0
b
Reshape_112/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
l
Reshape_112Reshape
split_4:19Reshape_112/shape*
T0*
Tshape0*
_output_shapes

:@@
[
Reshape_113/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_113Reshape
split_4:20Reshape_113/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_114/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_114Reshape
split_4:21Reshape_114/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_115/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_115Reshape
split_4:22Reshape_115/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_116/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
l
Reshape_116Reshape
split_4:23Reshape_116/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_117/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_117Reshape
split_4:24Reshape_117/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_118/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_118Reshape
split_4:25Reshape_118/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_119/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_119Reshape
split_4:26Reshape_119/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_120/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_120Reshape
split_4:27Reshape_120/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_121/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_121Reshape
split_4:28Reshape_121/shape*
T0*
Tshape0*
_output_shapes
: 
b
Reshape_122/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_122Reshape
split_4:29Reshape_122/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_123/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_123Reshape
split_4:30Reshape_123/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_124/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_124Reshape
split_4:31Reshape_124/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_125/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_125Reshape
split_4:32Reshape_125/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_126/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   @   
l
Reshape_126Reshape
split_4:33Reshape_126/shape*
Tshape0*
_output_shapes

:@@*
T0
b
Reshape_127/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_127Reshape
split_4:34Reshape_127/shape*
_output_shapes

:@@*
T0*
Tshape0
[
Reshape_128/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_128Reshape
split_4:35Reshape_128/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_129/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_129Reshape
split_4:36Reshape_129/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_130/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_130Reshape
split_4:37Reshape_130/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_131/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_131Reshape
split_4:38Reshape_131/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_132/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_132Reshape
split_4:39Reshape_132/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_133/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_133Reshape
split_4:40Reshape_133/shape*
T0*
Tshape0*
_output_shapes
:
ж
	Assign_13Assignpi/dense/kernel
Reshape_93*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
Ю
	Assign_14Assignpi/dense/bias
Reshape_94*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
к
	Assign_15Assignpi/dense_1/kernel
Reshape_95*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
в
	Assign_16Assignpi/dense_1/bias
Reshape_96*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
к
	Assign_17Assignpi/dense_2/kernel
Reshape_97*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
в
	Assign_18Assignpi/dense_2/bias
Reshape_98*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ш
	Assign_19Assign
pi/log_std
Reshape_99*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
е
	Assign_20Assignv/dense/kernelReshape_100*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Э
	Assign_21Assignv/dense/biasReshape_101*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
й
	Assign_22Assignv/dense_1/kernelReshape_102*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
б
	Assign_23Assignv/dense_1/biasReshape_103*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
й
	Assign_24Assignv/dense_2/kernelReshape_104*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
б
	Assign_25Assignv/dense_2/biasReshape_105*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
Щ
	Assign_26Assignbeta1_powerReshape_106*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
о
	Assign_27Assignpi/dense/kernel/AdaMaxReshape_107*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
░
	Assign_28Assignpi/dense/kernel/AdaMax_1Reshape_108*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
ж
	Assign_29Assignpi/dense/bias/AdaMaxReshape_109*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
и
	Assign_30Assignpi/dense/bias/AdaMax_1Reshape_110*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
▓
	Assign_31Assignpi/dense_1/kernel/AdaMaxReshape_111*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
┤
	Assign_32Assignpi/dense_1/kernel/AdaMax_1Reshape_112*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
к
	Assign_33Assignpi/dense_1/bias/AdaMaxReshape_113*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
м
	Assign_34Assignpi/dense_1/bias/AdaMax_1Reshape_114*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
▓
	Assign_35Assignpi/dense_2/kernel/AdaMaxReshape_115*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┤
	Assign_36Assignpi/dense_2/kernel/AdaMax_1Reshape_116*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
к
	Assign_37Assignpi/dense_2/bias/AdaMaxReshape_117*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
м
	Assign_38Assignpi/dense_2/bias/AdaMax_1Reshape_118*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
а
	Assign_39Assignpi/log_std/AdaMaxReshape_119*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
в
	Assign_40Assignpi/log_std/AdaMax_1Reshape_120*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
Ъ
	Assign_41Assignbeta1_power_1Reshape_121*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
м
	Assign_42Assignv/dense/kernel/AdaMaxReshape_122*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
о
	Assign_43Assignv/dense/kernel/AdaMax_1Reshape_123*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
д
	Assign_44Assignv/dense/bias/AdaMaxReshape_124*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
ж
	Assign_45Assignv/dense/bias/AdaMax_1Reshape_125*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
░
	Assign_46Assignv/dense_1/kernel/AdaMaxReshape_126*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
▓
	Assign_47Assignv/dense_1/kernel/AdaMax_1Reshape_127*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
и
	Assign_48Assignv/dense_1/bias/AdaMaxReshape_128*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
к
	Assign_49Assignv/dense_1/bias/AdaMax_1Reshape_129*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
░
	Assign_50Assignv/dense_2/kernel/AdaMaxReshape_130*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
▓
	Assign_51Assignv/dense_2/kernel/AdaMax_1Reshape_131*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
и
	Assign_52Assignv/dense_2/bias/AdaMaxReshape_132*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
к
	Assign_53Assignv/dense_2/bias/AdaMax_1Reshape_133*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
А
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
^Assign_51
^Assign_52
^Assign_53
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_da83acac28a24b1c802bef39ddb2b977/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
╨
save/SaveV2/tensor_namesConst*Г
value∙BЎ)Bbeta1_powerBbeta1_power_1Bpi/dense/biasBpi/dense/bias/AdaMaxBpi/dense/bias/AdaMax_1Bpi/dense/kernelBpi/dense/kernel/AdaMaxBpi/dense/kernel/AdaMax_1Bpi/dense_1/biasBpi/dense_1/bias/AdaMaxBpi/dense_1/bias/AdaMax_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdaMaxBpi/dense_1/kernel/AdaMax_1Bpi/dense_2/biasBpi/dense_2/bias/AdaMaxBpi/dense_2/bias/AdaMax_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdaMaxBpi/dense_2/kernel/AdaMax_1B
pi/log_stdBpi/log_std/AdaMaxBpi/log_std/AdaMax_1Bv/dense/biasBv/dense/bias/AdaMaxBv/dense/bias/AdaMax_1Bv/dense/kernelBv/dense/kernel/AdaMaxBv/dense/kernel/AdaMax_1Bv/dense_1/biasBv/dense_1/bias/AdaMaxBv/dense_1/bias/AdaMax_1Bv/dense_1/kernelBv/dense_1/kernel/AdaMaxBv/dense_1/kernel/AdaMax_1Bv/dense_2/biasBv/dense_2/bias/AdaMaxBv/dense_2/bias/AdaMax_1Bv/dense_2/kernelBv/dense_2/kernel/AdaMaxBv/dense_2/kernel/AdaMax_1*
dtype0*
_output_shapes
:)
╡
save/SaveV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
К
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1pi/dense/biaspi/dense/bias/AdaMaxpi/dense/bias/AdaMax_1pi/dense/kernelpi/dense/kernel/AdaMaxpi/dense/kernel/AdaMax_1pi/dense_1/biaspi/dense_1/bias/AdaMaxpi/dense_1/bias/AdaMax_1pi/dense_1/kernelpi/dense_1/kernel/AdaMaxpi/dense_1/kernel/AdaMax_1pi/dense_2/biaspi/dense_2/bias/AdaMaxpi/dense_2/bias/AdaMax_1pi/dense_2/kernelpi/dense_2/kernel/AdaMaxpi/dense_2/kernel/AdaMax_1
pi/log_stdpi/log_std/AdaMaxpi/log_std/AdaMax_1v/dense/biasv/dense/bias/AdaMaxv/dense/bias/AdaMax_1v/dense/kernelv/dense/kernel/AdaMaxv/dense/kernel/AdaMax_1v/dense_1/biasv/dense_1/bias/AdaMaxv/dense_1/bias/AdaMax_1v/dense_1/kernelv/dense_1/kernel/AdaMaxv/dense_1/kernel/AdaMax_1v/dense_2/biasv/dense_2/bias/AdaMaxv/dense_2/bias/AdaMax_1v/dense_2/kernelv/dense_2/kernel/AdaMaxv/dense_2/kernel/AdaMax_1*7
dtypes-
+2)
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
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
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
╙
save/RestoreV2/tensor_namesConst*Г
value∙BЎ)Bbeta1_powerBbeta1_power_1Bpi/dense/biasBpi/dense/bias/AdaMaxBpi/dense/bias/AdaMax_1Bpi/dense/kernelBpi/dense/kernel/AdaMaxBpi/dense/kernel/AdaMax_1Bpi/dense_1/biasBpi/dense_1/bias/AdaMaxBpi/dense_1/bias/AdaMax_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdaMaxBpi/dense_1/kernel/AdaMax_1Bpi/dense_2/biasBpi/dense_2/bias/AdaMaxBpi/dense_2/bias/AdaMax_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdaMaxBpi/dense_2/kernel/AdaMax_1B
pi/log_stdBpi/log_std/AdaMaxBpi/log_std/AdaMax_1Bv/dense/biasBv/dense/bias/AdaMaxBv/dense/bias/AdaMax_1Bv/dense/kernelBv/dense/kernel/AdaMaxBv/dense/kernel/AdaMax_1Bv/dense_1/biasBv/dense_1/bias/AdaMaxBv/dense_1/bias/AdaMax_1Bv/dense_1/kernelBv/dense_1/kernel/AdaMaxBv/dense_1/kernel/AdaMax_1Bv/dense_2/biasBv/dense_2/bias/AdaMaxBv/dense_2/bias/AdaMax_1Bv/dense_2/kernelBv/dense_2/kernel/AdaMaxBv/dense_2/kernel/AdaMax_1*
dtype0*
_output_shapes
:)
╕
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:)*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
█
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*║
_output_shapesз
д:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)
Ю
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
г
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
и
save/Assign_2Assignpi/dense/biassave/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
п
save/Assign_3Assignpi/dense/bias/AdaMaxsave/RestoreV2:3*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
▒
save/Assign_4Assignpi/dense/bias/AdaMax_1save/RestoreV2:4*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
░
save/Assign_5Assignpi/dense/kernelsave/RestoreV2:5*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
╖
save/Assign_6Assignpi/dense/kernel/AdaMaxsave/RestoreV2:6*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
╣
save/Assign_7Assignpi/dense/kernel/AdaMax_1save/RestoreV2:7*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
м
save/Assign_8Assignpi/dense_1/biassave/RestoreV2:8*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
│
save/Assign_9Assignpi/dense_1/bias/AdaMaxsave/RestoreV2:9*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
╖
save/Assign_10Assignpi/dense_1/bias/AdaMax_1save/RestoreV2:10*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
╢
save/Assign_11Assignpi/dense_1/kernelsave/RestoreV2:11*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
╜
save/Assign_12Assignpi/dense_1/kernel/AdaMaxsave/RestoreV2:12*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
┐
save/Assign_13Assignpi/dense_1/kernel/AdaMax_1save/RestoreV2:13*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
о
save/Assign_14Assignpi/dense_2/biassave/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
╡
save/Assign_15Assignpi/dense_2/bias/AdaMaxsave/RestoreV2:15*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
╖
save/Assign_16Assignpi/dense_2/bias/AdaMax_1save/RestoreV2:16*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
╢
save/Assign_17Assignpi/dense_2/kernelsave/RestoreV2:17*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
╜
save/Assign_18Assignpi/dense_2/kernel/AdaMaxsave/RestoreV2:18*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
┐
save/Assign_19Assignpi/dense_2/kernel/AdaMax_1save/RestoreV2:19*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
д
save/Assign_20Assign
pi/log_stdsave/RestoreV2:20*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
л
save/Assign_21Assignpi/log_std/AdaMaxsave/RestoreV2:21*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
н
save/Assign_22Assignpi/log_std/AdaMax_1save/RestoreV2:22*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
и
save/Assign_23Assignv/dense/biassave/RestoreV2:23*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
п
save/Assign_24Assignv/dense/bias/AdaMaxsave/RestoreV2:24*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
▒
save/Assign_25Assignv/dense/bias/AdaMax_1save/RestoreV2:25*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
░
save/Assign_26Assignv/dense/kernelsave/RestoreV2:26*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
╖
save/Assign_27Assignv/dense/kernel/AdaMaxsave/RestoreV2:27*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
╣
save/Assign_28Assignv/dense/kernel/AdaMax_1save/RestoreV2:28*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel
м
save/Assign_29Assignv/dense_1/biassave/RestoreV2:29*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
│
save/Assign_30Assignv/dense_1/bias/AdaMaxsave/RestoreV2:30*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
╡
save/Assign_31Assignv/dense_1/bias/AdaMax_1save/RestoreV2:31*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
┤
save/Assign_32Assignv/dense_1/kernelsave/RestoreV2:32*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
╗
save/Assign_33Assignv/dense_1/kernel/AdaMaxsave/RestoreV2:33*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
╜
save/Assign_34Assignv/dense_1/kernel/AdaMax_1save/RestoreV2:34*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
м
save/Assign_35Assignv/dense_2/biassave/RestoreV2:35*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
│
save/Assign_36Assignv/dense_2/bias/AdaMaxsave/RestoreV2:36*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
╡
save/Assign_37Assignv/dense_2/bias/AdaMax_1save/RestoreV2:37*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
┤
save/Assign_38Assignv/dense_2/kernelsave/RestoreV2:38*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
╗
save/Assign_39Assignv/dense_2/kernel/AdaMaxsave/RestoreV2:39*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
╜
save/Assign_40Assignv/dense_2/kernel/AdaMax_1save/RestoreV2:40*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
╟
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
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
value3B1 B+_temp_2b9c93f2c096464a889c99c59d9a22a7/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
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
╥
save_1/SaveV2/tensor_namesConst*
_output_shapes
:)*Г
value∙BЎ)Bbeta1_powerBbeta1_power_1Bpi/dense/biasBpi/dense/bias/AdaMaxBpi/dense/bias/AdaMax_1Bpi/dense/kernelBpi/dense/kernel/AdaMaxBpi/dense/kernel/AdaMax_1Bpi/dense_1/biasBpi/dense_1/bias/AdaMaxBpi/dense_1/bias/AdaMax_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdaMaxBpi/dense_1/kernel/AdaMax_1Bpi/dense_2/biasBpi/dense_2/bias/AdaMaxBpi/dense_2/bias/AdaMax_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdaMaxBpi/dense_2/kernel/AdaMax_1B
pi/log_stdBpi/log_std/AdaMaxBpi/log_std/AdaMax_1Bv/dense/biasBv/dense/bias/AdaMaxBv/dense/bias/AdaMax_1Bv/dense/kernelBv/dense/kernel/AdaMaxBv/dense/kernel/AdaMax_1Bv/dense_1/biasBv/dense_1/bias/AdaMaxBv/dense_1/bias/AdaMax_1Bv/dense_1/kernelBv/dense_1/kernel/AdaMaxBv/dense_1/kernel/AdaMax_1Bv/dense_2/biasBv/dense_2/bias/AdaMaxBv/dense_2/bias/AdaMax_1Bv/dense_2/kernelBv/dense_2/kernel/AdaMaxBv/dense_2/kernel/AdaMax_1*
dtype0
╖
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:)*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Т
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1pi/dense/biaspi/dense/bias/AdaMaxpi/dense/bias/AdaMax_1pi/dense/kernelpi/dense/kernel/AdaMaxpi/dense/kernel/AdaMax_1pi/dense_1/biaspi/dense_1/bias/AdaMaxpi/dense_1/bias/AdaMax_1pi/dense_1/kernelpi/dense_1/kernel/AdaMaxpi/dense_1/kernel/AdaMax_1pi/dense_2/biaspi/dense_2/bias/AdaMaxpi/dense_2/bias/AdaMax_1pi/dense_2/kernelpi/dense_2/kernel/AdaMaxpi/dense_2/kernel/AdaMax_1
pi/log_stdpi/log_std/AdaMaxpi/log_std/AdaMax_1v/dense/biasv/dense/bias/AdaMaxv/dense/bias/AdaMax_1v/dense/kernelv/dense/kernel/AdaMaxv/dense/kernel/AdaMax_1v/dense_1/biasv/dense_1/bias/AdaMaxv/dense_1/bias/AdaMax_1v/dense_1/kernelv/dense_1/kernel/AdaMaxv/dense_1/kernel/AdaMax_1v/dense_2/biasv/dense_2/bias/AdaMaxv/dense_2/bias/AdaMax_1v/dense_2/kernelv/dense_2/kernel/AdaMaxv/dense_2/kernel/AdaMax_1*7
dtypes-
+2)
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
г
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
╒
save_1/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:)*Г
value∙BЎ)Bbeta1_powerBbeta1_power_1Bpi/dense/biasBpi/dense/bias/AdaMaxBpi/dense/bias/AdaMax_1Bpi/dense/kernelBpi/dense/kernel/AdaMaxBpi/dense/kernel/AdaMax_1Bpi/dense_1/biasBpi/dense_1/bias/AdaMaxBpi/dense_1/bias/AdaMax_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdaMaxBpi/dense_1/kernel/AdaMax_1Bpi/dense_2/biasBpi/dense_2/bias/AdaMaxBpi/dense_2/bias/AdaMax_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdaMaxBpi/dense_2/kernel/AdaMax_1B
pi/log_stdBpi/log_std/AdaMaxBpi/log_std/AdaMax_1Bv/dense/biasBv/dense/bias/AdaMaxBv/dense/bias/AdaMax_1Bv/dense/kernelBv/dense/kernel/AdaMaxBv/dense/kernel/AdaMax_1Bv/dense_1/biasBv/dense_1/bias/AdaMaxBv/dense_1/bias/AdaMax_1Bv/dense_1/kernelBv/dense_1/kernel/AdaMaxBv/dense_1/kernel/AdaMax_1Bv/dense_2/biasBv/dense_2/bias/AdaMaxBv/dense_2/bias/AdaMax_1Bv/dense_2/kernelBv/dense_2/kernel/AdaMaxBv/dense_2/kernel/AdaMax_1
║
!save_1/RestoreV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
у
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*7
dtypes-
+2)*║
_output_shapesз
д:::::::::::::::::::::::::::::::::::::::::
в
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
з
save_1/Assign_1Assignbeta1_power_1save_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
м
save_1/Assign_2Assignpi/dense/biassave_1/RestoreV2:2*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
│
save_1/Assign_3Assignpi/dense/bias/AdaMaxsave_1/RestoreV2:3*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
╡
save_1/Assign_4Assignpi/dense/bias/AdaMax_1save_1/RestoreV2:4*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
┤
save_1/Assign_5Assignpi/dense/kernelsave_1/RestoreV2:5*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
╗
save_1/Assign_6Assignpi/dense/kernel/AdaMaxsave_1/RestoreV2:6*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
╜
save_1/Assign_7Assignpi/dense/kernel/AdaMax_1save_1/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
░
save_1/Assign_8Assignpi/dense_1/biassave_1/RestoreV2:8*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
╖
save_1/Assign_9Assignpi/dense_1/bias/AdaMaxsave_1/RestoreV2:9*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╗
save_1/Assign_10Assignpi/dense_1/bias/AdaMax_1save_1/RestoreV2:10*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
║
save_1/Assign_11Assignpi/dense_1/kernelsave_1/RestoreV2:11*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
┴
save_1/Assign_12Assignpi/dense_1/kernel/AdaMaxsave_1/RestoreV2:12*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
├
save_1/Assign_13Assignpi/dense_1/kernel/AdaMax_1save_1/RestoreV2:13*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
▓
save_1/Assign_14Assignpi/dense_2/biassave_1/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
╣
save_1/Assign_15Assignpi/dense_2/bias/AdaMaxsave_1/RestoreV2:15*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
╗
save_1/Assign_16Assignpi/dense_2/bias/AdaMax_1save_1/RestoreV2:16*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
║
save_1/Assign_17Assignpi/dense_2/kernelsave_1/RestoreV2:17*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┴
save_1/Assign_18Assignpi/dense_2/kernel/AdaMaxsave_1/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
├
save_1/Assign_19Assignpi/dense_2/kernel/AdaMax_1save_1/RestoreV2:19*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
и
save_1/Assign_20Assign
pi/log_stdsave_1/RestoreV2:20*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
п
save_1/Assign_21Assignpi/log_std/AdaMaxsave_1/RestoreV2:21*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
▒
save_1/Assign_22Assignpi/log_std/AdaMax_1save_1/RestoreV2:22*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
м
save_1/Assign_23Assignv/dense/biassave_1/RestoreV2:23*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
│
save_1/Assign_24Assignv/dense/bias/AdaMaxsave_1/RestoreV2:24*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
╡
save_1/Assign_25Assignv/dense/bias/AdaMax_1save_1/RestoreV2:25*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
┤
save_1/Assign_26Assignv/dense/kernelsave_1/RestoreV2:26*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel
╗
save_1/Assign_27Assignv/dense/kernel/AdaMaxsave_1/RestoreV2:27*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
╜
save_1/Assign_28Assignv/dense/kernel/AdaMax_1save_1/RestoreV2:28*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
░
save_1/Assign_29Assignv/dense_1/biassave_1/RestoreV2:29*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
╖
save_1/Assign_30Assignv/dense_1/bias/AdaMaxsave_1/RestoreV2:30*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
╣
save_1/Assign_31Assignv/dense_1/bias/AdaMax_1save_1/RestoreV2:31*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╕
save_1/Assign_32Assignv/dense_1/kernelsave_1/RestoreV2:32*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
┐
save_1/Assign_33Assignv/dense_1/kernel/AdaMaxsave_1/RestoreV2:33*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
┴
save_1/Assign_34Assignv/dense_1/kernel/AdaMax_1save_1/RestoreV2:34*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
░
save_1/Assign_35Assignv/dense_2/biassave_1/RestoreV2:35*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
╖
save_1/Assign_36Assignv/dense_2/bias/AdaMaxsave_1/RestoreV2:36*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
╣
save_1/Assign_37Assignv/dense_2/bias/AdaMax_1save_1/RestoreV2:37*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
╕
save_1/Assign_38Assignv/dense_2/kernelsave_1/RestoreV2:38*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┐
save_1/Assign_39Assignv/dense_2/kernel/AdaMaxsave_1/RestoreV2:39*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
┴
save_1/Assign_40Assignv/dense_2/kernel/AdaMax_1save_1/RestoreV2:40*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Ы
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"╣(
	variablesл(и(
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
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
Д
pi/dense/kernel/AdaMax:0pi/dense/kernel/AdaMax/Assignpi/dense/kernel/AdaMax/read:02*pi/dense/kernel/AdaMax/Initializer/zeros:0
М
pi/dense/kernel/AdaMax_1:0pi/dense/kernel/AdaMax_1/Assignpi/dense/kernel/AdaMax_1/read:02,pi/dense/kernel/AdaMax_1/Initializer/zeros:0
|
pi/dense/bias/AdaMax:0pi/dense/bias/AdaMax/Assignpi/dense/bias/AdaMax/read:02(pi/dense/bias/AdaMax/Initializer/zeros:0
Д
pi/dense/bias/AdaMax_1:0pi/dense/bias/AdaMax_1/Assignpi/dense/bias/AdaMax_1/read:02*pi/dense/bias/AdaMax_1/Initializer/zeros:0
М
pi/dense_1/kernel/AdaMax:0pi/dense_1/kernel/AdaMax/Assignpi/dense_1/kernel/AdaMax/read:02,pi/dense_1/kernel/AdaMax/Initializer/zeros:0
Ф
pi/dense_1/kernel/AdaMax_1:0!pi/dense_1/kernel/AdaMax_1/Assign!pi/dense_1/kernel/AdaMax_1/read:02.pi/dense_1/kernel/AdaMax_1/Initializer/zeros:0
Д
pi/dense_1/bias/AdaMax:0pi/dense_1/bias/AdaMax/Assignpi/dense_1/bias/AdaMax/read:02*pi/dense_1/bias/AdaMax/Initializer/zeros:0
М
pi/dense_1/bias/AdaMax_1:0pi/dense_1/bias/AdaMax_1/Assignpi/dense_1/bias/AdaMax_1/read:02,pi/dense_1/bias/AdaMax_1/Initializer/zeros:0
М
pi/dense_2/kernel/AdaMax:0pi/dense_2/kernel/AdaMax/Assignpi/dense_2/kernel/AdaMax/read:02,pi/dense_2/kernel/AdaMax/Initializer/zeros:0
Ф
pi/dense_2/kernel/AdaMax_1:0!pi/dense_2/kernel/AdaMax_1/Assign!pi/dense_2/kernel/AdaMax_1/read:02.pi/dense_2/kernel/AdaMax_1/Initializer/zeros:0
Д
pi/dense_2/bias/AdaMax:0pi/dense_2/bias/AdaMax/Assignpi/dense_2/bias/AdaMax/read:02*pi/dense_2/bias/AdaMax/Initializer/zeros:0
М
pi/dense_2/bias/AdaMax_1:0pi/dense_2/bias/AdaMax_1/Assignpi/dense_2/bias/AdaMax_1/read:02,pi/dense_2/bias/AdaMax_1/Initializer/zeros:0
p
pi/log_std/AdaMax:0pi/log_std/AdaMax/Assignpi/log_std/AdaMax/read:02%pi/log_std/AdaMax/Initializer/zeros:0
x
pi/log_std/AdaMax_1:0pi/log_std/AdaMax_1/Assignpi/log_std/AdaMax_1/read:02'pi/log_std/AdaMax_1/Initializer/zeros:0
\
beta1_power_1:0beta1_power_1/Assignbeta1_power_1/read:02beta1_power_1/initial_value:0
А
v/dense/kernel/AdaMax:0v/dense/kernel/AdaMax/Assignv/dense/kernel/AdaMax/read:02)v/dense/kernel/AdaMax/Initializer/zeros:0
И
v/dense/kernel/AdaMax_1:0v/dense/kernel/AdaMax_1/Assignv/dense/kernel/AdaMax_1/read:02+v/dense/kernel/AdaMax_1/Initializer/zeros:0
x
v/dense/bias/AdaMax:0v/dense/bias/AdaMax/Assignv/dense/bias/AdaMax/read:02'v/dense/bias/AdaMax/Initializer/zeros:0
А
v/dense/bias/AdaMax_1:0v/dense/bias/AdaMax_1/Assignv/dense/bias/AdaMax_1/read:02)v/dense/bias/AdaMax_1/Initializer/zeros:0
И
v/dense_1/kernel/AdaMax:0v/dense_1/kernel/AdaMax/Assignv/dense_1/kernel/AdaMax/read:02+v/dense_1/kernel/AdaMax/Initializer/zeros:0
Р
v/dense_1/kernel/AdaMax_1:0 v/dense_1/kernel/AdaMax_1/Assign v/dense_1/kernel/AdaMax_1/read:02-v/dense_1/kernel/AdaMax_1/Initializer/zeros:0
А
v/dense_1/bias/AdaMax:0v/dense_1/bias/AdaMax/Assignv/dense_1/bias/AdaMax/read:02)v/dense_1/bias/AdaMax/Initializer/zeros:0
И
v/dense_1/bias/AdaMax_1:0v/dense_1/bias/AdaMax_1/Assignv/dense_1/bias/AdaMax_1/read:02+v/dense_1/bias/AdaMax_1/Initializer/zeros:0
И
v/dense_2/kernel/AdaMax:0v/dense_2/kernel/AdaMax/Assignv/dense_2/kernel/AdaMax/read:02+v/dense_2/kernel/AdaMax/Initializer/zeros:0
Р
v/dense_2/kernel/AdaMax_1:0 v/dense_2/kernel/AdaMax_1/Assign v/dense_2/kernel/AdaMax_1/read:02-v/dense_2/kernel/AdaMax_1/Initializer/zeros:0
А
v/dense_2/bias/AdaMax:0v/dense_2/bias/AdaMax/Assignv/dense_2/bias/AdaMax/read:02)v/dense_2/bias/AdaMax/Initializer/zeros:0
И
v/dense_2/bias/AdaMax_1:0v/dense_2/bias/AdaMax_1/Assignv/dense_2/bias/AdaMax_1/read:02+v/dense_2/bias/AdaMax_1/Initializer/zeros:0"н
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
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08" 
train_op

AdaMax
AdaMax_1*з
serving_defaultУ
)
x$
Placeholder:0         #
v
v/Squeeze:0         %
pi
pi/add:0         tensorflow/serving/predict