ÓŤ
´$$
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
2	
°
ApplyMomentum
var"T
accum"T
lr"T	
grad"T
momentum"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignSub
ref"T

value"T

output_ref"T" 
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
;
Elu
features"T
activations"T"
Ttype:
2
L
EluGrad
	gradients"T
outputs"T
	backprops"T"
Ttype:
2
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

2	

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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

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
list(type)(

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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

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

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
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'şë
n
PlaceholderPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
Placeholder_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_2Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
h
Placeholder_3Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Ľ
0pi/dense/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@pi/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:

.pi/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
valueB
 *b§ž

.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *b§>*
dtype0*
_output_shapes
: 
î
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2*
dtype0*
_output_shapes

: 
Ú
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
ě
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel
Ţ
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@pi/dense/kernel*
_output_shapes

: *
T0
§
pi/dense/kernel
VariableV2*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name *"
_class
loc:@pi/dense/kernel
Ó
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 

pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB *    *
dtype0*
_output_shapes
: 

pi/dense/bias
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
ž
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
t
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC
W
pi/dense/EluElupi/dense/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Š
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*$
_class
loc:@pi/dense_1/kernel*
valueB"       *
dtype0

0pi/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *ěŃž*
dtype0

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *ěŃ>*
dtype0*
_output_shapes
: 
ô
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed *
T0*$
_class
loc:@pi/dense_1/kernel*
seed2
â
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
ô
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel
ć
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel
Ť
pi/dense_1/kernel
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
Ű
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 

!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:

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
Ć
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

pi/dense_1/MatMulMatMulpi/dense/Elupi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
pi/log_std/initial_valueConst*
_output_shapes
:*%
valueB"   ż   ż   ż   ż*
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
Ž
pi/log_std/AssignAssign
pi/log_stdpi/log_std/initial_value*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
k
pi/log_std/readIdentity
pi/log_std*
_output_shapes
:*
T0*
_class
loc:@pi/log_std
C
pi/ExpExppi/log_std/read*
_output_shapes
:*
T0
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
pi/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*

seed *
T0*
dtype0*
seed2.*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
pi/mulMulpi/random_normalpi/Exp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
pi/addAddpi/dense_1/BiasAddpi/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
b
pi/subSubPlaceholder_1pi/dense_1/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
E
pi/Exp_1Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_1/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
J
pi/add_1Addpi/Exp_1
pi/add_1/y*
_output_shapes
:*
T0
Y

pi/truedivRealDivpi/subpi/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
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
pi/add_2Addpi/powpi/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O

pi/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *?ë?
W
pi/add_3Addpi/add_2
pi/add_3/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O

pi/mul_2/xConst*
_output_shapes
: *
valueB
 *   ż*
dtype0
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
pi/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
pi/sub_1Subpi/addpi/dense_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
E
pi/Exp_2Exppi/log_std/read*
_output_shapes
:*
T0
O

pi/add_4/yConst*
valueB
 *wĚ+2*
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
:˙˙˙˙˙˙˙˙˙
O

pi/pow_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
[
pi/pow_1Powpi/truediv_1
pi/pow_1/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O

pi/mul_3/xConst*
_output_shapes
: *
valueB
 *   @*
dtype0
Q
pi/mul_3Mul
pi/mul_3/xpi/log_std/read*
T0*
_output_shapes
:
U
pi/add_5Addpi/pow_1pi/mul_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O

pi/add_6/yConst*
valueB
 *?ë?*
dtype0*
_output_shapes
: 
W
pi/add_6Addpi/add_5
pi/add_6/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
O

pi/mul_4/xConst*
_output_shapes
: *
valueB
 *   ż*
dtype0
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0
Ł
/v/dense/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@v/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:

-v/dense/kernel/Initializer/random_uniform/minConst*!
_class
loc:@v/dense/kernel*
valueB
 *b§ž*
dtype0*
_output_shapes
: 

-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *b§>*
dtype0*
_output_shapes
: 
ë
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@v/dense/kernel*
seed2V*
dtype0*
_output_shapes

: *

seed 
Ö
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
č
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
Ú
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
Ľ
v/dense/kernel
VariableV2*
_output_shapes

: *
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
: *
dtype0
Ď
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

v/dense/bias/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB *    *
dtype0

v/dense/bias
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
ş
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
q
v/dense/bias/readIdentityv/dense/bias*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC
U
v/dense/EluEluv/dense/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
§
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB"       

/v/dense_1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *JQÚž*
dtype0*
_output_shapes
: 

/v/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *JQÚ>
ń
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

: *

seed *
T0*#
_class
loc:@v/dense_1/kernel*
seed2g*
dtype0
Ţ
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
đ
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: *
T0
â
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
Š
v/dense_1/kernel
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
×
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

v/dense_1/kernel/readIdentityv/dense_1/kernel*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 

 v/dense_1/bias/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:

v/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:
Â
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
w
v/dense_1/bias/readIdentityv/dense_1/bias*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias

v/dense_1/MatMulMatMulv/dense/Eluv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 

v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
	v/SqueezeSqueezev/dense_1/BiasAdd*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims

O
mulMulpi/SumPlaceholder_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
V
MeanMeanmulConst*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
1
NegNegMean*
T0*
_output_shapes
: 
R
subSubPlaceholder_3	v/Squeeze*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
D
powPowsubpow/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Z
Mean_1MeanpowConst_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Q
sub_1SubPlaceholder_4pi/Sum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
\
Mean_2Meansub_1Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
B
Neg_1Negpi/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
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

gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
\
gradients/Mean_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
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

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0

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

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

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

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
^
gradients/mul_grad/ShapeShapepi/Sum*
_output_shapes
:*
T0*
out_type0
g
gradients/mul_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
w
gradients/mul_grad/MulMulgradients/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
r
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ö
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
gradients/pi/Sum_grad/ShapeShapepi/mul_2*
out_type0*
_output_shapes
:*
T0

gradients/pi/Sum_grad/SizeConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
§
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
­
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 

gradients/pi/Sum_grad/Shape_1Const*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
valueB *
dtype0*
_output_shapes
: 

!gradients/pi/Sum_grad/range/startConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 

!gradients/pi/Sum_grad/range/deltaConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ţ
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*

Tidx0

 gradients/pi/Sum_grad/Fill/valueConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ć
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*

index_type0*
_output_shapes
: 

#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
N*
_output_shapes
:

gradients/pi/Sum_grad/Maximum/yConst*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0
Ă
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*
T0
ť
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
Ă
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ľ
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
`
gradients/pi/mul_2_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
g
gradients/pi/mul_2_grad/Shape_1Shapepi/add_3*
_output_shapes
:*
T0*
out_type0
Ă
-gradients/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_2_grad/Shapegradients/pi/mul_2_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
z
gradients/pi/mul_2_grad/MulMulgradients/pi/Sum_grad/Tilepi/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/pi/mul_2_grad/SumSumgradients/pi/mul_2_grad/Mul-gradients/pi/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

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
:˙˙˙˙˙˙˙˙˙
´
gradients/pi/mul_2_grad/Sum_1Sumgradients/pi/mul_2_grad/Mul_1/gradients/pi/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ź
!gradients/pi/mul_2_grad/Reshape_1Reshapegradients/pi/mul_2_grad/Sum_1gradients/pi/mul_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
(gradients/pi/mul_2_grad/tuple/group_depsNoOp ^gradients/pi/mul_2_grad/Reshape"^gradients/pi/mul_2_grad/Reshape_1
Ý
0gradients/pi/mul_2_grad/tuple/control_dependencyIdentitygradients/pi/mul_2_grad/Reshape)^gradients/pi/mul_2_grad/tuple/group_deps*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients/pi/mul_2_grad/Reshape
ô
2gradients/pi/mul_2_grad/tuple/control_dependency_1Identity!gradients/pi/mul_2_grad/Reshape_1)^gradients/pi/mul_2_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*4
_class*
(&loc:@gradients/pi/mul_2_grad/Reshape_1
e
gradients/pi/add_3_grad/ShapeShapepi/add_2*
out_type0*
_output_shapes
:*
T0
b
gradients/pi/add_3_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Ă
-gradients/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_3_grad/Shapegradients/pi/add_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
gradients/pi/add_3_grad/SumSum2gradients/pi/mul_2_grad/tuple/control_dependency_1-gradients/pi/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ś
gradients/pi/add_3_grad/ReshapeReshapegradients/pi/add_3_grad/Sumgradients/pi/add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
gradients/pi/add_3_grad/Sum_1Sum2gradients/pi/mul_2_grad/tuple/control_dependency_1/gradients/pi/add_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

!gradients/pi/add_3_grad/Reshape_1Reshapegradients/pi/add_3_grad/Sum_1gradients/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/pi/add_3_grad/tuple/group_depsNoOp ^gradients/pi/add_3_grad/Reshape"^gradients/pi/add_3_grad/Reshape_1
î
0gradients/pi/add_3_grad/tuple/control_dependencyIdentitygradients/pi/add_3_grad/Reshape)^gradients/pi/add_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_3_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
2gradients/pi/add_3_grad/tuple/control_dependency_1Identity!gradients/pi/add_3_grad/Reshape_1)^gradients/pi/add_3_grad/tuple/group_deps*
_output_shapes
: *
T0*4
_class*
(&loc:@gradients/pi/add_3_grad/Reshape_1
c
gradients/pi/add_2_grad/ShapeShapepi/pow*
out_type0*
_output_shapes
:*
T0
i
gradients/pi/add_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ă
-gradients/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_2_grad/Shapegradients/pi/add_2_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ă
gradients/pi/add_2_grad/SumSum0gradients/pi/add_3_grad/tuple/control_dependency-gradients/pi/add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ś
gradients/pi/add_2_grad/ReshapeReshapegradients/pi/add_2_grad/Sumgradients/pi/add_2_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
gradients/pi/add_2_grad/Sum_1Sum0gradients/pi/add_3_grad/tuple/control_dependency/gradients/pi/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

!gradients/pi/add_2_grad/Reshape_1Reshapegradients/pi/add_2_grad/Sum_1gradients/pi/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/add_2_grad/tuple/group_depsNoOp ^gradients/pi/add_2_grad/Reshape"^gradients/pi/add_2_grad/Reshape_1
î
0gradients/pi/add_2_grad/tuple/control_dependencyIdentitygradients/pi/add_2_grad/Reshape)^gradients/pi/add_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_2_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
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
gradients/pi/pow_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
˝
+gradients/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/pow_grad/Shapegradients/pi/pow_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/pi/pow_grad/mulMul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
gradients/pi/pow_grad/sub/yConst*
valueB
 *  ?*
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
pi/truedivgradients/pi/pow_grad/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/pi/pow_grad/mul_1Mulgradients/pi/pow_grad/mulgradients/pi/pow_grad/Pow*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
gradients/pi/pow_grad/SumSumgradients/pi/pow_grad/mul_1+gradients/pi/pow_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
 
gradients/pi/pow_grad/ReshapeReshapegradients/pi/pow_grad/Sumgradients/pi/pow_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
gradients/pi/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/pi/pow_grad/GreaterGreater
pi/truedivgradients/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
 *  ?*
dtype0*
_output_shapes
: 
š
gradients/pi/pow_grad/ones_likeFill%gradients/pi/pow_grad/ones_like/Shape%gradients/pi/pow_grad/ones_like/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0
¤
gradients/pi/pow_grad/SelectSelectgradients/pi/pow_grad/Greater
pi/truedivgradients/pi/pow_grad/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/pi/pow_grad/LogLoggradients/pi/pow_grad/Select*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
 gradients/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
gradients/pi/pow_grad/Select_1Selectgradients/pi/pow_grad/Greatergradients/pi/pow_grad/Log gradients/pi/pow_grad/zeros_like*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/pi/pow_grad/mul_2Mul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/pi/pow_grad/mul_3Mulgradients/pi/pow_grad/mul_2gradients/pi/pow_grad/Select_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/pi/pow_grad/Sum_1Sumgradients/pi/pow_grad/mul_3-gradients/pi/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/pi/pow_grad/Reshape_1Reshapegradients/pi/pow_grad/Sum_1gradients/pi/pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
p
&gradients/pi/pow_grad/tuple/group_depsNoOp^gradients/pi/pow_grad/Reshape ^gradients/pi/pow_grad/Reshape_1
ć
.gradients/pi/pow_grad/tuple/control_dependencyIdentitygradients/pi/pow_grad/Reshape'^gradients/pi/pow_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*0
_class&
$"loc:@gradients/pi/pow_grad/Reshape
Ű
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
gradients/pi/mul_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ă
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

gradients/pi/mul_1_grad/MulMul2gradients/pi/add_2_grad/tuple/control_dependency_1pi/log_std/read*
_output_shapes
:*
T0
Ź
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

gradients/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x2gradients/pi/add_2_grad/tuple/control_dependency_1*
_output_shapes
:*
T0
ś
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

!gradients/pi/mul_1_grad/Reshape_1Reshapegradients/pi/mul_1_grad/Sum_1gradients/pi/mul_1_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
v
(gradients/pi/mul_1_grad/tuple/group_depsNoOp ^gradients/pi/mul_1_grad/Reshape"^gradients/pi/mul_1_grad/Reshape_1
Ý
0gradients/pi/mul_1_grad/tuple/control_dependencyIdentitygradients/pi/mul_1_grad/Reshape)^gradients/pi/mul_1_grad/tuple/group_deps*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients/pi/mul_1_grad/Reshape
ç
2gradients/pi/mul_1_grad/tuple/control_dependency_1Identity!gradients/pi/mul_1_grad/Reshape_1)^gradients/pi/mul_1_grad/tuple/group_deps*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
_output_shapes
:*
T0
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
É
/gradients/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/truediv_grad/Shape!gradients/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

!gradients/pi/truediv_grad/RealDivRealDiv.gradients/pi/pow_grad/tuple/control_dependencypi/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
gradients/pi/truediv_grad/SumSum!gradients/pi/truediv_grad/RealDiv/gradients/pi/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ź
!gradients/pi/truediv_grad/ReshapeReshapegradients/pi/truediv_grad/Sumgradients/pi/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

#gradients/pi/truediv_grad/RealDiv_1RealDivgradients/pi/truediv_grad/Negpi/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

#gradients/pi/truediv_grad/RealDiv_2RealDiv#gradients/pi/truediv_grad/RealDiv_1pi/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
gradients/pi/truediv_grad/mulMul.gradients/pi/pow_grad/tuple/control_dependency#gradients/pi/truediv_grad/RealDiv_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¸
gradients/pi/truediv_grad/Sum_1Sumgradients/pi/truediv_grad/mul1gradients/pi/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ľ
#gradients/pi/truediv_grad/Reshape_1Reshapegradients/pi/truediv_grad/Sum_1!gradients/pi/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients/pi/truediv_grad/tuple/group_depsNoOp"^gradients/pi/truediv_grad/Reshape$^gradients/pi/truediv_grad/Reshape_1
ö
2gradients/pi/truediv_grad/tuple/control_dependencyIdentity!gradients/pi/truediv_grad/Reshape+^gradients/pi/truediv_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/truediv_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
4gradients/pi/truediv_grad/tuple/control_dependency_1Identity#gradients/pi/truediv_grad/Reshape_1+^gradients/pi/truediv_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_grad/Reshape_1*
_output_shapes
:
h
gradients/pi/sub_grad/ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
o
gradients/pi/sub_grad/Shape_1Shapepi/dense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
˝
+gradients/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_grad/Shapegradients/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Á
gradients/pi/sub_grad/SumSum2gradients/pi/truediv_grad/tuple/control_dependency+gradients/pi/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
 
gradients/pi/sub_grad/ReshapeReshapegradients/pi/sub_grad/Sumgradients/pi/sub_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
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
¤
gradients/pi/sub_grad/Reshape_1Reshapegradients/pi/sub_grad/Neggradients/pi/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
&gradients/pi/sub_grad/tuple/group_depsNoOp^gradients/pi/sub_grad/Reshape ^gradients/pi/sub_grad/Reshape_1
ć
.gradients/pi/sub_grad/tuple/control_dependencyIdentitygradients/pi/sub_grad/Reshape'^gradients/pi/sub_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/sub_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
0gradients/pi/sub_grad/tuple/control_dependency_1Identitygradients/pi/sub_grad/Reshape_1'^gradients/pi/sub_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
gradients/pi/add_1_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
b
gradients/pi/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Ă
-gradients/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_1_grad/Shapegradients/pi/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
É
gradients/pi/add_1_grad/SumSum4gradients/pi/truediv_grad/tuple/control_dependency_1-gradients/pi/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/pi/add_1_grad/ReshapeReshapegradients/pi/add_1_grad/Sumgradients/pi/add_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
É
gradients/pi/add_1_grad/Sum_1Sum4gradients/pi/truediv_grad/tuple/control_dependency_1/gradients/pi/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 

!gradients/pi/add_1_grad/Reshape_1Reshapegradients/pi/add_1_grad/Sum_1gradients/pi/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/pi/add_1_grad/tuple/group_depsNoOp ^gradients/pi/add_1_grad/Reshape"^gradients/pi/add_1_grad/Reshape_1
á
0gradients/pi/add_1_grad/tuple/control_dependencyIdentitygradients/pi/add_1_grad/Reshape)^gradients/pi/add_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_1_grad/Reshape*
_output_shapes
:
ă
2gradients/pi/add_1_grad/tuple/control_dependency_1Identity!gradients/pi/add_1_grad/Reshape_1)^gradients/pi/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*4
_class*
(&loc:@gradients/pi/add_1_grad/Reshape_1
Ş
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients/pi/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC*
_output_shapes
:

2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad1^gradients/pi/sub_grad/tuple/control_dependency_1

:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity0gradients/pi/sub_grad/tuple/control_dependency_13^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1

<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

gradients/pi/Exp_1_grad/mulMul0gradients/pi/add_1_grad/tuple/control_dependencypi/Exp_1*
T0*
_output_shapes
:
Ý
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b(*
T0
Ě
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Elu:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: *
transpose_b( 

1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1

9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: 
Ë
gradients/AddNAddN2gradients/pi/mul_1_grad/tuple/control_dependency_1gradients/pi/Exp_1_grad/mul*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
N*
_output_shapes
:
Š
#gradients/pi/dense/Elu_grad/EluGradEluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Elu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/pi/dense/Elu_grad/EluGrad*
data_formatNHWC*
_output_shapes
: *
T0

0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad$^gradients/pi/dense/Elu_grad/EluGrad

8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity#gradients/pi/dense/Elu_grad/EluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/dense/Elu_grad/EluGrad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
×
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
Ç
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

: 

/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1

7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes

: 
`
Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_1/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes
: *
T0*
Tshape0
b
Reshape_2/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_3/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_4/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
h
	Reshape_4Reshapegradients/AddNReshape_4/shape*
Tshape0*
_output_shapes
:*
T0
M
concat/axisConst*
_output_shapes
: *
value	B : *
dtype0

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4concat/axis*
T0*
N*
_output_shapes	
:¨*

Tidx0
g
PyFuncPyFuncconcat*
Tin
2*
_output_shapes	
:¨*
Tout
2*
token
pyfunc_0
d
Const_4Const*)
value B"                *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

splitSplitVPyFuncConst_4split/split_dim*
T0*

Tlen0*
	num_split*4
_output_shapes"
 :: :::
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
	Reshape_6Reshapesplit:1Reshape_6/shape*
T0*
Tshape0*
_output_shapes
: 
`
Reshape_7/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
e
	Reshape_7Reshapesplit:2Reshape_7/shape*
T0*
Tshape0*
_output_shapes

: 
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
Reshape_9/shapeConst*
dtype0*
_output_shapes
:*
valueB:
a
	Reshape_9Reshapesplit:4Reshape_9/shape*
T0*
Tshape0*
_output_shapes
:
¤
+pi/dense/kernel/MomentumW/Initializer/zerosConst*
valueB *    *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

: 
ą
pi/dense/kernel/MomentumW
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
č
 pi/dense/kernel/MomentumW/AssignAssignpi/dense/kernel/MomentumW+pi/dense/kernel/MomentumW/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0

pi/dense/kernel/MomentumW/readIdentitypi/dense/kernel/MomentumW*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 

)pi/dense/bias/MomentumW/Initializer/zerosConst*
_output_shapes
: *
valueB *    * 
_class
loc:@pi/dense/bias*
dtype0
Ľ
pi/dense/bias/MomentumW
VariableV2*
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: 
Ü
pi/dense/bias/MomentumW/AssignAssignpi/dense/bias/MomentumW)pi/dense/bias/MomentumW/Initializer/zeros*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(

pi/dense/bias/MomentumW/readIdentitypi/dense/bias/MomentumW* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
T0
¨
-pi/dense_1/kernel/MomentumW/Initializer/zerosConst*
valueB *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

: 
ľ
pi/dense_1/kernel/MomentumW
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
đ
"pi/dense_1/kernel/MomentumW/AssignAssignpi/dense_1/kernel/MomentumW-pi/dense_1/kernel/MomentumW/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 

 pi/dense_1/kernel/MomentumW/readIdentitypi/dense_1/kernel/MomentumW*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 

+pi/dense_1/bias/MomentumW/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
Š
pi/dense_1/bias/MomentumW
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:
ä
 pi/dense_1/bias/MomentumW/AssignAssignpi/dense_1/bias/MomentumW+pi/dense_1/bias/MomentumW/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:

pi/dense_1/bias/MomentumW/readIdentitypi/dense_1/bias/MomentumW*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_1/bias

&pi/log_std/MomentumW/Initializer/zerosConst*
valueB*    *
_class
loc:@pi/log_std*
dtype0*
_output_shapes
:

pi/log_std/MomentumW
VariableV2*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std*
	container *
shape:*
dtype0
Đ
pi/log_std/MomentumW/AssignAssignpi/log_std/MomentumW&pi/log_std/MomentumW/Initializer/zeros*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

pi/log_std/MomentumW/readIdentitypi/log_std/MomentumW*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
[
MomentumW/weight_decayConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
\
MomentumW/learning_rateConst*
valueB
 *RI9*
dtype0*
_output_shapes
: 
W
MomentumW/momentumConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 

&MomentumW/update_pi/dense/kernel/mul/xConst*"
_class
loc:@pi/dense/kernel*
valueB
 *˝75*
dtype0*
_output_shapes
: 
ś
$MomentumW/update_pi/dense/kernel/mulMul&MomentumW/update_pi/dense/kernel/mul/xpi/dense/kernel/read*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel
Î
*MomentumW/update_pi/dense/kernel/AssignSub	AssignSubpi/dense/kernel$MomentumW/update_pi/dense/kernel/mul*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
Ä
.MomentumW/update_pi/dense/kernel/ApplyMomentumApplyMomentumpi/dense/kernelpi/dense/kernel/MomentumWMomentumW/learning_rate	Reshape_5MomentumW/momentum+^MomentumW/update_pi/dense/kernel/AssignSub*
use_nesterov( *
_output_shapes

: *
use_locking( *
T0*"
_class
loc:@pi/dense/kernel

$MomentumW/update_pi/dense/bias/mul/xConst* 
_class
loc:@pi/dense/bias*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ş
"MomentumW/update_pi/dense/bias/mulMul$MomentumW/update_pi/dense/bias/mul/xpi/dense/bias/read* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
T0
Â
(MomentumW/update_pi/dense/bias/AssignSub	AssignSubpi/dense/bias"MomentumW/update_pi/dense/bias/mul*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
ś
,MomentumW/update_pi/dense/bias/ApplyMomentumApplyMomentumpi/dense/biaspi/dense/bias/MomentumWMomentumW/learning_rate	Reshape_6MomentumW/momentum)^MomentumW/update_pi/dense/bias/AssignSub*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@pi/dense/bias

(MomentumW/update_pi/dense_1/kernel/mul/xConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *˝75*
dtype0*
_output_shapes
: 
ž
&MomentumW/update_pi/dense_1/kernel/mulMul(MomentumW/update_pi/dense_1/kernel/mul/xpi/dense_1/kernel/read*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
Ö
,MomentumW/update_pi/dense_1/kernel/AssignSub	AssignSubpi/dense_1/kernel&MomentumW/update_pi/dense_1/kernel/mul*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
Î
0MomentumW/update_pi/dense_1/kernel/ApplyMomentumApplyMomentumpi/dense_1/kernelpi/dense_1/kernel/MomentumWMomentumW/learning_rate	Reshape_7MomentumW/momentum-^MomentumW/update_pi/dense_1/kernel/AssignSub*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( *
_output_shapes

: *
use_locking( *
T0

&MomentumW/update_pi/dense_1/bias/mul/xConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *˝75*
dtype0*
_output_shapes
: 
˛
$MomentumW/update_pi/dense_1/bias/mulMul&MomentumW/update_pi/dense_1/bias/mul/xpi/dense_1/bias/read*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
Ę
*MomentumW/update_pi/dense_1/bias/AssignSub	AssignSubpi/dense_1/bias$MomentumW/update_pi/dense_1/bias/mul*
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias
Ŕ
.MomentumW/update_pi/dense_1/bias/ApplyMomentumApplyMomentumpi/dense_1/biaspi/dense_1/bias/MomentumWMomentumW/learning_rate	Reshape_8MomentumW/momentum+^MomentumW/update_pi/dense_1/bias/AssignSub*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( *
_output_shapes
:

!MomentumW/update_pi/log_std/mul/xConst*
_class
loc:@pi/log_std*
valueB
 *˝75*
dtype0*
_output_shapes
: 

MomentumW/update_pi/log_std/mulMul!MomentumW/update_pi/log_std/mul/xpi/log_std/read*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
ś
%MomentumW/update_pi/log_std/AssignSub	AssignSub
pi/log_stdMomentumW/update_pi/log_std/mul*
use_locking( *
T0*
_class
loc:@pi/log_std*
_output_shapes
:
§
)MomentumW/update_pi/log_std/ApplyMomentumApplyMomentum
pi/log_stdpi/log_std/MomentumWMomentumW/learning_rate	Reshape_9MomentumW/momentum&^MomentumW/update_pi/log_std/AssignSub*
use_locking( *
T0*
_class
loc:@pi/log_std*
use_nesterov( *
_output_shapes
:

	MomentumWNoOp-^MomentumW/update_pi/dense/bias/ApplyMomentum/^MomentumW/update_pi/dense/kernel/ApplyMomentum/^MomentumW/update_pi/dense_1/bias/ApplyMomentum1^MomentumW/update_pi/dense_1/kernel/ApplyMomentum*^MomentumW/update_pi/log_std/ApplyMomentum
o
Reshape_10/shapeConst
^MomentumW*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_10Reshapepi/dense/kernel/readReshape_10/shape*
_output_shapes	
:*
T0*
Tshape0
o
Reshape_11/shapeConst
^MomentumW*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
n

Reshape_11Reshapepi/dense/bias/readReshape_11/shape*
T0*
Tshape0*
_output_shapes
: 
o
Reshape_12/shapeConst
^MomentumW*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_12Reshapepi/dense_1/kernel/readReshape_12/shape*
Tshape0*
_output_shapes	
:*
T0
o
Reshape_13/shapeConst
^MomentumW*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
p

Reshape_13Reshapepi/dense_1/bias/readReshape_13/shape*
Tshape0*
_output_shapes
:*
T0
o
Reshape_14/shapeConst
^MomentumW*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
k

Reshape_14Reshapepi/log_std/readReshape_14/shape*
T0*
Tshape0*
_output_shapes
:
[
concat_1/axisConst
^MomentumW*
dtype0*
_output_shapes
: *
value	B : 

concat_1ConcatV2
Reshape_10
Reshape_11
Reshape_12
Reshape_13
Reshape_14concat_1/axis*
T0*
N*
_output_shapes	
:¨*

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
p
Const_5Const
^MomentumW*)
value B"                *
dtype0*
_output_shapes
:
_
split_1/split_dimConst
^MomentumW*
value	B : *
dtype0*
_output_shapes
: 

split_1SplitVPyFunc_1Const_5split_1/split_dim*
T0*

Tlen0*
	num_split*(
_output_shapes
:::::
m
Reshape_15/shapeConst
^MomentumW*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_15Reshapesplit_1Reshape_15/shape*
T0*
Tshape0*
_output_shapes

: 
f
Reshape_16/shapeConst
^MomentumW*
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
m
Reshape_17/shapeConst
^MomentumW*
dtype0*
_output_shapes
:*
valueB"       
i

Reshape_17Reshape	split_1:2Reshape_17/shape*
Tshape0*
_output_shapes

: *
T0
f
Reshape_18/shapeConst
^MomentumW*
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
f
Reshape_19/shapeConst
^MomentumW*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_19Reshape	split_1:4Reshape_19/shape*
T0*
Tshape0*
_output_shapes
:
Ł
AssignAssignpi/dense/kernel
Reshape_15*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(

Assign_1Assignpi/dense/bias
Reshape_16*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Š
Assign_2Assignpi/dense_1/kernel
Reshape_17*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Ą
Assign_3Assignpi/dense_1/bias
Reshape_18*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(

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
S

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4
^MomentumW
-
group_deps_1NoOp
^MomentumW^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:

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
¤
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
gradients_1/Mean_1_grad/Shape_1Shapepow*
_output_shapes
:*
T0*
out_type0
b
gradients_1/Mean_1_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
g
gradients_1/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
˘
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
i
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ś
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
c
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0

 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
_output_shapes
: *
T0

gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 

gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
ş
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
gradients_1/pow_grad/sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
T0*
_output_shapes
: 
l
gradients_1/pow_grad/PowPowsubgradients_1/pow_grad/sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
§
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
:˙˙˙˙˙˙˙˙˙*
T0
g
$gradients_1/pow_grad/ones_like/ShapeShapesub*
T0*
out_type0*
_output_shapes
:
i
$gradients_1/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
˛
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersubgradients_1/pow_grad/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
gradients_1/pow_grad/zeros_like	ZerosLikesub*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ž
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ť
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
Ţ
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
×
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1*
_output_shapes
: 
g
gradients_1/sub_grad/ShapeShapePlaceholder_3*
_output_shapes
:*
T0*
out_type0
e
gradients_1/sub_grad/Shape_1Shape	v/Squeeze*
_output_shapes
:*
T0*
out_type0
ş
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ş
gradients_1/sub_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
gradients_1/sub_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
^
gradients_1/sub_grad/NegNeggradients_1/sub_grad/Sum_1*
_output_shapes
:*
T0

gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
Ţ
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
Ŕ
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad

;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape

=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ţ
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b(*
T0
Í
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Elu;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: *
transpose_b( 

2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1

:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul

<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

: *
T0*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1
Ş
$gradients_1/v/dense/Elu_grad/EluGradEluGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Elu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients_1/v/dense/Elu_grad/EluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad%^gradients_1/v/dense/Elu_grad/EluGrad

9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients_1/v/dense/Elu_grad/EluGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*7
_class-
+)loc:@gradients_1/v/dense/Elu_grad/EluGrad

;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Ř
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
É
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

: *
transpose_b( *
T0

0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1

8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul

:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
_output_shapes

: *
T0*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1
c
Reshape_20/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_20Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_20/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_21/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_21Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_21/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_22/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_22Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_22/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_23/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙


Reshape_23Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_23/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_2/axisConst*
_output_shapes
: *
value	B : *
dtype0

concat_2ConcatV2
Reshape_20
Reshape_21
Reshape_22
Reshape_23concat_2/axis*
T0*
N*
_output_shapes	
:Á*

Tidx0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:Á*
Tout
2*
token
pyfunc_2
`
Const_6Const*
dtype0*
_output_shapes
:*%
valueB"              
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

split_2SplitVPyFunc_2Const_6split_2/split_dim*
T0*

Tlen0*
	num_split*-
_output_shapes
:: : :
a
Reshape_24/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
g

Reshape_24Reshapesplit_2Reshape_24/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_25/shapeConst*
dtype0*
_output_shapes
:*
valueB: 
e

Reshape_25Reshape	split_2:1Reshape_25/shape*
Tshape0*
_output_shapes
: *
T0
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

Reshape_27Reshape	split_2:3Reshape_27/shape*
T0*
Tshape0*
_output_shapes
:
˘
*v/dense/kernel/MomentumW/Initializer/zerosConst*
valueB *    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes

: 
Ż
v/dense/kernel/MomentumW
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
ä
v/dense/kernel/MomentumW/AssignAssignv/dense/kernel/MomentumW*v/dense/kernel/MomentumW/Initializer/zeros*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0

v/dense/kernel/MomentumW/readIdentityv/dense/kernel/MomentumW*!
_class
loc:@v/dense/kernel*
_output_shapes

: *
T0

(v/dense/bias/MomentumW/Initializer/zerosConst*
valueB *    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
Ł
v/dense/bias/MomentumW
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Ř
v/dense/bias/MomentumW/AssignAssignv/dense/bias/MomentumW(v/dense/bias/MomentumW/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias

v/dense/bias/MomentumW/readIdentityv/dense/bias/MomentumW*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
Ś
,v/dense_1/kernel/MomentumW/Initializer/zerosConst*
_output_shapes

: *
valueB *    *#
_class
loc:@v/dense_1/kernel*
dtype0
ł
v/dense_1/kernel/MomentumW
VariableV2*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
ě
!v/dense_1/kernel/MomentumW/AssignAssignv/dense_1/kernel/MomentumW,v/dense_1/kernel/MomentumW/Initializer/zeros*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(

v/dense_1/kernel/MomentumW/readIdentityv/dense_1/kernel/MomentumW*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel

*v/dense_1/bias/MomentumW/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:
§
v/dense_1/bias/MomentumW
VariableV2*!
_class
loc:@v/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
ŕ
v/dense_1/bias/MomentumW/AssignAssignv/dense_1/bias/MomentumW*v/dense_1/bias/MomentumW/Initializer/zeros*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(

v/dense_1/bias/MomentumW/readIdentityv/dense_1/bias/MomentumW*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
]
MomentumW_1/weight_decayConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
^
MomentumW_1/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Y
MomentumW_1/momentumConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 

'MomentumW_1/update_v/dense/kernel/mul/xConst*
dtype0*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
valueB
 *˝75
ś
%MomentumW_1/update_v/dense/kernel/mulMul'MomentumW_1/update_v/dense/kernel/mul/xv/dense/kernel/read*
_output_shapes

: *
T0*!
_class
loc:@v/dense/kernel
Î
+MomentumW_1/update_v/dense/kernel/AssignSub	AssignSubv/dense/kernel%MomentumW_1/update_v/dense/kernel/mul*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
Č
/MomentumW_1/update_v/dense/kernel/ApplyMomentumApplyMomentumv/dense/kernelv/dense/kernel/MomentumWMomentumW_1/learning_rate
Reshape_24MomentumW_1/momentum,^MomentumW_1/update_v/dense/kernel/AssignSub*
use_nesterov( *
_output_shapes

: *
use_locking( *
T0*!
_class
loc:@v/dense/kernel

%MomentumW_1/update_v/dense/bias/mul/xConst*
_class
loc:@v/dense/bias*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ş
#MomentumW_1/update_v/dense/bias/mulMul%MomentumW_1/update_v/dense/bias/mul/xv/dense/bias/read*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
Â
)MomentumW_1/update_v/dense/bias/AssignSub	AssignSubv/dense/bias#MomentumW_1/update_v/dense/bias/mul*
use_locking( *
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
ş
-MomentumW_1/update_v/dense/bias/ApplyMomentumApplyMomentumv/dense/biasv/dense/bias/MomentumWMomentumW_1/learning_rate
Reshape_25MomentumW_1/momentum*^MomentumW_1/update_v/dense/bias/AssignSub*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias*
use_nesterov( 

)MomentumW_1/update_v/dense_1/kernel/mul/xConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *˝75*
dtype0*
_output_shapes
: 
ž
'MomentumW_1/update_v/dense_1/kernel/mulMul)MomentumW_1/update_v/dense_1/kernel/mul/xv/dense_1/kernel/read*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
Ö
-MomentumW_1/update_v/dense_1/kernel/AssignSub	AssignSubv/dense_1/kernel'MomentumW_1/update_v/dense_1/kernel/mul*
_output_shapes

: *
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel
Ň
1MomentumW_1/update_v/dense_1/kernel/ApplyMomentumApplyMomentumv/dense_1/kernelv/dense_1/kernel/MomentumWMomentumW_1/learning_rate
Reshape_26MomentumW_1/momentum.^MomentumW_1/update_v/dense_1/kernel/AssignSub*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
use_nesterov( *
_output_shapes

: 

'MomentumW_1/update_v/dense_1/bias/mul/xConst*
dtype0*
_output_shapes
: *!
_class
loc:@v/dense_1/bias*
valueB
 *˝75
˛
%MomentumW_1/update_v/dense_1/bias/mulMul'MomentumW_1/update_v/dense_1/bias/mul/xv/dense_1/bias/read*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
Ę
+MomentumW_1/update_v/dense_1/bias/AssignSub	AssignSubv/dense_1/bias%MomentumW_1/update_v/dense_1/bias/mul*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:*
use_locking( 
Ä
/MomentumW_1/update_v/dense_1/bias/ApplyMomentumApplyMomentumv/dense_1/biasv/dense_1/bias/MomentumWMomentumW_1/learning_rate
Reshape_27MomentumW_1/momentum,^MomentumW_1/update_v/dense_1/bias/AssignSub*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias*
use_nesterov( *
_output_shapes
:
Ű
MomentumW_1NoOp.^MomentumW_1/update_v/dense/bias/ApplyMomentum0^MomentumW_1/update_v/dense/kernel/ApplyMomentum0^MomentumW_1/update_v/dense_1/bias/ApplyMomentum2^MomentumW_1/update_v/dense_1/kernel/ApplyMomentum
q
Reshape_28/shapeConst^MomentumW_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_28Reshapev/dense/kernel/readReshape_28/shape*
Tshape0*
_output_shapes	
:*
T0
q
Reshape_29/shapeConst^MomentumW_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_29Reshapev/dense/bias/readReshape_29/shape*
_output_shapes
: *
T0*
Tshape0
q
Reshape_30/shapeConst^MomentumW_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_30Reshapev/dense_1/kernel/readReshape_30/shape*
T0*
Tshape0*
_output_shapes
: 
q
Reshape_31/shapeConst^MomentumW_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_31Reshapev/dense_1/bias/readReshape_31/shape*
Tshape0*
_output_shapes
:*
T0
]
concat_3/axisConst^MomentumW_1*
value	B : *
dtype0*
_output_shapes
: 

concat_3ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31concat_3/axis*
T0*
N*
_output_shapes	
:Á*

Tidx0
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
n
Const_7Const^MomentumW_1*
dtype0*
_output_shapes
:*%
valueB"              
a
split_3/split_dimConst^MomentumW_1*
value	B : *
dtype0*
_output_shapes
: 

split_3SplitVPyFunc_3Const_7split_3/split_dim*
T0*

Tlen0*
	num_split*$
_output_shapes
::::
o
Reshape_32/shapeConst^MomentumW_1*
_output_shapes
:*
valueB"       *
dtype0
g

Reshape_32Reshapesplit_3Reshape_32/shape*
T0*
Tshape0*
_output_shapes

: 
h
Reshape_33/shapeConst^MomentumW_1*
_output_shapes
:*
valueB: *
dtype0
e

Reshape_33Reshape	split_3:1Reshape_33/shape*
Tshape0*
_output_shapes
: *
T0
o
Reshape_34/shapeConst^MomentumW_1*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_34Reshape	split_3:2Reshape_34/shape*
T0*
Tshape0*
_output_shapes

: 
h
Reshape_35/shapeConst^MomentumW_1*
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
Ł
Assign_5Assignv/dense/kernel
Reshape_32*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 

Assign_6Assignv/dense/bias
Reshape_33*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
§
Assign_7Assignv/dense_1/kernel
Reshape_34*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

Assign_8Assignv/dense_1/bias
Reshape_35*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
N
group_deps_2NoOp	^Assign_5	^Assign_6	^Assign_7	^Assign_8^MomentumW_1
1
group_deps_3NoOp^MomentumW_1^group_deps_2

initNoOp^pi/dense/bias/Assign^pi/dense/bias/MomentumW/Assign^pi/dense/kernel/Assign!^pi/dense/kernel/MomentumW/Assign^pi/dense_1/bias/Assign!^pi/dense_1/bias/MomentumW/Assign^pi/dense_1/kernel/Assign#^pi/dense_1/kernel/MomentumW/Assign^pi/log_std/Assign^pi/log_std/MomentumW/Assign^v/dense/bias/Assign^v/dense/bias/MomentumW/Assign^v/dense/kernel/Assign ^v/dense/kernel/MomentumW/Assign^v/dense_1/bias/Assign ^v/dense_1/bias/MomentumW/Assign^v/dense_1/kernel/Assign"^v/dense_1/kernel/MomentumW/Assign
c
Reshape_36/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
q

Reshape_36Reshapepi/dense/kernel/readReshape_36/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_37/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
n

Reshape_37Reshapepi/dense/bias/readReshape_37/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_38/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_38Reshapepi/dense_1/kernel/readReshape_38/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_39/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_39Reshapepi/dense_1/bias/readReshape_39/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_40/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
k

Reshape_40Reshapepi/log_std/readReshape_40/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_41/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_41Reshapev/dense/kernel/readReshape_41/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_42/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
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
˙˙˙˙˙˙˙˙˙*
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
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_44Reshapev/dense_1/bias/readReshape_44/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_45/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
{

Reshape_45Reshapepi/dense/kernel/MomentumW/readReshape_45/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_46/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x

Reshape_46Reshapepi/dense/bias/MomentumW/readReshape_46/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_47/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
}

Reshape_47Reshape pi/dense_1/kernel/MomentumW/readReshape_47/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_48/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
z

Reshape_48Reshapepi/dense_1/bias/MomentumW/readReshape_48/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_49/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
u

Reshape_49Reshapepi/log_std/MomentumW/readReshape_49/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_50/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z

Reshape_50Reshapev/dense/kernel/MomentumW/readReshape_50/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_51/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w

Reshape_51Reshapev/dense/bias/MomentumW/readReshape_51/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_52/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
{

Reshape_52Reshapev/dense_1/kernel/MomentumW/readReshape_52/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_53/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y

Reshape_53Reshapev/dense_1/bias/MomentumW/readReshape_53/shape*
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
ś
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
Reshape_53concat_4/axis*
N*
_output_shapes	
:Ň*

Tidx0*
T0
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

Const_8Const*]
valueTBR"H                                                            *
dtype0*
_output_shapes
:
S
split_4/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
ť
split_4SplitVPyFunc_4Const_8split_4/split_dim*
T0*

Tlen0*
	num_split*\
_output_shapesJ
H::::::::::::::::::
a
Reshape_54/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
g

Reshape_54Reshapesplit_4Reshape_54/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_55/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_55Reshape	split_4:1Reshape_55/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_56/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_56Reshape	split_4:2Reshape_56/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_57/shapeConst*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_57Reshape	split_4:3Reshape_57/shape*
_output_shapes
:*
T0*
Tshape0
Z
Reshape_58/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_58Reshape	split_4:4Reshape_58/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_59/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_59Reshape	split_4:5Reshape_59/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_60/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_60Reshape	split_4:6Reshape_60/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_61/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_61Reshape	split_4:7Reshape_61/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_62/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_62Reshape	split_4:8Reshape_62/shape*
Tshape0*
_output_shapes
:*
T0
a
Reshape_63/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_63Reshape	split_4:9Reshape_63/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_64/shapeConst*
_output_shapes
:*
valueB: *
dtype0
f

Reshape_64Reshape
split_4:10Reshape_64/shape*
Tshape0*
_output_shapes
: *
T0
a
Reshape_65/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
j

Reshape_65Reshape
split_4:11Reshape_65/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_66/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_66Reshape
split_4:12Reshape_66/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_67/shapeConst*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_67Reshape
split_4:13Reshape_67/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_68/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
j

Reshape_68Reshape
split_4:14Reshape_68/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_69/shapeConst*
_output_shapes
:*
valueB: *
dtype0
f

Reshape_69Reshape
split_4:15Reshape_69/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_70/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_70Reshape
split_4:16Reshape_70/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_71/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_71Reshape
split_4:17Reshape_71/shape*
T0*
Tshape0*
_output_shapes
:
Ľ
Assign_9Assignpi/dense/kernel
Reshape_54*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0

	Assign_10Assignpi/dense/bias
Reshape_55* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ş
	Assign_11Assignpi/dense_1/kernel
Reshape_56*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
˘
	Assign_12Assignpi/dense_1/bias
Reshape_57*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:

	Assign_13Assign
pi/log_std
Reshape_58*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
¤
	Assign_14Assignv/dense/kernel
Reshape_59*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 

	Assign_15Assignv/dense/bias
Reshape_60*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
¨
	Assign_16Assignv/dense_1/kernel
Reshape_61*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
 
	Assign_17Assignv/dense_1/bias
Reshape_62*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
°
	Assign_18Assignpi/dense/kernel/MomentumW
Reshape_63*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
¨
	Assign_19Assignpi/dense/bias/MomentumW
Reshape_64*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
´
	Assign_20Assignpi/dense_1/kernel/MomentumW
Reshape_65*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ź
	Assign_21Assignpi/dense_1/bias/MomentumW
Reshape_66*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
˘
	Assign_22Assignpi/log_std/MomentumW
Reshape_67*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ž
	Assign_23Assignv/dense/kernel/MomentumW
Reshape_68*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
Ś
	Assign_24Assignv/dense/bias/MomentumW
Reshape_69*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
˛
	Assign_25Assignv/dense_1/kernel/MomentumW
Reshape_70*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Ş
	Assign_26Assignv/dense_1/bias/MomentumW
Reshape_71*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
ë
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
^Assign_26	^Assign_9
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
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_ab2034c168db4707bcba10a172268f42/part*
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
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ü
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBpi/dense/biasBpi/dense/bias/MomentumWBpi/dense/kernelBpi/dense/kernel/MomentumWBpi/dense_1/biasBpi/dense_1/bias/MomentumWBpi/dense_1/kernelBpi/dense_1/kernel/MomentumWB
pi/log_stdBpi/log_std/MomentumWBv/dense/biasBv/dense/bias/MomentumWBv/dense/kernelBv/dense/kernel/MomentumWBv/dense_1/biasBv/dense_1/bias/MomentumWBv/dense_1/kernelBv/dense_1/kernel/MomentumW

save/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
˙
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/MomentumWpi/dense/kernelpi/dense/kernel/MomentumWpi/dense_1/biaspi/dense_1/bias/MomentumWpi/dense_1/kernelpi/dense_1/kernel/MomentumW
pi/log_stdpi/log_std/MomentumWv/dense/biasv/dense/bias/MomentumWv/dense/kernelv/dense/kernel/MomentumWv/dense_1/biasv/dense_1/bias/MomentumWv/dense_1/kernelv/dense_1/kernel/MomentumW* 
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

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
ß
save/RestoreV2/tensor_namesConst*
valueBBpi/dense/biasBpi/dense/bias/MomentumWBpi/dense/kernelBpi/dense/kernel/MomentumWBpi/dense_1/biasBpi/dense_1/bias/MomentumWBpi/dense_1/kernelBpi/dense_1/kernel/MomentumWB
pi/log_stdBpi/log_std/MomentumWBv/dense/biasBv/dense/bias/MomentumWBv/dense/kernelBv/dense/kernel/MomentumWBv/dense_1/biasBv/dense_1/bias/MomentumWBv/dense_1/kernelBv/dense_1/kernel/MomentumW*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ĺ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
¤
save/AssignAssignpi/dense/biassave/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
˛
save/Assign_1Assignpi/dense/bias/MomentumWsave/RestoreV2:1*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
°
save/Assign_2Assignpi/dense/kernelsave/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
ş
save/Assign_3Assignpi/dense/kernel/MomentumWsave/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
Ź
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
ś
save/Assign_5Assignpi/dense_1/bias/MomentumWsave/RestoreV2:5*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
´
save/Assign_6Assignpi/dense_1/kernelsave/RestoreV2:6*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
ž
save/Assign_7Assignpi/dense_1/kernel/MomentumWsave/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
˘
save/Assign_8Assign
pi/log_stdsave/RestoreV2:8*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
Ź
save/Assign_9Assignpi/log_std/MomentumWsave/RestoreV2:9*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
¨
save/Assign_10Assignv/dense/biassave/RestoreV2:10*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
˛
save/Assign_11Assignv/dense/bias/MomentumWsave/RestoreV2:11*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
°
save/Assign_12Assignv/dense/kernelsave/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
ş
save/Assign_13Assignv/dense/kernel/MomentumWsave/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
Ź
save/Assign_14Assignv/dense_1/biassave/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ś
save/Assign_15Assignv/dense_1/bias/MomentumWsave/RestoreV2:15*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
´
save/Assign_16Assignv/dense_1/kernelsave/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
ž
save/Assign_17Assignv/dense_1/kernel/MomentumWsave/RestoreV2:17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
Ŕ
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
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

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_4c56c657a793498dad55bd06ef3e85df/part*
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

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ţ
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBpi/dense/biasBpi/dense/bias/MomentumWBpi/dense/kernelBpi/dense/kernel/MomentumWBpi/dense_1/biasBpi/dense_1/bias/MomentumWBpi/dense_1/kernelBpi/dense_1/kernel/MomentumWB
pi/log_stdBpi/log_std/MomentumWBv/dense/biasBv/dense/bias/MomentumWBv/dense/kernelBv/dense/kernel/MomentumWBv/dense_1/biasBv/dense_1/bias/MomentumWBv/dense_1/kernelBv/dense_1/kernel/MomentumW

save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/MomentumWpi/dense/kernelpi/dense/kernel/MomentumWpi/dense_1/biaspi/dense_1/bias/MomentumWpi/dense_1/kernelpi/dense_1/kernel/MomentumW
pi/log_stdpi/log_std/MomentumWv/dense/biasv/dense/bias/MomentumWv/dense/kernelv/dense/kernel/MomentumWv/dense_1/biasv/dense_1/bias/MomentumWv/dense_1/kernelv/dense_1/kernel/MomentumW* 
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
á
save_1/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBpi/dense/biasBpi/dense/bias/MomentumWBpi/dense/kernelBpi/dense/kernel/MomentumWBpi/dense_1/biasBpi/dense_1/bias/MomentumWBpi/dense_1/kernelBpi/dense_1/kernel/MomentumWB
pi/log_stdBpi/log_std/MomentumWBv/dense/biasBv/dense/bias/MomentumWBv/dense/kernelBv/dense/kernel/MomentumWBv/dense_1/biasBv/dense_1/bias/MomentumWBv/dense_1/kernelBv/dense_1/kernel/MomentumW*
dtype0

!save_1/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
í
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
¨
save_1/AssignAssignpi/dense/biassave_1/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
ś
save_1/Assign_1Assignpi/dense/bias/MomentumWsave_1/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
´
save_1/Assign_2Assignpi/dense/kernelsave_1/RestoreV2:2*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
ž
save_1/Assign_3Assignpi/dense/kernel/MomentumWsave_1/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
°
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
ş
save_1/Assign_5Assignpi/dense_1/bias/MomentumWsave_1/RestoreV2:5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
¸
save_1/Assign_6Assignpi/dense_1/kernelsave_1/RestoreV2:6*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Â
save_1/Assign_7Assignpi/dense_1/kernel/MomentumWsave_1/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ś
save_1/Assign_8Assign
pi/log_stdsave_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
°
save_1/Assign_9Assignpi/log_std/MomentumWsave_1/RestoreV2:9*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
Ź
save_1/Assign_10Assignv/dense/biassave_1/RestoreV2:10*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
ś
save_1/Assign_11Assignv/dense/bias/MomentumWsave_1/RestoreV2:11*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
´
save_1/Assign_12Assignv/dense/kernelsave_1/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
ž
save_1/Assign_13Assignv/dense/kernel/MomentumWsave_1/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
°
save_1/Assign_14Assignv/dense_1/biassave_1/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
ş
save_1/Assign_15Assignv/dense_1/bias/MomentumWsave_1/RestoreV2:15*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
¸
save_1/Assign_16Assignv/dense_1/kernelsave_1/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Â
save_1/Assign_17Assignv/dense_1/kernel/MomentumWsave_1/RestoreV2:17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
ć
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ß
	variablesŃÎ
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

pi/dense/kernel/MomentumW:0 pi/dense/kernel/MomentumW/Assign pi/dense/kernel/MomentumW/read:02-pi/dense/kernel/MomentumW/Initializer/zeros:0

pi/dense/bias/MomentumW:0pi/dense/bias/MomentumW/Assignpi/dense/bias/MomentumW/read:02+pi/dense/bias/MomentumW/Initializer/zeros:0

pi/dense_1/kernel/MomentumW:0"pi/dense_1/kernel/MomentumW/Assign"pi/dense_1/kernel/MomentumW/read:02/pi/dense_1/kernel/MomentumW/Initializer/zeros:0

pi/dense_1/bias/MomentumW:0 pi/dense_1/bias/MomentumW/Assign pi/dense_1/bias/MomentumW/read:02-pi/dense_1/bias/MomentumW/Initializer/zeros:0
|
pi/log_std/MomentumW:0pi/log_std/MomentumW/Assignpi/log_std/MomentumW/read:02(pi/log_std/MomentumW/Initializer/zeros:0

v/dense/kernel/MomentumW:0v/dense/kernel/MomentumW/Assignv/dense/kernel/MomentumW/read:02,v/dense/kernel/MomentumW/Initializer/zeros:0

v/dense/bias/MomentumW:0v/dense/bias/MomentumW/Assignv/dense/bias/MomentumW/read:02*v/dense/bias/MomentumW/Initializer/zeros:0

v/dense_1/kernel/MomentumW:0!v/dense_1/kernel/MomentumW/Assign!v/dense_1/kernel/MomentumW/read:02.v/dense_1/kernel/MomentumW/Initializer/zeros:0

v/dense_1/bias/MomentumW:0v/dense_1/bias/MomentumW/Assignv/dense_1/bias/MomentumW/read:02,v/dense_1/bias/MomentumW/Initializer/zeros:0"ă
trainable_variablesËČ
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
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08"&
train_op

	MomentumW
MomentumW_1*§
serving_default
)
x$
Placeholder:0˙˙˙˙˙˙˙˙˙#
v
v/Squeeze:0˙˙˙˙˙˙˙˙˙%
pi
pi/add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict