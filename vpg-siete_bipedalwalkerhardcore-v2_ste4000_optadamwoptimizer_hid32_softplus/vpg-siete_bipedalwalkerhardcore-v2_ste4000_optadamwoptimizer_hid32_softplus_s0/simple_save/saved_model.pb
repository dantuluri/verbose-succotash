╠Ђ	
§$╔$
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
2	ђљ
Ь
	ApplyAdam
var"Tђ	
m"Tђ	
v"Tђ
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"Tђ" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
s
	AssignSub
ref"Tђ

value"T

output_ref"Tђ" 
Ttype:
2	"
use_lockingbool( 
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

2	љ
Ї
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
delete_old_dirsbool(ѕ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
Ї
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
list(type)(ѕ
Ё
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
І
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
ї
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
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ
&
	ZerosLike
x"T
y"T"	
Ttype"serve*
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'рх
n
PlaceholderPlaceholder*
shape:         *
dtype0*'
_output_shapes
:         
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:         *
shape:         
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
h
Placeholder_3Placeholder*
shape:         *
dtype0*#
_output_shapes
:         
h
Placeholder_4Placeholder*
shape:         *
dtype0*#
_output_shapes
:         
Ц
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@pi/dense/kernel*
valueB"       *
dtype0
Ќ
.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *bЌДЙ*
dtype0*
_output_shapes
: 
Ќ
.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *bЌД>*
dtype0*
_output_shapes
: 
Ь
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*"
_class
loc:@pi/dense/kernel*
seed2*
dtype0*
_output_shapes

: *

seed *
T0
┌
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
В
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
я
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel
Д
pi/dense/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
: 
М
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
~
pi/dense/kernel/readIdentitypi/dense/kernel*"
_class
loc:@pi/dense/kernel*
_output_shapes

: *
T0
ј
pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB *    *
dtype0*
_output_shapes
: 
Џ
pi/dense/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias*
	container 
Й
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
t
pi/dense/bias/readIdentitypi/dense/bias*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
ћ
pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
transpose_a( *'
_output_shapes
:          *
transpose_b( *
T0
Ѕ
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:          
a
pi/dense/SoftplusSoftpluspi/dense/BiasAdd*
T0*'
_output_shapes
:          
Е
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:
Џ
0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *ВЛЙ*
dtype0*
_output_shapes
: 
Џ
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *ВЛ>*
dtype0
З
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
seed2*
dtype0*
_output_shapes

: *

seed *
T0*$
_class
loc:@pi/dense_1/kernel
Р
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
З
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel
Т
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel
Ф
pi/dense_1/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
█
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
ё
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
њ
!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ъ
pi/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:
к
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
_output_shapes
:*
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
:
ъ
pi/dense_1/MatMulMatMulpi/dense/Softpluspi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b( *
T0
Ј
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*'
_output_shapes
:         *
T0*
data_formatNHWC
q
pi/log_std/initial_valueConst*
_output_shapes
:*%
valueB"   ┐   ┐   ┐   ┐*
dtype0
v

pi/log_std
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
«
pi/log_std/AssignAssign
pi/log_stdpi/log_std/initial_value*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
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
pi/ShapeShapepi/dense_1/BiasAdd*
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
 *  ђ?*
dtype0*
_output_shapes
: 
Ъ
%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*

seed *
T0*
dtype0*
seed2.*'
_output_shapes
:         
Ї
pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*'
_output_shapes
:         *
T0
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*'
_output_shapes
:         *
T0
Y
pi/mulMulpi/random_normalpi/Exp*
T0*'
_output_shapes
:         
[
pi/addAddpi/dense_1/BiasAddpi/mul*
T0*'
_output_shapes
:         
b
pi/subSubPlaceholder_1pi/dense_1/BiasAdd*'
_output_shapes
:         *
T0
E
pi/Exp_1Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_1/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
J
pi/add_1Addpi/Exp_1
pi/add_1/y*
T0*
_output_shapes
:
Y

pi/truedivRealDivpi/subpi/add_1*
T0*'
_output_shapes
:         
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
 *ј?в?*
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
pi/SumSumpi/mul_2pi/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
]
pi/sub_1Subpi/addpi/dense_1/BiasAdd*'
_output_shapes
:         *
T0
E
pi/Exp_2Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_4/yConst*
dtype0*
_output_shapes
: *
valueB
 *w╠+2
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

pi/pow_1/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
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
pi/add_5Addpi/pow_1pi/mul_3*
T0*'
_output_shapes
:         
O

pi/add_6/yConst*
valueB
 *ј?в?*
dtype0*
_output_shapes
: 
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
pi/mul_4/xpi/add_6*'
_output_shapes
:         *
T0
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
Б
/v/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@v/dense/kernel*
valueB"       
Ћ
-v/dense/kernel/Initializer/random_uniform/minConst*!
_class
loc:@v/dense/kernel*
valueB
 *bЌДЙ*
dtype0*
_output_shapes
: 
Ћ
-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *bЌД>*
dtype0*
_output_shapes
: 
в
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed *
T0*!
_class
loc:@v/dense/kernel*
seed2V
о
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@v/dense/kernel
У
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
┌
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
Ц
v/dense/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
: 
¤
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
{
v/dense/kernel/readIdentityv/dense/kernel*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
ї
v/dense/bias/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ў
v/dense/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
║
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
q
v/dense/bias/readIdentityv/dense/bias*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
њ
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:          
є
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:          
_
v/dense/SoftplusSoftplusv/dense/BiasAdd*'
_output_shapes
:          *
T0
Д
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB"       
Ў
/v/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *JQ┌Й
Ў
/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *JQ┌>*
dtype0*
_output_shapes
: 
ы
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
seed2g*
dtype0*
_output_shapes

: *

seed *
T0*#
_class
loc:@v/dense_1/kernel
я
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
­
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: *
T0
Р
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
Е
v/dense_1/kernel
VariableV2*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel
О
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
Ђ
v/dense_1/kernel/readIdentityv/dense_1/kernel*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
љ
 v/dense_1/bias/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ю
v/dense_1/bias
VariableV2*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
┬
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
w
v/dense_1/bias/readIdentityv/dense_1/bias*!
_class
loc:@v/dense_1/bias*
_output_shapes
:*
T0
Џ
v/dense_1/MatMulMatMulv/dense/Softplusv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         *
transpose_b( 
ї
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
l
	v/SqueezeSqueezev/dense_1/BiasAdd*#
_output_shapes
:         *
squeeze_dims
*
T0
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
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
D
powPowsubpow/y*#
_output_shapes
:         *
T0
Q
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
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
:         
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
:         
Q
Const_3Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_3MeanNeg_1Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ђ?*
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
ћ
gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
\
gradients/Mean_grad/ShapeShapemul*
_output_shapes
:*
T0*
out_type0
ў
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
^
gradients/Mean_grad/Shape_1Shapemul*
T0*
out_type0*
_output_shapes
:
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
ќ
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
џ
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
_
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0
ѓ
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
ђ
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
ѕ
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:         
^
gradients/mul_grad/ShapeShapepi/Sum*
_output_shapes
:*
T0*
out_type0
g
gradients/mul_grad/Shape_1ShapePlaceholder_2*
_output_shapes
:*
T0*
out_type0
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
Ъ
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Њ
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
r
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*#
_output_shapes
:         *
T0
Ц
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*#
_output_shapes
:         *
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
о
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*#
_output_shapes
:         
▄
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*#
_output_shapes
:         
c
gradients/pi/Sum_grad/ShapeShapepi/mul_2*
_output_shapes
:*
T0*
out_type0
ї
gradients/pi/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :
Д
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
Г
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
љ
gradients/pi/Sum_grad/Shape_1Const*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
valueB *
dtype0
Њ
!gradients/pi/Sum_grad/range/startConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
Њ
!gradients/pi/Sum_grad/range/deltaConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
я
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
њ
 gradients/pi/Sum_grad/Fill/valueConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
к
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*

index_type0*
_output_shapes
: *
T0
Ѓ
#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
N*
_output_shapes
:
Љ
gradients/pi/Sum_grad/Maximum/yConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
├
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
╗
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*
T0
├
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:                  
Ц
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:         
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
├
-gradients/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_2_grad/Shapegradients/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
z
gradients/pi/mul_2_grad/MulMulgradients/pi/Sum_grad/Tilepi/add_3*
T0*'
_output_shapes
:         
«
gradients/pi/mul_2_grad/SumSumgradients/pi/mul_2_grad/Mul-gradients/pi/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ћ
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
gradients/pi/mul_2_grad/Sum_1Sumgradients/pi/mul_2_grad/Mul_1/gradients/pi/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
г
!gradients/pi/mul_2_grad/Reshape_1Reshapegradients/pi/mul_2_grad/Sum_1gradients/pi/mul_2_grad/Shape_1*'
_output_shapes
:         *
T0*
Tshape0
v
(gradients/pi/mul_2_grad/tuple/group_depsNoOp ^gradients/pi/mul_2_grad/Reshape"^gradients/pi/mul_2_grad/Reshape_1
П
0gradients/pi/mul_2_grad/tuple/control_dependencyIdentitygradients/pi/mul_2_grad/Reshape)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_2_grad/Reshape*
_output_shapes
: 
З
2gradients/pi/mul_2_grad/tuple/control_dependency_1Identity!gradients/pi/mul_2_grad/Reshape_1)^gradients/pi/mul_2_grad/tuple/group_deps*4
_class*
(&loc:@gradients/pi/mul_2_grad/Reshape_1*'
_output_shapes
:         *
T0
e
gradients/pi/add_3_grad/ShapeShapepi/add_2*
out_type0*
_output_shapes
:*
T0
b
gradients/pi/add_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
├
-gradients/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_3_grad/Shapegradients/pi/add_3_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┼
gradients/pi/add_3_grad/SumSum2gradients/pi/mul_2_grad/tuple/control_dependency_1-gradients/pi/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
д
gradients/pi/add_3_grad/ReshapeReshapegradients/pi/add_3_grad/Sumgradients/pi/add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
╔
gradients/pi/add_3_grad/Sum_1Sum2gradients/pi/mul_2_grad/tuple/control_dependency_1/gradients/pi/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Џ
!gradients/pi/add_3_grad/Reshape_1Reshapegradients/pi/add_3_grad/Sum_1gradients/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/pi/add_3_grad/tuple/group_depsNoOp ^gradients/pi/add_3_grad/Reshape"^gradients/pi/add_3_grad/Reshape_1
Ь
0gradients/pi/add_3_grad/tuple/control_dependencyIdentitygradients/pi/add_3_grad/Reshape)^gradients/pi/add_3_grad/tuple/group_deps*'
_output_shapes
:         *
T0*2
_class(
&$loc:@gradients/pi/add_3_grad/Reshape
с
2gradients/pi/add_3_grad/tuple/control_dependency_1Identity!gradients/pi/add_3_grad/Reshape_1)^gradients/pi/add_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_3_grad/Reshape_1*
_output_shapes
: 
c
gradients/pi/add_2_grad/ShapeShapepi/pow*
T0*
out_type0*
_output_shapes
:
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
д
gradients/pi/add_2_grad/ReshapeReshapegradients/pi/add_2_grad/Sumgradients/pi/add_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
К
gradients/pi/add_2_grad/Sum_1Sum0gradients/pi/add_3_grad/tuple/control_dependency/gradients/pi/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ъ
!gradients/pi/add_2_grad/Reshape_1Reshapegradients/pi/add_2_grad/Sum_1gradients/pi/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/add_2_grad/tuple/group_depsNoOp ^gradients/pi/add_2_grad/Reshape"^gradients/pi/add_2_grad/Reshape_1
Ь
0gradients/pi/add_2_grad/tuple/control_dependencyIdentitygradients/pi/add_2_grad/Reshape)^gradients/pi/add_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_2_grad/Reshape*'
_output_shapes
:         
у
2gradients/pi/add_2_grad/tuple/control_dependency_1Identity!gradients/pi/add_2_grad/Reshape_1)^gradients/pi/add_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_2_grad/Reshape_1*
_output_shapes
:
e
gradients/pi/pow_grad/ShapeShape
pi/truediv*
T0*
out_type0*
_output_shapes
:
`
gradients/pi/pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
й
+gradients/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/pow_grad/Shapegradients/pi/pow_grad/Shape_1*2
_output_shapes 
:         :         *
T0
ј
gradients/pi/pow_grad/mulMul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow/y*
T0*'
_output_shapes
:         
`
gradients/pi/pow_grad/sub/yConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
h
gradients/pi/pow_grad/subSubpi/pow/ygradients/pi/pow_grad/sub/y*
T0*
_output_shapes
: 
y
gradients/pi/pow_grad/PowPow
pi/truedivgradients/pi/pow_grad/sub*
T0*'
_output_shapes
:         
і
gradients/pi/pow_grad/mul_1Mulgradients/pi/pow_grad/mulgradients/pi/pow_grad/Pow*
T0*'
_output_shapes
:         
ф
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
Є
gradients/pi/pow_grad/GreaterGreater
pi/truedivgradients/pi/pow_grad/Greater/y*'
_output_shapes
:         *
T0
o
%gradients/pi/pow_grad/ones_like/ShapeShape
pi/truediv*
_output_shapes
:*
T0*
out_type0
j
%gradients/pi/pow_grad/ones_like/ConstConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
╣
gradients/pi/pow_grad/ones_likeFill%gradients/pi/pow_grad/ones_like/Shape%gradients/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:         
ц
gradients/pi/pow_grad/SelectSelectgradients/pi/pow_grad/Greater
pi/truedivgradients/pi/pow_grad/ones_like*'
_output_shapes
:         *
T0
p
gradients/pi/pow_grad/LogLoggradients/pi/pow_grad/Select*
T0*'
_output_shapes
:         
k
 gradients/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*'
_output_shapes
:         *
T0
Х
gradients/pi/pow_grad/Select_1Selectgradients/pi/pow_grad/Greatergradients/pi/pow_grad/Log gradients/pi/pow_grad/zeros_like*'
_output_shapes
:         *
T0
ј
gradients/pi/pow_grad/mul_2Mul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow*
T0*'
_output_shapes
:         
Љ
gradients/pi/pow_grad/mul_3Mulgradients/pi/pow_grad/mul_2gradients/pi/pow_grad/Select_1*'
_output_shapes
:         *
T0
«
gradients/pi/pow_grad/Sum_1Sumgradients/pi/pow_grad/mul_3-gradients/pi/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ћ
gradients/pi/pow_grad/Reshape_1Reshapegradients/pi/pow_grad/Sum_1gradients/pi/pow_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
p
&gradients/pi/pow_grad/tuple/group_depsNoOp^gradients/pi/pow_grad/Reshape ^gradients/pi/pow_grad/Reshape_1
Т
.gradients/pi/pow_grad/tuple/control_dependencyIdentitygradients/pi/pow_grad/Reshape'^gradients/pi/pow_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/pow_grad/Reshape*'
_output_shapes
:         
█
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
gradients/pi/mul_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
├
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*2
_output_shapes 
:         :         *
T0
ї
gradients/pi/mul_1_grad/MulMul2gradients/pi/add_2_grad/tuple/control_dependency_1pi/log_std/read*
T0*
_output_shapes
:
г
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ћ
gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ѕ
gradients/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x2gradients/pi/add_2_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
Х
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ъ
!gradients/pi/mul_1_grad/Reshape_1Reshapegradients/pi/mul_1_grad/Sum_1gradients/pi/mul_1_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
v
(gradients/pi/mul_1_grad/tuple/group_depsNoOp ^gradients/pi/mul_1_grad/Reshape"^gradients/pi/mul_1_grad/Reshape_1
П
0gradients/pi/mul_1_grad/tuple/control_dependencyIdentitygradients/pi/mul_1_grad/Reshape)^gradients/pi/mul_1_grad/tuple/group_deps*2
_class(
&$loc:@gradients/pi/mul_1_grad/Reshape*
_output_shapes
: *
T0
у
2gradients/pi/mul_1_grad/tuple/control_dependency_1Identity!gradients/pi/mul_1_grad/Reshape_1)^gradients/pi/mul_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
_output_shapes
:
e
gradients/pi/truediv_grad/ShapeShapepi/sub*
_output_shapes
:*
T0*
out_type0
k
!gradients/pi/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
╔
/gradients/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/truediv_grad/Shape!gradients/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ў
!gradients/pi/truediv_grad/RealDivRealDiv.gradients/pi/pow_grad/tuple/control_dependencypi/add_1*
T0*'
_output_shapes
:         
И
gradients/pi/truediv_grad/SumSum!gradients/pi/truediv_grad/RealDiv/gradients/pi/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
г
!gradients/pi/truediv_grad/ReshapeReshapegradients/pi/truediv_grad/Sumgradients/pi/truediv_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
^
gradients/pi/truediv_grad/NegNegpi/sub*
T0*'
_output_shapes
:         
Ѕ
#gradients/pi/truediv_grad/RealDiv_1RealDivgradients/pi/truediv_grad/Negpi/add_1*'
_output_shapes
:         *
T0
Ј
#gradients/pi/truediv_grad/RealDiv_2RealDiv#gradients/pi/truediv_grad/RealDiv_1pi/add_1*'
_output_shapes
:         *
T0
Ф
gradients/pi/truediv_grad/mulMul.gradients/pi/pow_grad/tuple/control_dependency#gradients/pi/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:         
И
gradients/pi/truediv_grad/Sum_1Sumgradients/pi/truediv_grad/mul1gradients/pi/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ц
#gradients/pi/truediv_grad/Reshape_1Reshapegradients/pi/truediv_grad/Sum_1!gradients/pi/truediv_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
|
*gradients/pi/truediv_grad/tuple/group_depsNoOp"^gradients/pi/truediv_grad/Reshape$^gradients/pi/truediv_grad/Reshape_1
Ш
2gradients/pi/truediv_grad/tuple/control_dependencyIdentity!gradients/pi/truediv_grad/Reshape+^gradients/pi/truediv_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/truediv_grad/Reshape*'
_output_shapes
:         
№
4gradients/pi/truediv_grad/tuple/control_dependency_1Identity#gradients/pi/truediv_grad/Reshape_1+^gradients/pi/truediv_grad/tuple/group_deps*
_output_shapes
:*
T0*6
_class,
*(loc:@gradients/pi/truediv_grad/Reshape_1
h
gradients/pi/sub_grad/ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
o
gradients/pi/sub_grad/Shape_1Shapepi/dense_1/BiasAdd*
_output_shapes
:*
T0*
out_type0
й
+gradients/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_grad/Shapegradients/pi/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┴
gradients/pi/sub_grad/SumSum2gradients/pi/truediv_grad/tuple/control_dependency+gradients/pi/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
а
gradients/pi/sub_grad/ReshapeReshapegradients/pi/sub_grad/Sumgradients/pi/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
┼
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
ц
gradients/pi/sub_grad/Reshape_1Reshapegradients/pi/sub_grad/Neggradients/pi/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
p
&gradients/pi/sub_grad/tuple/group_depsNoOp^gradients/pi/sub_grad/Reshape ^gradients/pi/sub_grad/Reshape_1
Т
.gradients/pi/sub_grad/tuple/control_dependencyIdentitygradients/pi/sub_grad/Reshape'^gradients/pi/sub_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/sub_grad/Reshape*'
_output_shapes
:         
В
0gradients/pi/sub_grad/tuple/control_dependency_1Identitygradients/pi/sub_grad/Reshape_1'^gradients/pi/sub_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:         
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
gradients/pi/add_1_grad/SumSum4gradients/pi/truediv_grad/tuple/control_dependency_1-gradients/pi/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ў
gradients/pi/add_1_grad/ReshapeReshapegradients/pi/add_1_grad/Sumgradients/pi/add_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
╔
gradients/pi/add_1_grad/Sum_1Sum4gradients/pi/truediv_grad/tuple/control_dependency_1/gradients/pi/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Џ
!gradients/pi/add_1_grad/Reshape_1Reshapegradients/pi/add_1_grad/Sum_1gradients/pi/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/pi/add_1_grad/tuple/group_depsNoOp ^gradients/pi/add_1_grad/Reshape"^gradients/pi/add_1_grad/Reshape_1
р
0gradients/pi/add_1_grad/tuple/control_dependencyIdentitygradients/pi/add_1_grad/Reshape)^gradients/pi/add_1_grad/tuple/group_deps*2
_class(
&$loc:@gradients/pi/add_1_grad/Reshape*
_output_shapes
:*
T0
с
2gradients/pi/add_1_grad/tuple/control_dependency_1Identity!gradients/pi/add_1_grad/Reshape_1)^gradients/pi/add_1_grad/tuple/group_deps*4
_class*
(&loc:@gradients/pi/add_1_grad/Reshape_1*
_output_shapes
: *
T0
ф
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients/pi/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC*
_output_shapes
:
Ю
2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad1^gradients/pi/sub_grad/tuple/control_dependency_1
Њ
:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity0gradients/pi/sub_grad/tuple/control_dependency_13^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:         
Њ
<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ѓ
gradients/pi/Exp_1_grad/mulMul0gradients/pi/add_1_grad/tuple/control_dependencypi/Exp_1*
_output_shapes
:*
T0
П
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:          *
transpose_b(*
T0
Л
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Softplus:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

: 
Ј
1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1
љ
9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:          
Ї
;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

: *
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1
╦
gradients/AddNAddN2gradients/pi/mul_1_grad/tuple/control_dependency_1gradients/pi/Exp_1_grad/mul*
_output_shapes
:*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
N
╝
-gradients/pi/dense/Softplus_grad/SoftplusGradSoftplusGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/BiasAdd*'
_output_shapes
:          *
T0
Ц
+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/pi/dense/Softplus_grad/SoftplusGrad*
T0*
data_formatNHWC*
_output_shapes
: 
ќ
0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad.^gradients/pi/dense/Softplus_grad/SoftplusGrad
џ
8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/pi/dense/Softplus_grad/SoftplusGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:          *
T0*@
_class6
42loc:@gradients/pi/dense/Softplus_grad/SoftplusGrad
І
:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
О
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b(*
T0
К
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

: *
transpose_b( *
T0
Ѕ
/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1
ѕ
7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul*'
_output_shapes
:         *
T0
Ё
9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
`
Reshape/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
љ
ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:ђ
b
Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ћ
	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
Tshape0*
_output_shapes
: *
T0
b
Reshape_2/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ќ
	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
_output_shapes	
:ђ*
T0*
Tshape0
b
Reshape_3/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ќ
	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_4/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
h
	Reshape_4Reshapegradients/AddNReshape_4/shape*
_output_shapes
:*
T0*
Tshape0
M
concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ј
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4concat/axis*
N*
_output_shapes	
:е*

Tidx0*
T0
g
PyFuncPyFuncconcat*
Tin
2*
_output_shapes	
:е*
Tout
2*
token
pyfunc_0
d
Const_4Const*)
value B"       ђ         *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ї
splitSplitVPyFuncConst_4split/split_dim*

Tlen0*
	num_split*4
_output_shapes"
 :ђ: :ђ::*
T0
`
Reshape_5/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
c
	Reshape_5ReshapesplitReshape_5/shape*
T0*
Tshape0*
_output_shapes

: 
Y
Reshape_6/shapeConst*
valueB: *
dtype0*
_output_shapes
:
a
	Reshape_6Reshapesplit:1Reshape_6/shape*
Tshape0*
_output_shapes
: *
T0
`
Reshape_7/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
e
	Reshape_7Reshapesplit:2Reshape_7/shape*
_output_shapes

: *
T0*
Tshape0
Y
Reshape_8/shapeConst*
valueB:*
dtype0*
_output_shapes
:
a
	Reshape_8Reshapesplit:3Reshape_8/shape*
T0*
Tshape0*
_output_shapes
:
Y
Reshape_9/shapeConst*
valueB:*
dtype0*
_output_shapes
:
a
	Reshape_9Reshapesplit:4Reshape_9/shape*
_output_shapes
:*
T0*
Tshape0
ђ
beta1_power/initial_valueConst* 
_class
loc:@pi/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Љ
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: 
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
beta1_power/readIdentitybeta1_power* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
T0
ђ
beta2_power/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *wЙ?
Љ
beta2_power
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
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
l
beta2_power/readIdentitybeta2_power*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
а
'pi/dense/kernel/AdamW/Initializer/zerosConst*
valueB *    *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

: 
Г
pi/dense/kernel/AdamW
VariableV2*
dtype0*
_output_shapes

: *
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
: 
▄
pi/dense/kernel/AdamW/AssignAssignpi/dense/kernel/AdamW'pi/dense/kernel/AdamW/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
і
pi/dense/kernel/AdamW/readIdentitypi/dense/kernel/AdamW*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
б
)pi/dense/kernel/AdamW_1/Initializer/zerosConst*
valueB *    *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

: 
»
pi/dense/kernel/AdamW_1
VariableV2*"
_class
loc:@pi/dense/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
Р
pi/dense/kernel/AdamW_1/AssignAssignpi/dense/kernel/AdamW_1)pi/dense/kernel/AdamW_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
ј
pi/dense/kernel/AdamW_1/readIdentitypi/dense/kernel/AdamW_1*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel
ћ
%pi/dense/bias/AdamW/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    * 
_class
loc:@pi/dense/bias
А
pi/dense/bias/AdamW
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
л
pi/dense/bias/AdamW/AssignAssignpi/dense/bias/AdamW%pi/dense/bias/AdamW/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
ђ
pi/dense/bias/AdamW/readIdentitypi/dense/bias/AdamW*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
ќ
'pi/dense/bias/AdamW_1/Initializer/zerosConst*
valueB *    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
: 
Б
pi/dense/bias/AdamW_1
VariableV2* 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
о
pi/dense/bias/AdamW_1/AssignAssignpi/dense/bias/AdamW_1'pi/dense/bias/AdamW_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
ё
pi/dense/bias/AdamW_1/readIdentitypi/dense/bias/AdamW_1*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
ц
)pi/dense_1/kernel/AdamW/Initializer/zerosConst*
valueB *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

: 
▒
pi/dense_1/kernel/AdamW
VariableV2*
dtype0*
_output_shapes

: *
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: 
С
pi/dense_1/kernel/AdamW/AssignAssignpi/dense_1/kernel/AdamW)pi/dense_1/kernel/AdamW/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
љ
pi/dense_1/kernel/AdamW/readIdentitypi/dense_1/kernel/AdamW*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: *
T0
д
+pi/dense_1/kernel/AdamW_1/Initializer/zerosConst*
valueB *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

: 
│
pi/dense_1/kernel/AdamW_1
VariableV2*
dtype0*
_output_shapes

: *
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: 
Ж
 pi/dense_1/kernel/AdamW_1/AssignAssignpi/dense_1/kernel/AdamW_1+pi/dense_1/kernel/AdamW_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
ћ
pi/dense_1/kernel/AdamW_1/readIdentitypi/dense_1/kernel/AdamW_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
ў
'pi/dense_1/bias/AdamW/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
Ц
pi/dense_1/bias/AdamW
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:
п
pi/dense_1/bias/AdamW/AssignAssignpi/dense_1/bias/AdamW'pi/dense_1/bias/AdamW/Initializer/zeros*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
є
pi/dense_1/bias/AdamW/readIdentitypi/dense_1/bias/AdamW*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_1/bias
џ
)pi/dense_1/bias/AdamW_1/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
Д
pi/dense_1/bias/AdamW_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias
я
pi/dense_1/bias/AdamW_1/AssignAssignpi/dense_1/bias/AdamW_1)pi/dense_1/bias/AdamW_1/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
і
pi/dense_1/bias/AdamW_1/readIdentitypi/dense_1/bias/AdamW_1*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
ј
"pi/log_std/AdamW/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@pi/log_std
Џ
pi/log_std/AdamW
VariableV2*
_class
loc:@pi/log_std*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
─
pi/log_std/AdamW/AssignAssignpi/log_std/AdamW"pi/log_std/AdamW/Initializer/zeros*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
w
pi/log_std/AdamW/readIdentitypi/log_std/AdamW*
_output_shapes
:*
T0*
_class
loc:@pi/log_std
љ
$pi/log_std/AdamW_1/Initializer/zerosConst*
valueB*    *
_class
loc:@pi/log_std*
dtype0*
_output_shapes
:
Ю
pi/log_std/AdamW_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std*
	container *
shape:
╩
pi/log_std/AdamW_1/AssignAssignpi/log_std/AdamW_1$pi/log_std/AdamW_1/Initializer/zeros*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
{
pi/log_std/AdamW_1/readIdentitypi/log_std/AdamW_1*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
W
AdamW/weight_decayConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
X
AdamW/learning_rateConst*
valueB
 *RIЮ9*
dtype0*
_output_shapes
: 
P
AdamW/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
P
AdamW/beta2Const*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
R
AdamW/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
І
"AdamW/update_pi/dense/kernel/mul/xConst*"
_class
loc:@pi/dense/kernel*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
«
 AdamW/update_pi/dense/kernel/mulMul"AdamW/update_pi/dense/kernel/mul/xpi/dense/kernel/read*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel
к
&AdamW/update_pi/dense/kernel/AssignSub	AssignSubpi/dense/kernel AdamW/update_pi/dense/kernel/mul*
_output_shapes

: *
use_locking( *
T0*"
_class
loc:@pi/dense/kernel
■
&AdamW/update_pi/dense/kernel/ApplyAdam	ApplyAdampi/dense/kernelpi/dense/kernel/AdamWpi/dense/kernel/AdamW_1beta1_power/readbeta2_power/readAdamW/learning_rateAdamW/beta1AdamW/beta2AdamW/epsilon	Reshape_5'^AdamW/update_pi/dense/kernel/AssignSub*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
use_nesterov( *
_output_shapes

: 
Є
 AdamW/update_pi/dense/bias/mul/xConst* 
_class
loc:@pi/dense/bias*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
б
AdamW/update_pi/dense/bias/mulMul AdamW/update_pi/dense/bias/mul/xpi/dense/bias/read*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
║
$AdamW/update_pi/dense/bias/AssignSub	AssignSubpi/dense/biasAdamW/update_pi/dense/bias/mul*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@pi/dense/bias
Ь
$AdamW/update_pi/dense/bias/ApplyAdam	ApplyAdampi/dense/biaspi/dense/bias/AdamWpi/dense/bias/AdamW_1beta1_power/readbeta2_power/readAdamW/learning_rateAdamW/beta1AdamW/beta2AdamW/epsilon	Reshape_6%^AdamW/update_pi/dense/bias/AssignSub*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
_output_shapes
: 
Ј
$AdamW/update_pi/dense_1/kernel/mul/xConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *й7є5*
dtype0
Х
"AdamW/update_pi/dense_1/kernel/mulMul$AdamW/update_pi/dense_1/kernel/mul/xpi/dense_1/kernel/read*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
╬
(AdamW/update_pi/dense_1/kernel/AssignSub	AssignSubpi/dense_1/kernel"AdamW/update_pi/dense_1/kernel/mul*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
і
(AdamW/update_pi/dense_1/kernel/ApplyAdam	ApplyAdampi/dense_1/kernelpi/dense_1/kernel/AdamWpi/dense_1/kernel/AdamW_1beta1_power/readbeta2_power/readAdamW/learning_rateAdamW/beta1AdamW/beta2AdamW/epsilon	Reshape_7)^AdamW/update_pi/dense_1/kernel/AssignSub*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( *
_output_shapes

: 
І
"AdamW/update_pi/dense_1/bias/mul/xConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
ф
 AdamW/update_pi/dense_1/bias/mulMul"AdamW/update_pi/dense_1/bias/mul/xpi/dense_1/bias/read*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:*
T0
┬
&AdamW/update_pi/dense_1/bias/AssignSub	AssignSubpi/dense_1/bias AdamW/update_pi/dense_1/bias/mul*
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias
Щ
&AdamW/update_pi/dense_1/bias/ApplyAdam	ApplyAdampi/dense_1/biaspi/dense_1/bias/AdamWpi/dense_1/bias/AdamW_1beta1_power/readbeta2_power/readAdamW/learning_rateAdamW/beta1AdamW/beta2AdamW/epsilon	Reshape_8'^AdamW/update_pi/dense_1/bias/AssignSub*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( *
_output_shapes
:
Ђ
AdamW/update_pi/log_std/mul/xConst*
dtype0*
_output_shapes
: *
_class
loc:@pi/log_std*
valueB
 *й7є5
ќ
AdamW/update_pi/log_std/mulMulAdamW/update_pi/log_std/mul/xpi/log_std/read*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
«
!AdamW/update_pi/log_std/AssignSub	AssignSub
pi/log_stdAdamW/update_pi/log_std/mul*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@pi/log_std
▄
!AdamW/update_pi/log_std/ApplyAdam	ApplyAdam
pi/log_stdpi/log_std/AdamWpi/log_std/AdamW_1beta1_power/readbeta2_power/readAdamW/learning_rateAdamW/beta1AdamW/beta2AdamW/epsilon	Reshape_9"^AdamW/update_pi/log_std/AssignSub*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@pi/log_std*
use_nesterov( 
║
	AdamW/mulMulbeta1_power/readAdamW/beta1%^AdamW/update_pi/dense/bias/ApplyAdam'^AdamW/update_pi/dense/kernel/ApplyAdam'^AdamW/update_pi/dense_1/bias/ApplyAdam)^AdamW/update_pi/dense_1/kernel/ApplyAdam"^AdamW/update_pi/log_std/ApplyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
џ
AdamW/AssignAssignbeta1_power	AdamW/mul* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
╝
AdamW/mul_1Mulbeta2_power/readAdamW/beta2%^AdamW/update_pi/dense/bias/ApplyAdam'^AdamW/update_pi/dense/kernel/ApplyAdam'^AdamW/update_pi/dense_1/bias/ApplyAdam)^AdamW/update_pi/dense_1/kernel/ApplyAdam"^AdamW/update_pi/log_std/ApplyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
ъ
AdamW/Assign_1Assignbeta2_powerAdamW/mul_1*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
ш
AdamWNoOp^AdamW/Assign^AdamW/Assign_1%^AdamW/update_pi/dense/bias/ApplyAdam'^AdamW/update_pi/dense/kernel/ApplyAdam'^AdamW/update_pi/dense_1/bias/ApplyAdam)^AdamW/update_pi/dense_1/kernel/ApplyAdam"^AdamW/update_pi/log_std/ApplyAdam
k
Reshape_10/shapeConst^AdamW*
dtype0*
_output_shapes
:*
valueB:
         
q

Reshape_10Reshapepi/dense/kernel/readReshape_10/shape*
T0*
Tshape0*
_output_shapes	
:ђ
k
Reshape_11/shapeConst^AdamW*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_11Reshapepi/dense/bias/readReshape_11/shape*
_output_shapes
: *
T0*
Tshape0
k
Reshape_12/shapeConst^AdamW*
dtype0*
_output_shapes
:*
valueB:
         
s

Reshape_12Reshapepi/dense_1/kernel/readReshape_12/shape*
T0*
Tshape0*
_output_shapes	
:ђ
k
Reshape_13/shapeConst^AdamW*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_13Reshapepi/dense_1/bias/readReshape_13/shape*
T0*
Tshape0*
_output_shapes
:
k
Reshape_14/shapeConst^AdamW*
valueB:
         *
dtype0*
_output_shapes
:
k

Reshape_14Reshapepi/log_std/readReshape_14/shape*
_output_shapes
:*
T0*
Tshape0
W
concat_1/axisConst^AdamW*
value	B : *
dtype0*
_output_shapes
: 
џ
concat_1ConcatV2
Reshape_10
Reshape_11
Reshape_12
Reshape_13
Reshape_14concat_1/axis*
_output_shapes	
:е*

Tidx0*
T0*
N
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
l
Const_5Const^AdamW*
_output_shapes
:*)
value B"       ђ         *
dtype0
[
split_1/split_dimConst^AdamW*
value	B : *
dtype0*
_output_shapes
: 
Є
split_1SplitVPyFunc_1Const_5split_1/split_dim*

Tlen0*
	num_split*(
_output_shapes
:::::*
T0
i
Reshape_15/shapeConst^AdamW*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_15Reshapesplit_1Reshape_15/shape*
Tshape0*
_output_shapes

: *
T0
b
Reshape_16/shapeConst^AdamW*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_16Reshape	split_1:1Reshape_16/shape*
_output_shapes
: *
T0*
Tshape0
i
Reshape_17/shapeConst^AdamW*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_17Reshape	split_1:2Reshape_17/shape*
T0*
Tshape0*
_output_shapes

: 
b
Reshape_18/shapeConst^AdamW*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_18Reshape	split_1:3Reshape_18/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_19/shapeConst^AdamW*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_19Reshape	split_1:4Reshape_19/shape*
_output_shapes
:*
T0*
Tshape0
Б
AssignAssignpi/dense/kernel
Reshape_15*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
Ю
Assign_1Assignpi/dense/bias
Reshape_16*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
Е
Assign_2Assignpi/dense_1/kernel
Reshape_17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
А
Assign_3Assignpi/dense_1/bias
Reshape_18*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
Ќ
Assign_4Assign
pi/log_std
Reshape_19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
O

group_depsNoOp^AdamW^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4
)
group_deps_1NoOp^AdamW^group_deps
T
gradients_1/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
Z
gradients_1/grad_ys_0Const*
valueB
 *  ђ?*
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
ќ
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
ц
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
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
б
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
i
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
д
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
c
!gradients_1/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0
ј
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
ї
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
_output_shapes
: *
T0
є
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
ћ
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:         
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
║
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*2
_output_shapes 
:         :         *
T0
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:         
_
gradients_1/pow_grad/sub/yConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
T0*
_output_shapes
: 
l
gradients_1/pow_grad/PowPowsubgradients_1/pow_grad/sub*
T0*#
_output_shapes
:         
Ѓ
gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*
T0*#
_output_shapes
:         
Д
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ў
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
gradients_1/pow_grad/GreaterGreatersubgradients_1/pow_grad/Greater/y*#
_output_shapes
:         *
T0
g
$gradients_1/pow_grad/ones_like/ShapeShapesub*
out_type0*
_output_shapes
:*
T0
i
$gradients_1/pow_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
▓
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*

index_type0*#
_output_shapes
:         *
T0
ќ
gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersubgradients_1/pow_grad/ones_like*
T0*#
_output_shapes
:         
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
«
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*#
_output_shapes
:         *
T0
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*#
_output_shapes
:         *
T0
і
gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*#
_output_shapes
:         *
T0
Ф
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
њ
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
я
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:         
О
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
║
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0
║
gradients_1/sub_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ў
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
Й
gradients_1/sub_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
^
gradients_1/sub_grad/NegNeggradients_1/sub_grad/Sum_1*
_output_shapes
:*
T0
Ю
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
я
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape*#
_output_shapes
:         
С
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1*#
_output_shapes
:         
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
└
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Ю
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
Љ
3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad
і
;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         *
T0*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape
Ќ
=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
я
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:          *
transpose_b(*
T0
м
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Softplus;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: *
transpose_b( 
њ
2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1
ћ
:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:          
Љ
<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

: *
T0*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1
й
.gradients_1/v/dense/Softplus_grad/SoftplusGradSoftplusGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/BiasAdd*
T0*'
_output_shapes
:          
Д
,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients_1/v/dense/Softplus_grad/SoftplusGrad*
data_formatNHWC*
_output_shapes
: *
T0
Ў
1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad/^gradients_1/v/dense/Softplus_grad/SoftplusGrad
ъ
9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity.gradients_1/v/dense/Softplus_grad/SoftplusGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients_1/v/dense/Softplus_grad/SoftplusGrad*'
_output_shapes
:          *
T0
Ј
;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
п
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         *
transpose_b(
╔
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: *
transpose_b( 
ї
0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1
ї
8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul*'
_output_shapes
:         
Ѕ
:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
c
Reshape_20/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ќ

Reshape_20Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_20/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_21/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
Ќ

Reshape_21Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_21/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_22/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ў

Reshape_22Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_22/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_23/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ў

Reshape_23Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_23/shape*
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
ј
concat_2ConcatV2
Reshape_20
Reshape_21
Reshape_22
Reshape_23concat_2/axis*
T0*
N*
_output_shapes	
:┴*

Tidx0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:┴*
Tout
2*
token
pyfunc_2
`
Const_6Const*%
valueB"              *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
ї
split_2SplitVPyFunc_2Const_6split_2/split_dim*

Tlen0*
	num_split*-
_output_shapes
:ђ: : :*
T0
a
Reshape_24/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_24Reshapesplit_2Reshape_24/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_25/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_25Reshape	split_2:1Reshape_25/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_26/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_26Reshape	split_2:2Reshape_26/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_27/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_27Reshape	split_2:3Reshape_27/shape*
_output_shapes
:*
T0*
Tshape0
Ђ
beta1_power_1/initial_valueConst*
_class
loc:@v/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
њ
beta1_power_1
VariableV2*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0
х
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
o
beta1_power_1/readIdentitybeta1_power_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Ђ
beta2_power_1/initial_valueConst*
_class
loc:@v/dense/bias*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
њ
beta2_power_1
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
х
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
o
beta2_power_1/readIdentitybeta2_power_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
ъ
&v/dense/kernel/AdamW/Initializer/zerosConst*
valueB *    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes

: 
Ф
v/dense/kernel/AdamW
VariableV2*!
_class
loc:@v/dense/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
п
v/dense/kernel/AdamW/AssignAssignv/dense/kernel/AdamW&v/dense/kernel/AdamW/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
Є
v/dense/kernel/AdamW/readIdentityv/dense/kernel/AdamW*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
а
(v/dense/kernel/AdamW_1/Initializer/zerosConst*
dtype0*
_output_shapes

: *
valueB *    *!
_class
loc:@v/dense/kernel
Г
v/dense/kernel/AdamW_1
VariableV2*!
_class
loc:@v/dense/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
я
v/dense/kernel/AdamW_1/AssignAssignv/dense/kernel/AdamW_1(v/dense/kernel/AdamW_1/Initializer/zeros*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
І
v/dense/kernel/AdamW_1/readIdentityv/dense/kernel/AdamW_1*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
њ
$v/dense/bias/AdamW/Initializer/zerosConst*
valueB *    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
Ъ
v/dense/bias/AdamW
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
╠
v/dense/bias/AdamW/AssignAssignv/dense/bias/AdamW$v/dense/bias/AdamW/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
}
v/dense/bias/AdamW/readIdentityv/dense/bias/AdamW*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
ћ
&v/dense/bias/AdamW_1/Initializer/zerosConst*
_output_shapes
: *
valueB *    *
_class
loc:@v/dense/bias*
dtype0
А
v/dense/bias/AdamW_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
м
v/dense/bias/AdamW_1/AssignAssignv/dense/bias/AdamW_1&v/dense/bias/AdamW_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
Ђ
v/dense/bias/AdamW_1/readIdentityv/dense/bias/AdamW_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
б
(v/dense_1/kernel/AdamW/Initializer/zerosConst*
dtype0*
_output_shapes

: *
valueB *    *#
_class
loc:@v/dense_1/kernel
»
v/dense_1/kernel/AdamW
VariableV2*
shape
: *
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel*
	container 
Я
v/dense_1/kernel/AdamW/AssignAssignv/dense_1/kernel/AdamW(v/dense_1/kernel/AdamW/Initializer/zeros*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
Ї
v/dense_1/kernel/AdamW/readIdentityv/dense_1/kernel/AdamW*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
ц
*v/dense_1/kernel/AdamW_1/Initializer/zerosConst*
valueB *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes

: 
▒
v/dense_1/kernel/AdamW_1
VariableV2*
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
: 
Т
v/dense_1/kernel/AdamW_1/AssignAssignv/dense_1/kernel/AdamW_1*v/dense_1/kernel/AdamW_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Љ
v/dense_1/kernel/AdamW_1/readIdentityv/dense_1/kernel/AdamW_1*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
ќ
&v/dense_1/bias/AdamW/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:
Б
v/dense_1/bias/AdamW
VariableV2*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
н
v/dense_1/bias/AdamW/AssignAssignv/dense_1/bias/AdamW&v/dense_1/bias/AdamW/Initializer/zeros*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ѓ
v/dense_1/bias/AdamW/readIdentityv/dense_1/bias/AdamW*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
ў
(v/dense_1/bias/AdamW_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:
Ц
v/dense_1/bias/AdamW_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias
┌
v/dense_1/bias/AdamW_1/AssignAssignv/dense_1/bias/AdamW_1(v/dense_1/bias/AdamW_1/Initializer/zeros*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Є
v/dense_1/bias/AdamW_1/readIdentityv/dense_1/bias/AdamW_1*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
Y
AdamW_1/weight_decayConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
Z
AdamW_1/learning_rateConst*
valueB
 *oЃ:*
dtype0*
_output_shapes
: 
R
AdamW_1/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
R
AdamW_1/beta2Const*
_output_shapes
: *
valueB
 *wЙ?*
dtype0
T
AdamW_1/epsilonConst*
_output_shapes
: *
valueB
 *w╠+2*
dtype0
І
#AdamW_1/update_v/dense/kernel/mul/xConst*!
_class
loc:@v/dense/kernel*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
«
!AdamW_1/update_v/dense/kernel/mulMul#AdamW_1/update_v/dense/kernel/mul/xv/dense/kernel/read*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
к
'AdamW_1/update_v/dense/kernel/AssignSub	AssignSubv/dense/kernel!AdamW_1/update_v/dense/kernel/mul*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
Ѕ
'AdamW_1/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/AdamWv/dense/kernel/AdamW_1beta1_power_1/readbeta2_power_1/readAdamW_1/learning_rateAdamW_1/beta1AdamW_1/beta2AdamW_1/epsilon
Reshape_24(^AdamW_1/update_v/dense/kernel/AssignSub*
_output_shapes

: *
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
use_nesterov( 
Є
!AdamW_1/update_v/dense/bias/mul/xConst*
_class
loc:@v/dense/bias*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
б
AdamW_1/update_v/dense/bias/mulMul!AdamW_1/update_v/dense/bias/mul/xv/dense/bias/read*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
║
%AdamW_1/update_v/dense/bias/AssignSub	AssignSubv/dense/biasAdamW_1/update_v/dense/bias/mul*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias
щ
%AdamW_1/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/AdamWv/dense/bias/AdamW_1beta1_power_1/readbeta2_power_1/readAdamW_1/learning_rateAdamW_1/beta1AdamW_1/beta2AdamW_1/epsilon
Reshape_25&^AdamW_1/update_v/dense/bias/AssignSub*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias
Ј
%AdamW_1/update_v/dense_1/kernel/mul/xConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
Х
#AdamW_1/update_v/dense_1/kernel/mulMul%AdamW_1/update_v/dense_1/kernel/mul/xv/dense_1/kernel/read*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
╬
)AdamW_1/update_v/dense_1/kernel/AssignSub	AssignSubv/dense_1/kernel#AdamW_1/update_v/dense_1/kernel/mul*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: *
use_locking( 
Ћ
)AdamW_1/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/AdamWv/dense_1/kernel/AdamW_1beta1_power_1/readbeta2_power_1/readAdamW_1/learning_rateAdamW_1/beta1AdamW_1/beta2AdamW_1/epsilon
Reshape_26*^AdamW_1/update_v/dense_1/kernel/AssignSub*
T0*#
_class
loc:@v/dense_1/kernel*
use_nesterov( *
_output_shapes

: *
use_locking( 
І
#AdamW_1/update_v/dense_1/bias/mul/xConst*!
_class
loc:@v/dense_1/bias*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
ф
!AdamW_1/update_v/dense_1/bias/mulMul#AdamW_1/update_v/dense_1/bias/mul/xv/dense_1/bias/read*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
┬
'AdamW_1/update_v/dense_1/bias/AssignSub	AssignSubv/dense_1/bias!AdamW_1/update_v/dense_1/bias/mul*
_output_shapes
:*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias
Ё
'AdamW_1/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/AdamWv/dense_1/bias/AdamW_1beta1_power_1/readbeta2_power_1/readAdamW_1/learning_rateAdamW_1/beta1AdamW_1/beta2AdamW_1/epsilon
Reshape_27(^AdamW_1/update_v/dense_1/bias/AssignSub*
_output_shapes
:*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias*
use_nesterov( 
Ъ
AdamW_1/mulMulbeta1_power_1/readAdamW_1/beta1&^AdamW_1/update_v/dense/bias/ApplyAdam(^AdamW_1/update_v/dense/kernel/ApplyAdam(^AdamW_1/update_v/dense_1/bias/ApplyAdam*^AdamW_1/update_v/dense_1/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
Ъ
AdamW_1/AssignAssignbeta1_power_1AdamW_1/mul*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
А
AdamW_1/mul_1Mulbeta2_power_1/readAdamW_1/beta2&^AdamW_1/update_v/dense/bias/ApplyAdam(^AdamW_1/update_v/dense/kernel/ApplyAdam(^AdamW_1/update_v/dense_1/bias/ApplyAdam*^AdamW_1/update_v/dense_1/kernel/ApplyAdam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Б
AdamW_1/Assign_1Assignbeta2_power_1AdamW_1/mul_1*
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
█
AdamW_1NoOp^AdamW_1/Assign^AdamW_1/Assign_1&^AdamW_1/update_v/dense/bias/ApplyAdam(^AdamW_1/update_v/dense/kernel/ApplyAdam(^AdamW_1/update_v/dense_1/bias/ApplyAdam*^AdamW_1/update_v/dense_1/kernel/ApplyAdam
m
Reshape_28/shapeConst^AdamW_1*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_28Reshapev/dense/kernel/readReshape_28/shape*
_output_shapes	
:ђ*
T0*
Tshape0
m
Reshape_29/shapeConst^AdamW_1*
valueB:
         *
dtype0*
_output_shapes
:
m

Reshape_29Reshapev/dense/bias/readReshape_29/shape*
_output_shapes
: *
T0*
Tshape0
m
Reshape_30/shapeConst^AdamW_1*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_30Reshapev/dense_1/kernel/readReshape_30/shape*
_output_shapes
: *
T0*
Tshape0
m
Reshape_31/shapeConst^AdamW_1*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_31Reshapev/dense_1/bias/readReshape_31/shape*
_output_shapes
:*
T0*
Tshape0
Y
concat_3/axisConst^AdamW_1*
value	B : *
dtype0*
_output_shapes
: 
ј
concat_3ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31concat_3/axis*
_output_shapes	
:┴*

Tidx0*
T0*
N
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
j
Const_7Const^AdamW_1*%
valueB"              *
dtype0*
_output_shapes
:
]
split_3/split_dimConst^AdamW_1*
value	B : *
dtype0*
_output_shapes
: 
Ѓ
split_3SplitVPyFunc_3Const_7split_3/split_dim*
T0*

Tlen0*
	num_split*$
_output_shapes
::::
k
Reshape_32/shapeConst^AdamW_1*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_32Reshapesplit_3Reshape_32/shape*
_output_shapes

: *
T0*
Tshape0
d
Reshape_33/shapeConst^AdamW_1*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_33Reshape	split_3:1Reshape_33/shape*
_output_shapes
: *
T0*
Tshape0
k
Reshape_34/shapeConst^AdamW_1*
dtype0*
_output_shapes
:*
valueB"       
i

Reshape_34Reshape	split_3:2Reshape_34/shape*
T0*
Tshape0*
_output_shapes

: 
d
Reshape_35/shapeConst^AdamW_1*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_35Reshape	split_3:3Reshape_35/shape*
_output_shapes
:*
T0*
Tshape0
Б
Assign_5Assignv/dense/kernel
Reshape_32*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
Џ
Assign_6Assignv/dense/bias
Reshape_33*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Д
Assign_7Assignv/dense_1/kernel
Reshape_34*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ъ
Assign_8Assignv/dense_1/bias
Reshape_35*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
J
group_deps_2NoOp^AdamW_1	^Assign_5	^Assign_6	^Assign_7	^Assign_8
-
group_deps_3NoOp^AdamW_1^group_deps_2
Ж
initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta2_power/Assign^beta2_power_1/Assign^pi/dense/bias/AdamW/Assign^pi/dense/bias/AdamW_1/Assign^pi/dense/bias/Assign^pi/dense/kernel/AdamW/Assign^pi/dense/kernel/AdamW_1/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/AdamW/Assign^pi/dense_1/bias/AdamW_1/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/AdamW/Assign!^pi/dense_1/kernel/AdamW_1/Assign^pi/dense_1/kernel/Assign^pi/log_std/AdamW/Assign^pi/log_std/AdamW_1/Assign^pi/log_std/Assign^v/dense/bias/AdamW/Assign^v/dense/bias/AdamW_1/Assign^v/dense/bias/Assign^v/dense/kernel/AdamW/Assign^v/dense/kernel/AdamW_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/AdamW/Assign^v/dense_1/bias/AdamW_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/AdamW/Assign ^v/dense_1/kernel/AdamW_1/Assign^v/dense_1/kernel/Assign
c
Reshape_36/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_36Reshapepi/dense/kernel/readReshape_36/shape*
Tshape0*
_output_shapes	
:ђ*
T0
c
Reshape_37/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_37Reshapepi/dense/bias/readReshape_37/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_38/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_38Reshapepi/dense_1/kernel/readReshape_38/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_39/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_39Reshapepi/dense_1/bias/readReshape_39/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_40/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
k

Reshape_40Reshapepi/log_std/readReshape_40/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_41/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
p

Reshape_41Reshapev/dense/kernel/readReshape_41/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_42/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
m

Reshape_42Reshapev/dense/bias/readReshape_42/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_43/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_43Reshapev/dense_1/kernel/readReshape_43/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_44/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_44Reshapev/dense_1/bias/readReshape_44/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_45/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
l

Reshape_45Reshapebeta1_power/readReshape_45/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_46/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
l

Reshape_46Reshapebeta2_power/readReshape_46/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_47/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_47Reshapepi/dense/kernel/AdamW/readReshape_47/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_48/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
y

Reshape_48Reshapepi/dense/kernel/AdamW_1/readReshape_48/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_49/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
t

Reshape_49Reshapepi/dense/bias/AdamW/readReshape_49/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_50/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
v

Reshape_50Reshapepi/dense/bias/AdamW_1/readReshape_50/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_51/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_51Reshapepi/dense_1/kernel/AdamW/readReshape_51/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_52/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
{

Reshape_52Reshapepi/dense_1/kernel/AdamW_1/readReshape_52/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_53/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
v

Reshape_53Reshapepi/dense_1/bias/AdamW/readReshape_53/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_54/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_54Reshapepi/dense_1/bias/AdamW_1/readReshape_54/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_55/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_55Reshapepi/log_std/AdamW/readReshape_55/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_56/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_56Reshapepi/log_std/AdamW_1/readReshape_56/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_57/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_57Reshapebeta1_power_1/readReshape_57/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_58/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_58Reshapebeta2_power_1/readReshape_58/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_59/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
v

Reshape_59Reshapev/dense/kernel/AdamW/readReshape_59/shape*
Tshape0*
_output_shapes	
:ђ*
T0
c
Reshape_60/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_60Reshapev/dense/kernel/AdamW_1/readReshape_60/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_61/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_61Reshapev/dense/bias/AdamW/readReshape_61/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_62/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
u

Reshape_62Reshapev/dense/bias/AdamW_1/readReshape_62/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_63/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_63Reshapev/dense_1/kernel/AdamW/readReshape_63/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_64/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_64Reshapev/dense_1/kernel/AdamW_1/readReshape_64/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_65/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
u

Reshape_65Reshapev/dense_1/bias/AdamW/readReshape_65/shape*
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
w

Reshape_66Reshapev/dense_1/bias/AdamW_1/readReshape_66/shape*
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
м
concat_4ConcatV2
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45
Reshape_46
Reshape_47
Reshape_48
Reshape_49
Reshape_50
Reshape_51
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
Reshape_66concat_4/axis*
_output_shapes	
:┐)*

Tidx0*
T0*
N
h
PyFunc_4PyFuncconcat_4*
token
pyfunc_4*
Tin
2*
_output_shapes
:*
Tout
2
¤
Const_8Const*Њ
valueЅBє"|       ђ                                           ђ   ђ                                                 *
dtype0*
_output_shapes
:
S
split_4/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
­
split_4SplitVPyFunc_4Const_8split_4/split_dim*

Tlen0*
	num_split*љ
_output_shapes~
|:::::::::::::::::::::::::::::::*
T0
a
Reshape_67/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_67Reshapesplit_4Reshape_67/shape*
Tshape0*
_output_shapes

: *
T0
Z
Reshape_68/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_68Reshape	split_4:1Reshape_68/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_69/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_69Reshape	split_4:2Reshape_69/shape*
Tshape0*
_output_shapes

: *
T0
Z
Reshape_70/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_70Reshape	split_4:3Reshape_70/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_71/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_71Reshape	split_4:4Reshape_71/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_72/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
i

Reshape_72Reshape	split_4:5Reshape_72/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_73/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_73Reshape	split_4:6Reshape_73/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_74/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_74Reshape	split_4:7Reshape_74/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_75/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_75Reshape	split_4:8Reshape_75/shape*
T0*
Tshape0*
_output_shapes
:
S
Reshape_76/shapeConst*
valueB *
dtype0*
_output_shapes
: 
a

Reshape_76Reshape	split_4:9Reshape_76/shape*
Tshape0*
_output_shapes
: *
T0
S
Reshape_77/shapeConst*
_output_shapes
: *
valueB *
dtype0
b

Reshape_77Reshape
split_4:10Reshape_77/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_78/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_78Reshape
split_4:11Reshape_78/shape*
_output_shapes

: *
T0*
Tshape0
a
Reshape_79/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_79Reshape
split_4:12Reshape_79/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_80/shapeConst*
valueB: *
dtype0*
_output_shapes
:
f

Reshape_80Reshape
split_4:13Reshape_80/shape*
T0*
Tshape0*
_output_shapes
: 
Z
Reshape_81/shapeConst*
valueB: *
dtype0*
_output_shapes
:
f

Reshape_81Reshape
split_4:14Reshape_81/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_82/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_82Reshape
split_4:15Reshape_82/shape*
Tshape0*
_output_shapes

: *
T0
a
Reshape_83/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
j

Reshape_83Reshape
split_4:16Reshape_83/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_84/shapeConst*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_84Reshape
split_4:17Reshape_84/shape*
_output_shapes
:*
T0*
Tshape0
Z
Reshape_85/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_85Reshape
split_4:18Reshape_85/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_86/shapeConst*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_86Reshape
split_4:19Reshape_86/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_87/shapeConst*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_87Reshape
split_4:20Reshape_87/shape*
T0*
Tshape0*
_output_shapes
:
S
Reshape_88/shapeConst*
valueB *
dtype0*
_output_shapes
: 
b

Reshape_88Reshape
split_4:21Reshape_88/shape*
T0*
Tshape0*
_output_shapes
: 
S
Reshape_89/shapeConst*
valueB *
dtype0*
_output_shapes
: 
b

Reshape_89Reshape
split_4:22Reshape_89/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_90/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_90Reshape
split_4:23Reshape_90/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_91/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
j

Reshape_91Reshape
split_4:24Reshape_91/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_92/shapeConst*
dtype0*
_output_shapes
:*
valueB: 
f

Reshape_92Reshape
split_4:25Reshape_92/shape*
Tshape0*
_output_shapes
: *
T0
Z
Reshape_93/shapeConst*
valueB: *
dtype0*
_output_shapes
:
f

Reshape_93Reshape
split_4:26Reshape_93/shape*
Tshape0*
_output_shapes
: *
T0
a
Reshape_94/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_94Reshape
split_4:27Reshape_94/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_95/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_95Reshape
split_4:28Reshape_95/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_96/shapeConst*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_96Reshape
split_4:29Reshape_96/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_97/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_97Reshape
split_4:30Reshape_97/shape*
T0*
Tshape0*
_output_shapes
:
Ц
Assign_9Assignpi/dense/kernel
Reshape_67*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
ъ
	Assign_10Assignpi/dense/bias
Reshape_68*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
ф
	Assign_11Assignpi/dense_1/kernel
Reshape_69*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
б
	Assign_12Assignpi/dense_1/bias
Reshape_70*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ў
	Assign_13Assign
pi/log_std
Reshape_71*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
ц
	Assign_14Assignv/dense/kernel
Reshape_72*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
ю
	Assign_15Assignv/dense/bias
Reshape_73*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
е
	Assign_16Assignv/dense_1/kernel
Reshape_74*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
а
	Assign_17Assignv/dense_1/bias
Reshape_75*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
ў
	Assign_18Assignbeta1_power
Reshape_76*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
ў
	Assign_19Assignbeta2_power
Reshape_77*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
г
	Assign_20Assignpi/dense/kernel/AdamW
Reshape_78*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
«
	Assign_21Assignpi/dense/kernel/AdamW_1
Reshape_79*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
ц
	Assign_22Assignpi/dense/bias/AdamW
Reshape_80*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
д
	Assign_23Assignpi/dense/bias/AdamW_1
Reshape_81*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
░
	Assign_24Assignpi/dense_1/kernel/AdamW
Reshape_82*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
▓
	Assign_25Assignpi/dense_1/kernel/AdamW_1
Reshape_83*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
е
	Assign_26Assignpi/dense_1/bias/AdamW
Reshape_84*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
ф
	Assign_27Assignpi/dense_1/bias/AdamW_1
Reshape_85*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
ъ
	Assign_28Assignpi/log_std/AdamW
Reshape_86*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
а
	Assign_29Assignpi/log_std/AdamW_1
Reshape_87*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
Ў
	Assign_30Assignbeta1_power_1
Reshape_88*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Ў
	Assign_31Assignbeta2_power_1
Reshape_89*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
ф
	Assign_32Assignv/dense/kernel/AdamW
Reshape_90*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
г
	Assign_33Assignv/dense/kernel/AdamW_1
Reshape_91*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
б
	Assign_34Assignv/dense/bias/AdamW
Reshape_92*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ц
	Assign_35Assignv/dense/bias/AdamW_1
Reshape_93*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
«
	Assign_36Assignv/dense_1/kernel/AdamW
Reshape_94*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
░
	Assign_37Assignv/dense_1/kernel/AdamW_1
Reshape_95*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
д
	Assign_38Assignv/dense_1/bias/AdamW
Reshape_96*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
е
	Assign_39Assignv/dense_1/bias/AdamW_1
Reshape_97*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Є
group_deps_4NoOp
^Assign_10
^Assign_11
^Assign_12
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
^Assign_39	^Assign_9
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
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
ё
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_0845fbd41289415981d97c6293959d4d/part*
dtype0*
_output_shapes
: 
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
╚
save/SaveV2/tensor_namesConst*ч
valueыBЬBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/AdamWBpi/dense/bias/AdamW_1Bpi/dense/kernelBpi/dense/kernel/AdamWBpi/dense/kernel/AdamW_1Bpi/dense_1/biasBpi/dense_1/bias/AdamWBpi/dense_1/bias/AdamW_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamWBpi/dense_1/kernel/AdamW_1B
pi/log_stdBpi/log_std/AdamWBpi/log_std/AdamW_1Bv/dense/biasBv/dense/bias/AdamWBv/dense/bias/AdamW_1Bv/dense/kernelBv/dense/kernel/AdamWBv/dense/kernel/AdamW_1Bv/dense_1/biasBv/dense_1/bias/AdamWBv/dense_1/bias/AdamW_1Bv/dense_1/kernelBv/dense_1/kernel/AdamWBv/dense_1/kernel/AdamW_1*
dtype0*
_output_shapes
:
А
save/SaveV2/shape_and_slicesConst*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Э
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1pi/dense/biaspi/dense/bias/AdamWpi/dense/bias/AdamW_1pi/dense/kernelpi/dense/kernel/AdamWpi/dense/kernel/AdamW_1pi/dense_1/biaspi/dense_1/bias/AdamWpi/dense_1/bias/AdamW_1pi/dense_1/kernelpi/dense_1/kernel/AdamWpi/dense_1/kernel/AdamW_1
pi/log_stdpi/log_std/AdamWpi/log_std/AdamW_1v/dense/biasv/dense/bias/AdamWv/dense/bias/AdamW_1v/dense/kernelv/dense/kernel/AdamWv/dense/kernel/AdamW_1v/dense_1/biasv/dense_1/bias/AdamWv/dense_1/bias/AdamW_1v/dense_1/kernelv/dense_1/kernel/AdamWv/dense_1/kernel/AdamW_1*-
dtypes#
!2
Љ
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
Ю
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
_output_shapes
:*
T0
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
╦
save/RestoreV2/tensor_namesConst*ч
valueыBЬBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/AdamWBpi/dense/bias/AdamW_1Bpi/dense/kernelBpi/dense/kernel/AdamWBpi/dense/kernel/AdamW_1Bpi/dense_1/biasBpi/dense_1/bias/AdamWBpi/dense_1/bias/AdamW_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamWBpi/dense_1/kernel/AdamW_1B
pi/log_stdBpi/log_std/AdamWBpi/log_std/AdamW_1Bv/dense/biasBv/dense/bias/AdamWBv/dense/bias/AdamW_1Bv/dense/kernelBv/dense/kernel/AdamWBv/dense/kernel/AdamW_1Bv/dense_1/biasBv/dense_1/bias/AdamWBv/dense_1/bias/AdamW_1Bv/dense_1/kernelBv/dense_1/kernel/AdamWBv/dense_1/kernel/AdamW_1*
dtype0*
_output_shapes
:
ц
save/RestoreV2/shape_and_slicesConst*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Д
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*љ
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2
ъ
save/AssignAssignbeta1_powersave/RestoreV2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Б
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
б
save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Б
save/Assign_3Assignbeta2_power_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
е
save/Assign_4Assignpi/dense/biassave/RestoreV2:4*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
«
save/Assign_5Assignpi/dense/bias/AdamWsave/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
░
save/Assign_6Assignpi/dense/bias/AdamW_1save/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
░
save/Assign_7Assignpi/dense/kernelsave/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
Х
save/Assign_8Assignpi/dense/kernel/AdamWsave/RestoreV2:8*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
И
save/Assign_9Assignpi/dense/kernel/AdamW_1save/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
«
save/Assign_10Assignpi/dense_1/biassave/RestoreV2:10*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
┤
save/Assign_11Assignpi/dense_1/bias/AdamWsave/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
Х
save/Assign_12Assignpi/dense_1/bias/AdamW_1save/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
Х
save/Assign_13Assignpi/dense_1/kernelsave/RestoreV2:13*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
╝
save/Assign_14Assignpi/dense_1/kernel/AdamWsave/RestoreV2:14*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Й
save/Assign_15Assignpi/dense_1/kernel/AdamW_1save/RestoreV2:15*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
ц
save/Assign_16Assign
pi/log_stdsave/RestoreV2:16*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
ф
save/Assign_17Assignpi/log_std/AdamWsave/RestoreV2:17*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
г
save/Assign_18Assignpi/log_std/AdamW_1save/RestoreV2:18*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
е
save/Assign_19Assignv/dense/biassave/RestoreV2:19*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
«
save/Assign_20Assignv/dense/bias/AdamWsave/RestoreV2:20*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
░
save/Assign_21Assignv/dense/bias/AdamW_1save/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
░
save/Assign_22Assignv/dense/kernelsave/RestoreV2:22*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
Х
save/Assign_23Assignv/dense/kernel/AdamWsave/RestoreV2:23*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
И
save/Assign_24Assignv/dense/kernel/AdamW_1save/RestoreV2:24*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
г
save/Assign_25Assignv/dense_1/biassave/RestoreV2:25*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
▓
save/Assign_26Assignv/dense_1/bias/AdamWsave/RestoreV2:26*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
┤
save/Assign_27Assignv/dense_1/bias/AdamW_1save/RestoreV2:27*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
┤
save/Assign_28Assignv/dense_1/kernelsave/RestoreV2:28*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
║
save/Assign_29Assignv/dense_1/kernel/AdamWsave/RestoreV2:29*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
╝
save/Assign_30Assignv/dense_1/kernel/AdamW_1save/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ю
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 
є
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_2949cd0d8c2e44b0bf80de5850850ccf/part*
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
Ё
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
╩
save_1/SaveV2/tensor_namesConst*ч
valueыBЬBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/AdamWBpi/dense/bias/AdamW_1Bpi/dense/kernelBpi/dense/kernel/AdamWBpi/dense/kernel/AdamW_1Bpi/dense_1/biasBpi/dense_1/bias/AdamWBpi/dense_1/bias/AdamW_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamWBpi/dense_1/kernel/AdamW_1B
pi/log_stdBpi/log_std/AdamWBpi/log_std/AdamW_1Bv/dense/biasBv/dense/bias/AdamWBv/dense/bias/AdamW_1Bv/dense/kernelBv/dense/kernel/AdamWBv/dense/kernel/AdamW_1Bv/dense_1/biasBv/dense_1/bias/AdamWBv/dense_1/bias/AdamW_1Bv/dense_1/kernelBv/dense_1/kernel/AdamWBv/dense_1/kernel/AdamW_1*
dtype0*
_output_shapes
:
Б
save_1/SaveV2/shape_and_slicesConst*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ђ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1pi/dense/biaspi/dense/bias/AdamWpi/dense/bias/AdamW_1pi/dense/kernelpi/dense/kernel/AdamWpi/dense/kernel/AdamW_1pi/dense_1/biaspi/dense_1/bias/AdamWpi/dense_1/bias/AdamW_1pi/dense_1/kernelpi/dense_1/kernel/AdamWpi/dense_1/kernel/AdamW_1
pi/log_stdpi/log_std/AdamWpi/log_std/AdamW_1v/dense/biasv/dense/bias/AdamWv/dense/bias/AdamW_1v/dense/kernelv/dense/kernel/AdamWv/dense/kernel/AdamW_1v/dense_1/biasv/dense_1/bias/AdamWv/dense_1/bias/AdamW_1v/dense_1/kernelv/dense_1/kernel/AdamWv/dense_1/kernel/AdamW_1*-
dtypes#
!2
Ў
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Б
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Ѓ
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
ѓ
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
═
save_1/RestoreV2/tensor_namesConst*ч
valueыBЬBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/AdamWBpi/dense/bias/AdamW_1Bpi/dense/kernelBpi/dense/kernel/AdamWBpi/dense/kernel/AdamW_1Bpi/dense_1/biasBpi/dense_1/bias/AdamWBpi/dense_1/bias/AdamW_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamWBpi/dense_1/kernel/AdamW_1B
pi/log_stdBpi/log_std/AdamWBpi/log_std/AdamW_1Bv/dense/biasBv/dense/bias/AdamWBv/dense/bias/AdamW_1Bv/dense/kernelBv/dense/kernel/AdamWBv/dense/kernel/AdamW_1Bv/dense_1/biasBv/dense_1/bias/AdamWBv/dense_1/bias/AdamW_1Bv/dense_1/kernelBv/dense_1/kernel/AdamWBv/dense_1/kernel/AdamW_1*
dtype0*
_output_shapes
:
д
!save_1/RestoreV2/shape_and_slicesConst*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
»
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*-
dtypes#
!2*љ
_output_shapes~
|:::::::::::::::::::::::::::::::
б
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Д
save_1/Assign_1Assignbeta1_power_1save_1/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
д
save_1/Assign_2Assignbeta2_powersave_1/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Д
save_1/Assign_3Assignbeta2_power_1save_1/RestoreV2:3*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
г
save_1/Assign_4Assignpi/dense/biassave_1/RestoreV2:4* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
▓
save_1/Assign_5Assignpi/dense/bias/AdamWsave_1/RestoreV2:5*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
┤
save_1/Assign_6Assignpi/dense/bias/AdamW_1save_1/RestoreV2:6* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
┤
save_1/Assign_7Assignpi/dense/kernelsave_1/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
║
save_1/Assign_8Assignpi/dense/kernel/AdamWsave_1/RestoreV2:8*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
╝
save_1/Assign_9Assignpi/dense/kernel/AdamW_1save_1/RestoreV2:9*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
▓
save_1/Assign_10Assignpi/dense_1/biassave_1/RestoreV2:10*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
И
save_1/Assign_11Assignpi/dense_1/bias/AdamWsave_1/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
║
save_1/Assign_12Assignpi/dense_1/bias/AdamW_1save_1/RestoreV2:12*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
║
save_1/Assign_13Assignpi/dense_1/kernelsave_1/RestoreV2:13*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
└
save_1/Assign_14Assignpi/dense_1/kernel/AdamWsave_1/RestoreV2:14*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
┬
save_1/Assign_15Assignpi/dense_1/kernel/AdamW_1save_1/RestoreV2:15*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
е
save_1/Assign_16Assign
pi/log_stdsave_1/RestoreV2:16*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
«
save_1/Assign_17Assignpi/log_std/AdamWsave_1/RestoreV2:17*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
░
save_1/Assign_18Assignpi/log_std/AdamW_1save_1/RestoreV2:18*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
г
save_1/Assign_19Assignv/dense/biassave_1/RestoreV2:19*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
▓
save_1/Assign_20Assignv/dense/bias/AdamWsave_1/RestoreV2:20*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
┤
save_1/Assign_21Assignv/dense/bias/AdamW_1save_1/RestoreV2:21*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
┤
save_1/Assign_22Assignv/dense/kernelsave_1/RestoreV2:22*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
║
save_1/Assign_23Assignv/dense/kernel/AdamWsave_1/RestoreV2:23*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
╝
save_1/Assign_24Assignv/dense/kernel/AdamW_1save_1/RestoreV2:24*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
░
save_1/Assign_25Assignv/dense_1/biassave_1/RestoreV2:25*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
Х
save_1/Assign_26Assignv/dense_1/bias/AdamWsave_1/RestoreV2:26*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
И
save_1/Assign_27Assignv/dense_1/bias/AdamW_1save_1/RestoreV2:27*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
И
save_1/Assign_28Assignv/dense_1/kernelsave_1/RestoreV2:28*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Й
save_1/Assign_29Assignv/dense_1/kernel/AdamWsave_1/RestoreV2:29*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
└
save_1/Assign_30Assignv/dense_1/kernel/AdamW_1save_1/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
П
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

AdamW
AdamW_1"­
	variablesР▀
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
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
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
ђ
pi/dense/kernel/AdamW:0pi/dense/kernel/AdamW/Assignpi/dense/kernel/AdamW/read:02)pi/dense/kernel/AdamW/Initializer/zeros:0
ѕ
pi/dense/kernel/AdamW_1:0pi/dense/kernel/AdamW_1/Assignpi/dense/kernel/AdamW_1/read:02+pi/dense/kernel/AdamW_1/Initializer/zeros:0
x
pi/dense/bias/AdamW:0pi/dense/bias/AdamW/Assignpi/dense/bias/AdamW/read:02'pi/dense/bias/AdamW/Initializer/zeros:0
ђ
pi/dense/bias/AdamW_1:0pi/dense/bias/AdamW_1/Assignpi/dense/bias/AdamW_1/read:02)pi/dense/bias/AdamW_1/Initializer/zeros:0
ѕ
pi/dense_1/kernel/AdamW:0pi/dense_1/kernel/AdamW/Assignpi/dense_1/kernel/AdamW/read:02+pi/dense_1/kernel/AdamW/Initializer/zeros:0
љ
pi/dense_1/kernel/AdamW_1:0 pi/dense_1/kernel/AdamW_1/Assign pi/dense_1/kernel/AdamW_1/read:02-pi/dense_1/kernel/AdamW_1/Initializer/zeros:0
ђ
pi/dense_1/bias/AdamW:0pi/dense_1/bias/AdamW/Assignpi/dense_1/bias/AdamW/read:02)pi/dense_1/bias/AdamW/Initializer/zeros:0
ѕ
pi/dense_1/bias/AdamW_1:0pi/dense_1/bias/AdamW_1/Assignpi/dense_1/bias/AdamW_1/read:02+pi/dense_1/bias/AdamW_1/Initializer/zeros:0
l
pi/log_std/AdamW:0pi/log_std/AdamW/Assignpi/log_std/AdamW/read:02$pi/log_std/AdamW/Initializer/zeros:0
t
pi/log_std/AdamW_1:0pi/log_std/AdamW_1/Assignpi/log_std/AdamW_1/read:02&pi/log_std/AdamW_1/Initializer/zeros:0
\
beta1_power_1:0beta1_power_1/Assignbeta1_power_1/read:02beta1_power_1/initial_value:0
\
beta2_power_1:0beta2_power_1/Assignbeta2_power_1/read:02beta2_power_1/initial_value:0
|
v/dense/kernel/AdamW:0v/dense/kernel/AdamW/Assignv/dense/kernel/AdamW/read:02(v/dense/kernel/AdamW/Initializer/zeros:0
ё
v/dense/kernel/AdamW_1:0v/dense/kernel/AdamW_1/Assignv/dense/kernel/AdamW_1/read:02*v/dense/kernel/AdamW_1/Initializer/zeros:0
t
v/dense/bias/AdamW:0v/dense/bias/AdamW/Assignv/dense/bias/AdamW/read:02&v/dense/bias/AdamW/Initializer/zeros:0
|
v/dense/bias/AdamW_1:0v/dense/bias/AdamW_1/Assignv/dense/bias/AdamW_1/read:02(v/dense/bias/AdamW_1/Initializer/zeros:0
ё
v/dense_1/kernel/AdamW:0v/dense_1/kernel/AdamW/Assignv/dense_1/kernel/AdamW/read:02*v/dense_1/kernel/AdamW/Initializer/zeros:0
ї
v/dense_1/kernel/AdamW_1:0v/dense_1/kernel/AdamW_1/Assignv/dense_1/kernel/AdamW_1/read:02,v/dense_1/kernel/AdamW_1/Initializer/zeros:0
|
v/dense_1/bias/AdamW:0v/dense_1/bias/AdamW/Assignv/dense_1/bias/AdamW/read:02(v/dense_1/bias/AdamW/Initializer/zeros:0
ё
v/dense_1/bias/AdamW_1:0v/dense_1/bias/AdamW_1/Assignv/dense_1/bias/AdamW_1/read:02*v/dense_1/bias/AdamW_1/Initializer/zeros:0"с
trainable_variables╦╚
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
R
pi/log_std:0pi/log_std/Assignpi/log_std/read:02pi/log_std/initial_value:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08*Д
serving_defaultЊ
)
x$
Placeholder:0         #
v
v/Squeeze:0         %
pi
pi/add:0         tensorflow/serving/predict