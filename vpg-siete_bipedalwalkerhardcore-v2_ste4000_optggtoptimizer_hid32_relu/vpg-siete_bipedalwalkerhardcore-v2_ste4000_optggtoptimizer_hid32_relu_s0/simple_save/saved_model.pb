ű	
ý-É-
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
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
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
;
Diag
diagonal"T
output"T"
Ttype:

2	
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
:
Less
x"T
y"T
z
"
Ttype:
2	
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
3

MatrixDiag
diagonal"T
output"T"	
Ttype
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
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0

ScatterUpdate
ref"T
indices"Tindices
updates"T

output_ref"T"	
Ttype"
Tindicestype:
2	"
use_lockingbool(
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
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
q
Svd

input"T
s"T
u"T
v"T"

compute_uvbool("
full_matricesbool( "
Ttype:
2
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
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
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'đż
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
p
Placeholder_1Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_3Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Ľ
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@pi/dense/kernel*
valueB"       *
dtype0

.pi/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
valueB
 *b§ž*
dtype0
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
dtype0*
_output_shapes

: *

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2
Ú
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
T0
ě
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
Ţ
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
§
pi/dense/kernel
VariableV2*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
Ó
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
~
pi/dense/kernel/readIdentitypi/dense/kernel*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel

pi/dense/bias/Initializer/zerosConst*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB *    *
dtype0

pi/dense/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: 
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
pi/dense/bias/readIdentitypi/dense/bias*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Y
pi/dense/ReluRelupi/dense/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Š
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *ěŃž*
dtype0*
_output_shapes
: 

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *ěŃ>*
dtype0
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
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
ô
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel
ć
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
Ť
pi/dense_1/kernel
VariableV2*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
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
VariableV2*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ć
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:

pi/dense_1/MatMulMatMulpi/dense/Relupi/dense_1/kernel/read*
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
pi/log_std/initial_valueConst*%
valueB"   ż   ż   ż   ż*
dtype0*
_output_shapes
:
v

pi/log_std
VariableV2*
	container *
_output_shapes
:*
shape:*
shared_name *
dtype0
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
pi/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*
dtype0*
seed2.*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

seed *
T0

pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
pi/subSubPlaceholder_1pi/dense_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
E
pi/Exp_1Exppi/log_std/read*
_output_shapes
:*
T0
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

pi/truedivRealDivpi/subpi/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
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
pi/mul_1/xpi/log_std/read*
T0*
_output_shapes
:
S
pi/add_2Addpi/powpi/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O

pi/add_3/yConst*
valueB
 *?ë?*
dtype0*
_output_shapes
: 
W
pi/add_3Addpi/add_2
pi/add_3/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O

pi/mul_2/xConst*
valueB
 *   ż*
dtype0*
_output_shapes
: 
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0
]
pi/sub_1Subpi/addpi/dense_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
E
pi/Exp_2Exppi/log_std/read*
T0*
_output_shapes
:
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

pi/pow_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
[
pi/pow_1Powpi/truediv_1
pi/pow_1/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O

pi/mul_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
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

pi/mul_4/xConst*
valueB
 *   ż*
dtype0*
_output_shapes
: 
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*!
_class
loc:@v/dense/kernel*
seed2V*
dtype0*
_output_shapes

: *

seed *
T0
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
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*!
_class
loc:@v/dense/kernel
Ľ
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
v/dense/bias/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB *    *
dtype0*
_output_shapes
: 

v/dense/bias
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
ş
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
q
v/dense/bias/readIdentityv/dense/bias*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
W
v/dense/ReluReluv/dense/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
§
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:
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
dtype0*
_output_shapes

: *

seed *
T0*#
_class
loc:@v/dense_1/kernel*
seed2g
Ţ
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
đ
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: *
T0
â
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
Š
v/dense_1/kernel
VariableV2*#
_class
loc:@v/dense_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
×
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(

v/dense_1/kernel/readIdentityv/dense_1/kernel*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel

 v/dense_1/bias/Initializer/zerosConst*
_output_shapes
:*!
_class
loc:@v/dense_1/bias*
valueB*    *
dtype0
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
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
w
v/dense_1/bias/readIdentityv/dense_1/bias*!
_class
loc:@v/dense_1/bias*
_output_shapes
:*
T0

v/dense_1/MatMulMatMulv/dense/Reluv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 

v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
l
	v/SqueezeSqueezev/dense_1/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
mulMulpi/SumPlaceholder_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Z
Mean_1MeanpowConst_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Q
sub_1SubPlaceholder_4pi/Sum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
Mean_3MeanNeg_1Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
R
gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
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

gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
\
gradients/Mean_grad/ShapeShapemul*
out_type0*
_output_shapes
:*
T0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
gradients/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0

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

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
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
w
gradients/mul_grad/MulMulgradients/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
c
gradients/pi/Sum_grad/ShapeShapepi/mul_2*
_output_shapes
:*
T0*
out_type0

gradients/pi/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :
§
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
­
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
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
!gradients/pi/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :
Ţ
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:

 gradients/pi/Sum_grad/Fill/valueConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ć
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*

index_type0

#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
_output_shapes
:*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
N

gradients/pi/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :
Ă
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*
T0
ť
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
_output_shapes
:*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
Ă
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ľ
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
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
gradients/pi/mul_2_grad/SumSumgradients/pi/mul_2_grad/Mul-gradients/pi/mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/pi/mul_2_grad/ReshapeReshapegradients/pi/mul_2_grad/Sumgradients/pi/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
~
gradients/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients/pi/Sum_grad/Tile*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
´
gradients/pi/mul_2_grad/Sum_1Sumgradients/pi/mul_2_grad/Mul_1/gradients/pi/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ź
!gradients/pi/mul_2_grad/Reshape_1Reshapegradients/pi/mul_2_grad/Sum_1gradients/pi/mul_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
(gradients/pi/mul_2_grad/tuple/group_depsNoOp ^gradients/pi/mul_2_grad/Reshape"^gradients/pi/mul_2_grad/Reshape_1
Ý
0gradients/pi/mul_2_grad/tuple/control_dependencyIdentitygradients/pi/mul_2_grad/Reshape)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_2_grad/Reshape*
_output_shapes
: 
ô
2gradients/pi/mul_2_grad/tuple/control_dependency_1Identity!gradients/pi/mul_2_grad/Reshape_1)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_2_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
gradients/pi/add_3_grad/ShapeShapepi/add_2*
_output_shapes
:*
T0*
out_type0
b
gradients/pi/add_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ă
-gradients/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_3_grad/Shapegradients/pi/add_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
gradients/pi/add_3_grad/SumSum2gradients/pi/mul_2_grad/tuple/control_dependency_1-gradients/pi/add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
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
!gradients/pi/add_3_grad/Reshape_1Reshapegradients/pi/add_3_grad/Sum_1gradients/pi/add_3_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
v
(gradients/pi/add_3_grad/tuple/group_depsNoOp ^gradients/pi/add_3_grad/Reshape"^gradients/pi/add_3_grad/Reshape_1
î
0gradients/pi/add_3_grad/tuple/control_dependencyIdentitygradients/pi/add_3_grad/Reshape)^gradients/pi/add_3_grad/tuple/group_deps*2
_class(
&$loc:@gradients/pi/add_3_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ă
2gradients/pi/add_3_grad/tuple/control_dependency_1Identity!gradients/pi/add_3_grad/Reshape_1)^gradients/pi/add_3_grad/tuple/group_deps*
_output_shapes
: *
T0*4
_class*
(&loc:@gradients/pi/add_3_grad/Reshape_1
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
gradients/pi/add_2_grad/ReshapeReshapegradients/pi/add_2_grad/Sumgradients/pi/add_2_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
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
gradients/pi/pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
˝
+gradients/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/pow_grad/Shapegradients/pi/pow_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
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
gradients/pi/pow_grad/mul_1Mulgradients/pi/pow_grad/mulgradients/pi/pow_grad/Pow*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ş
gradients/pi/pow_grad/SumSumgradients/pi/pow_grad/mul_1+gradients/pi/pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
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
pi/truediv*
T0*
out_type0*
_output_shapes
:
j
%gradients/pi/pow_grad/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
š
gradients/pi/pow_grad/ones_likeFill%gradients/pi/pow_grad/ones_like/Shape%gradients/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
gradients/pi/pow_grad/SelectSelectgradients/pi/pow_grad/Greater
pi/truedivgradients/pi/pow_grad/ones_like*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
gradients/pi/pow_grad/LogLoggradients/pi/pow_grad/Select*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
 gradients/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ś
gradients/pi/pow_grad/Select_1Selectgradients/pi/pow_grad/Greatergradients/pi/pow_grad/Log gradients/pi/pow_grad/zeros_like*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/pi/pow_grad/mul_2Mul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/pi/pow_grad/mul_3Mulgradients/pi/pow_grad/mul_2gradients/pi/pow_grad/Select_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/pi/pow_grad/Sum_1Sumgradients/pi/pow_grad/mul_3-gradients/pi/pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/pi/pow_grad/Reshape_1Reshapegradients/pi/pow_grad/Sum_1gradients/pi/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
p
&gradients/pi/pow_grad/tuple/group_depsNoOp^gradients/pi/pow_grad/Reshape ^gradients/pi/pow_grad/Reshape_1
ć
.gradients/pi/pow_grad/tuple/control_dependencyIdentitygradients/pi/pow_grad/Reshape'^gradients/pi/pow_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/pow_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/pi/mul_1_grad/MulMul2gradients/pi/add_2_grad/tuple/control_dependency_1pi/log_std/read*
T0*
_output_shapes
:
Ź
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
Tshape0*
_output_shapes
: *
T0

gradients/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x2gradients/pi/add_2_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
ś
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
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
2gradients/pi/mul_1_grad/tuple/control_dependency_1Identity!gradients/pi/mul_1_grad/Reshape_1)^gradients/pi/mul_1_grad/tuple/group_deps*
_output_shapes
:*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1
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
gradients/pi/truediv_grad/SumSum!gradients/pi/truediv_grad/RealDiv/gradients/pi/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
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
#gradients/pi/truediv_grad/RealDiv_2RealDiv#gradients/pi/truediv_grad/RealDiv_1pi/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ť
gradients/pi/truediv_grad/mulMul.gradients/pi/pow_grad/tuple/control_dependency#gradients/pi/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
gradients/pi/truediv_grad/Sum_1Sumgradients/pi/truediv_grad/mul1gradients/pi/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ľ
#gradients/pi/truediv_grad/Reshape_1Reshapegradients/pi/truediv_grad/Sum_1!gradients/pi/truediv_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
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
gradients/pi/sub_grad/SumSum2gradients/pi/truediv_grad/tuple/control_dependency+gradients/pi/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
 
gradients/pi/sub_grad/ReshapeReshapegradients/pi/sub_grad/Sumgradients/pi/sub_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ĺ
gradients/pi/sub_grad/Sum_1Sum2gradients/pi/truediv_grad/tuple/control_dependency-gradients/pi/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
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
gradients/pi/add_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ă
-gradients/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_1_grad/Shapegradients/pi/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
É
gradients/pi/add_1_grad/SumSum4gradients/pi/truediv_grad/tuple/control_dependency_1-gradients/pi/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/pi/add_1_grad/ReshapeReshapegradients/pi/add_1_grad/Sumgradients/pi/add_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
É
gradients/pi/add_1_grad/Sum_1Sum4gradients/pi/truediv_grad/tuple/control_dependency_1/gradients/pi/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
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
2gradients/pi/add_1_grad/tuple/control_dependency_1Identity!gradients/pi/add_1_grad/Reshape_1)^gradients/pi/add_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_1_grad/Reshape_1*
_output_shapes
: 
Ş
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients/pi/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC*
_output_shapes
:

2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad1^gradients/pi/sub_grad/tuple/control_dependency_1

:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity0gradients/pi/sub_grad/tuple/control_dependency_13^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b(
Í
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

: 

1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1

9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

: *
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1
Ë
gradients/AddNAddN2gradients/pi/mul_1_grad/tuple/control_dependency_1gradients/pi/Exp_1_grad/mul*
N*
_output_shapes
:*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1
­
%gradients/pi/dense/Relu_grad/ReluGradReluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Relu*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad&^gradients/pi/dense/Relu_grad/ReluGrad

8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/pi/dense/Relu_grad/ReluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense/Relu_grad/ReluGrad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
×
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
Ç
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: *
transpose_b( 
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
ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
T0*
Tshape0*
_output_shapes
: 
b
Reshape_2/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_3/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0

	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
_output_shapes
:*
T0*
Tshape0
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
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
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
Const_4Const*
_output_shapes
:*)
value B"                *
dtype0
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
	Reshape_5ReshapesplitReshape_5/shape*
Tshape0*
_output_shapes

: *
T0
Y
Reshape_6/shapeConst*
valueB: *
dtype0*
_output_shapes
:
a
	Reshape_6Reshapesplit:1Reshape_6/shape*
_output_shapes
: *
T0*
Tshape0
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
Reshape_9/shapeConst*
valueB:*
dtype0*
_output_shapes
:
a
	Reshape_9Reshapesplit:4Reshape_9/shape*
T0*
Tshape0*
_output_shapes
:
N
	GGT/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
L
GGT/epsConst*
dtype0*
_output_shapes
: *
valueB
 *ˇŃ8
K
GGT/lrConst*
valueB
 *RI9*
dtype0*
_output_shapes
: 
R
GGT/sigma_epsConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
P
GGT/svd_epsConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
L

GGT/windowConst*
value	B :
*
dtype0*
_output_shapes
: 
K
Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 

global_step
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 

global_step/AssignAssignglobal_stepCast/x* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
l
global_step/readIdentityglobal_step*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
N
zeros/mul/yConst*
value
B :¨*
dtype0*
_output_shapes
: 
J
	zeros/mulMul
GGT/windowzeros/mul/y*
T0*
_output_shapes
: 
O
zeros/Less/yConst*
value
B :č*
dtype0*
_output_shapes
: 
L

zeros/LessLess	zeros/mulzeros/Less/y*
T0*
_output_shapes
: 
Q
zeros/packed/1Const*
value
B :¨*
dtype0*
_output_shapes
: 
j
zeros/packedPack
GGT/windowzeros/packed/1*
T0*

axis *
N*
_output_shapes
:
P
zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
zerosFillzeros/packedzeros/Const*
_output_shapes
:	
¨*
T0*

index_type0
Ł
grad_buffer
VariableV2*
	container *
shape:	
¨*
dtype0*
_output_shapes
:	
¨*
shared_name * 
_class
loc:@pi/dense/bias
Ľ
grad_buffer/AssignAssigngrad_bufferzeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:	
¨
u
grad_buffer/readIdentitygrad_buffer*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	
¨
V
zeros_1Const*
_output_shapes	
:¨*
valueB¨*    *
dtype0

moment1
VariableV2*
	container *
shape:¨*
dtype0*
_output_shapes	
:¨*
shared_name * 
_class
loc:@pi/dense/bias

moment1/AssignAssignmoment1zeros_1*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes	
:¨*
use_locking(
i
moment1/readIdentitymoment1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes	
:¨
V
zeros_2Const*
dtype0*
_output_shapes	
:¨*
valueB¨*    

	flat_grad
VariableV2*
dtype0*
_output_shapes	
:¨*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape:¨

flat_grad/AssignAssign	flat_gradzeros_2*
_output_shapes	
:¨*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
m
flat_grad/readIdentity	flat_grad*
_output_shapes	
:¨*
T0* 
_class
loc:@pi/dense/bias

(GGT/update_pi/dense/kernel/Reshape/shapeConst*
_output_shapes
:*"
_class
loc:@pi/dense/kernel*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
ş
"GGT/update_pi/dense/kernel/ReshapeReshape	Reshape_5(GGT/update_pi/dense/kernel/Reshape/shape*
T0*"
_class
loc:@pi/dense/kernel*
Tshape0*
_output_shapes	
:

&GGT/update_pi/dense/kernel/range/startConst*"
_class
loc:@pi/dense/kernel*
value	B : *
dtype0*
_output_shapes
: 

&GGT/update_pi/dense/kernel/range/limitConst*"
_class
loc:@pi/dense/kernel*
value
B : *
dtype0*
_output_shapes
: 

&GGT/update_pi/dense/kernel/range/deltaConst*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
value	B :*
dtype0
î
 GGT/update_pi/dense/kernel/rangeRange&GGT/update_pi/dense/kernel/range/start&GGT/update_pi/dense/kernel/range/limit&GGT/update_pi/dense/kernel/range/delta*"
_class
loc:@pi/dense/kernel*
_output_shapes	
:*

Tidx0

(GGT/update_pi/dense/kernel/ScatterUpdateScatterUpdate	flat_grad GGT/update_pi/dense/kernel/range"GGT/update_pi/dense/kernel/Reshape*
use_locking(*
Tindices0*
T0*6
_class,
*loc:@pi/dense/biasloc:@pi/dense/kernel*
_output_shapes	
:¨

&GGT/update_pi/dense/bias/Reshape/shapeConst*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
ł
 GGT/update_pi/dense/bias/ReshapeReshape	Reshape_6&GGT/update_pi/dense/bias/Reshape/shape*
T0* 
_class
loc:@pi/dense/bias*
Tshape0*
_output_shapes
: 

$GGT/update_pi/dense/bias/range/startConst*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
value	B : 

$GGT/update_pi/dense/bias/range/limitConst* 
_class
loc:@pi/dense/bias*
value	B : *
dtype0*
_output_shapes
: 

$GGT/update_pi/dense/bias/range/deltaConst* 
_class
loc:@pi/dense/bias*
value	B :*
dtype0*
_output_shapes
: 
ă
GGT/update_pi/dense/bias/rangeRange$GGT/update_pi/dense/bias/range/start$GGT/update_pi/dense/bias/range/limit$GGT/update_pi/dense/bias/range/delta* 
_class
loc:@pi/dense/bias*
_output_shapes
: *

Tidx0
ď
&GGT/update_pi/dense/bias/ScatterUpdateScatterUpdate	flat_gradGGT/update_pi/dense/bias/range GGT/update_pi/dense/bias/Reshape*
use_locking(*
Tindices0*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes	
:¨
Ł
*GGT/update_pi/dense_1/kernel/Reshape/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
Ŕ
$GGT/update_pi/dense_1/kernel/ReshapeReshape	Reshape_7*GGT/update_pi/dense_1/kernel/Reshape/shape*
T0*$
_class
loc:@pi/dense_1/kernel*
Tshape0*
_output_shapes	
:

(GGT/update_pi/dense_1/kernel/range/startConst*$
_class
loc:@pi/dense_1/kernel*
value
B :¤*
dtype0*
_output_shapes
: 

(GGT/update_pi/dense_1/kernel/range/limitConst*$
_class
loc:@pi/dense_1/kernel*
value
B :¤*
dtype0*
_output_shapes
: 

(GGT/update_pi/dense_1/kernel/range/deltaConst*$
_class
loc:@pi/dense_1/kernel*
value	B :*
dtype0*
_output_shapes
: 
ř
"GGT/update_pi/dense_1/kernel/rangeRange(GGT/update_pi/dense_1/kernel/range/start(GGT/update_pi/dense_1/kernel/range/limit(GGT/update_pi/dense_1/kernel/range/delta*

Tidx0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes	
:

*GGT/update_pi/dense_1/kernel/ScatterUpdateScatterUpdate	flat_grad"GGT/update_pi/dense_1/kernel/range$GGT/update_pi/dense_1/kernel/Reshape*
use_locking(*
Tindices0*
T0*8
_class.
,loc:@pi/dense/biasloc:@pi/dense_1/kernel*
_output_shapes	
:¨

(GGT/update_pi/dense_1/bias/Reshape/shapeConst*"
_class
loc:@pi/dense_1/bias*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
š
"GGT/update_pi/dense_1/bias/ReshapeReshape	Reshape_8(GGT/update_pi/dense_1/bias/Reshape/shape*
T0*"
_class
loc:@pi/dense_1/bias*
Tshape0*
_output_shapes
:

&GGT/update_pi/dense_1/bias/range/startConst*"
_class
loc:@pi/dense_1/bias*
value
B : *
dtype0*
_output_shapes
: 

&GGT/update_pi/dense_1/bias/range/limitConst*
_output_shapes
: *"
_class
loc:@pi/dense_1/bias*
value
B :¤*
dtype0

&GGT/update_pi/dense_1/bias/range/deltaConst*"
_class
loc:@pi/dense_1/bias*
value	B :*
dtype0*
_output_shapes
: 
í
 GGT/update_pi/dense_1/bias/rangeRange&GGT/update_pi/dense_1/bias/range/start&GGT/update_pi/dense_1/bias/range/limit&GGT/update_pi/dense_1/bias/range/delta*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:*

Tidx0

(GGT/update_pi/dense_1/bias/ScatterUpdateScatterUpdate	flat_grad GGT/update_pi/dense_1/bias/range"GGT/update_pi/dense_1/bias/Reshape*
T0*6
_class,
*loc:@pi/dense/biasloc:@pi/dense_1/bias*
_output_shapes	
:¨*
use_locking(*
Tindices0

#GGT/update_pi/log_std/Reshape/shapeConst*
_class
loc:@pi/log_std*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
Ş
GGT/update_pi/log_std/ReshapeReshape	Reshape_9#GGT/update_pi/log_std/Reshape/shape*
T0*
_class
loc:@pi/log_std*
Tshape0*
_output_shapes
:

!GGT/update_pi/log_std/range/startConst*
_class
loc:@pi/log_std*
value
B :¤*
dtype0*
_output_shapes
: 

!GGT/update_pi/log_std/range/limitConst*
_class
loc:@pi/log_std*
value
B :¨*
dtype0*
_output_shapes
: 

!GGT/update_pi/log_std/range/deltaConst*
_class
loc:@pi/log_std*
value	B :*
dtype0*
_output_shapes
: 
Ô
GGT/update_pi/log_std/rangeRange!GGT/update_pi/log_std/range/start!GGT/update_pi/log_std/range/limit!GGT/update_pi/log_std/range/delta*
_class
loc:@pi/log_std*
_output_shapes
:*

Tidx0
÷
#GGT/update_pi/log_std/ScatterUpdateScatterUpdate	flat_gradGGT/update_pi/log_std/rangeGGT/update_pi/log_std/Reshape*
use_locking(*
Tindices0*
T0*1
_class'
%loc:@pi/dense/biasloc:@pi/log_std*
_output_shapes	
:¨
č
GGT/group_depsNoOp'^GGT/update_pi/dense/bias/ScatterUpdate)^GGT/update_pi/dense/kernel/ScatterUpdate)^GGT/update_pi/dense_1/bias/ScatterUpdate+^GGT/update_pi/dense_1/kernel/ScatterUpdate$^GGT/update_pi/log_std/ScatterUpdate

GGT/AssignAdd/valueConst^GGT/group_deps*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *  ?

GGT/AssignAdd	AssignAddglobal_stepGGT/AssignAdd/value*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

GGT/mulMul	GGT/beta1moment1/read^GGT/group_deps*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes	
:¨

	GGT/sub/xConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
GGT/subSub	GGT/sub/x	GGT/beta1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
q
	GGT/mul_1MulGGT/subflat_grad/read*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes	
:¨
j
GGT/addAddGGT/mul	GGT/mul_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes	
:¨


GGT/AssignAssignmoment1GGT/add*
_output_shapes	
:¨*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
validate_shape(

GGT/sub_1/yConst^GGT/group_deps*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *  ?
o
	GGT/sub_1SubGGT/AssignAddGGT/sub_1/y*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

GGT/ToInt32Cast	GGT/sub_1*

SrcT0* 
_class
loc:@pi/dense/bias*
Truncate( *

DstT0*
_output_shapes
: 
t
GGT/FloorModFloorModGGT/ToInt32
GGT/window*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
¸
GGT/ScatterUpdateScatterUpdategrad_bufferGGT/FloorMod
GGT/Assign*
use_locking(*
Tindices0*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	
¨

GGT/CastCast
GGT/window^GGT/group_deps*

DstT0*
_output_shapes
: *

SrcT0* 
_class
loc:@pi/dense/bias*
Truncate( 
r
GGT/MinimumMinimumGGT/AssignAddGGT/Cast*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
`
GGT/SqrtSqrtGGT/Minimum*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

GGT/ExpandDims/dimConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

GGT/ExpandDims
ExpandDims
GGT/AssignGGT/ExpandDims/dim*

Tdim0*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	¨

GGT/truedivRealDivGGT/ScatterUpdateGGT/Sqrt*
_output_shapes
:	
¨*
T0* 
_class
loc:@pi/dense/bias

GGT/transpose/permConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB"       *
dtype0*
_output_shapes
:

GGT/transpose	TransposeGGT/truedivGGT/transpose/perm*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	¨
*
Tperm0
Ł

GGT/MatMulMatMulGGT/transposeGGT/transpose*
T0* 
_class
loc:@pi/dense/bias*
transpose_a(*
_output_shapes

:

*
transpose_b( 

GGT/eye/MinimumMinimum
GGT/window
GGT/window^GGT/group_deps*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

GGT/eye/shapeConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB *
dtype0*
_output_shapes
: 

GGT/eye/concat/values_1PackGGT/eye/Minimum*
T0* 
_class
loc:@pi/dense/bias*

axis *
N*
_output_shapes
:

GGT/eye/concat/axisConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
value	B : *
dtype0*
_output_shapes
: 
ł
GGT/eye/concatConcatV2GGT/eye/shapeGGT/eye/concat/values_1GGT/eye/concat/axis* 
_class
loc:@pi/dense/bias*
N*
_output_shapes
:*

Tidx0*
T0

GGT/eye/ones/ConstConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

GGT/eye/onesFillGGT/eye/concatGGT/eye/ones/Const*
_output_shapes
:
*
T0* 
_class
loc:@pi/dense/bias*

index_type0
y
GGT/eye/MatrixDiag
MatrixDiagGGT/eye/ones*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes

:


|
	GGT/mul_2MulGGT/eye/MatrixDiagGGT/svd_eps*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes

:


r
	GGT/add_1Add
GGT/MatMul	GGT/mul_2*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes

:



GGT/SvdSvd	GGT/add_1*

compute_uv(*
T0* 
_class
loc:@pi/dense/bias*.
_output_shapes
:
:

:

*
full_matrices( 
b

GGT/Sqrt_1SqrtGGT/Svd*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:


	GGT/ConstConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT/MinMin
GGT/Sqrt_1	GGT/Const*
	keep_dims( *

Tidx0*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

GGT/Cast_1/xConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
	GGT/add_2Add
GGT/Sqrt_1GGT/sigma_eps*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:


	GGT/Pow/yConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB
 *  @@*
dtype0*
_output_shapes
: 
k
GGT/PowPow	GGT/add_2	GGT/Pow/y*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:

v
GGT/truediv_1RealDivGGT/Cast_1/xGGT/Pow*
_output_shapes
:
*
T0* 
_class
loc:@pi/dense/bias

	GGT/zerosConst^GGT/group_deps*
dtype0*
_output_shapes	
:¨* 
_class
loc:@pi/dense/bias*
valueB¨*    

GGT/ExpandDims_1/dimConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

GGT/ExpandDims_1
ExpandDims	GGT/zerosGGT/ExpandDims_1/dim*

Tdim0*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	¨
j
GGT/DiagDiagGGT/truediv_1* 
_class
loc:@pi/dense/bias*
_output_shapes

:

*
T0
Ś
GGT/MatMul_1MatMulGGT/transposeGGT/ExpandDims*
T0* 
_class
loc:@pi/dense/bias*
transpose_a(*
_output_shapes

:
*
transpose_b( 
 
GGT/MatMul_2MatMul	GGT/Svd:1GGT/MatMul_1*
T0* 
_class
loc:@pi/dense/bias*
transpose_a(*
_output_shapes

:
*
transpose_b( 

GGT/MatMul_3MatMulGGT/DiagGGT/MatMul_2*
transpose_b( *
T0* 
_class
loc:@pi/dense/bias*
transpose_a( *
_output_shapes

:

 
GGT/MatMul_4MatMul	GGT/Svd:1GGT/MatMul_3*
transpose_a( *
_output_shapes

:
*
transpose_b( *
T0* 
_class
loc:@pi/dense/bias
Ľ
GGT/MatMul_5MatMulGGT/transposeGGT/MatMul_4* 
_class
loc:@pi/dense/bias*
transpose_a( *
_output_shapes
:	¨*
transpose_b( *
T0

GGT/Cast_2/xConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
GGT/truediv_2RealDivGGT/Cast_2/xGGT/Svd*
_output_shapes
:
*
T0* 
_class
loc:@pi/dense/bias
l

GGT/Diag_1DiagGGT/truediv_2*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes

:


Ś
GGT/MatMul_6MatMulGGT/transposeGGT/ExpandDims*
T0* 
_class
loc:@pi/dense/bias*
transpose_a(*
_output_shapes

:
*
transpose_b( 
 
GGT/MatMul_7MatMul	GGT/Svd:1GGT/MatMul_6*
T0* 
_class
loc:@pi/dense/bias*
transpose_a(*
_output_shapes

:
*
transpose_b( 
Ą
GGT/MatMul_8MatMul
GGT/Diag_1GGT/MatMul_7*
T0* 
_class
loc:@pi/dense/bias*
transpose_a( *
_output_shapes

:
*
transpose_b( 
 
GGT/MatMul_9MatMul	GGT/Svd:1GGT/MatMul_8*
T0* 
_class
loc:@pi/dense/bias*
transpose_a( *
_output_shapes

:
*
transpose_b( 
Ś
GGT/MatMul_10MatMulGGT/transposeGGT/MatMul_9*
T0* 
_class
loc:@pi/dense/bias*
transpose_a( *
_output_shapes
:	¨*
transpose_b( 
{
	GGT/sub_2SubGGT/ExpandDimsGGT/MatMul_10*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	¨
x
GGT/truediv_3RealDiv	GGT/sub_2GGT/Min*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	¨
k
GGT/GreaterGreaterGGT/MinGGT/eps* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
T0
x
GGT/cond/SwitchSwitchGGT/GreaterGGT/Greater* 
_class
loc:@pi/dense/bias*
_output_shapes
: : *
T0

s
GGT/cond/switch_tIdentityGGT/cond/Switch:1*
T0
* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
q
GGT/cond/switch_fIdentityGGT/cond/Switch*
_output_shapes
: *
T0
* 
_class
loc:@pi/dense/bias
l
GGT/cond/pred_idIdentityGGT/Greater*
_output_shapes
: *
T0
* 
_class
loc:@pi/dense/bias

GGT/cond/AddAddGGT/cond/Add/Switch:1GGT/cond/Add/Switch_1:1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:	¨

GGT/cond/Add/SwitchSwitchGGT/MatMul_5GGT/cond/pred_id*
T0* 
_class
loc:@pi/dense/bias**
_output_shapes
:	¨:	¨

GGT/cond/Add/Switch_1SwitchGGT/truediv_3GGT/cond/pred_id**
_output_shapes
:	¨:	¨*
T0* 
_class
loc:@pi/dense/bias

GGT/cond/Add_1AddGGT/cond/Add_1/SwitchGGT/cond/Add_1/Switch_1*
_output_shapes
:	¨*
T0* 
_class
loc:@pi/dense/bias

GGT/cond/Add_1/SwitchSwitchGGT/ExpandDims_1GGT/cond/pred_id**
_output_shapes
:	¨:	¨*
T0* 
_class
loc:@pi/dense/bias

GGT/cond/Add_1/Switch_1SwitchGGT/MatMul_5GGT/cond/pred_id* 
_class
loc:@pi/dense/bias**
_output_shapes
:	¨:	¨*
T0

GGT/cond/MergeMergeGGT/cond/Add_1GGT/cond/Add*
T0* 
_class
loc:@pi/dense/bias*
N*!
_output_shapes
:	¨: 

GGT/strided_slice/stackConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT/strided_slice/stack_1Const^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT/strided_slice/stack_2Const^GGT/group_deps*
dtype0*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:
˝
GGT/strided_sliceStridedSliceGGT/cond/MergeGGT/strided_slice/stackGGT/strided_slice/stack_1GGT/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:	*
T0*
Index0* 
_class
loc:@pi/dense/bias*
shrink_axis_mask 

GGT/Reshape/shapeConst^GGT/group_deps*
dtype0*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB"       

GGT/ReshapeReshapeGGT/strided_sliceGGT/Reshape/shape*
T0* 
_class
loc:@pi/dense/bias*
Tshape0*
_output_shapes

: 
p
	GGT/mul_3MulGGT/lrGGT/Reshape*
_output_shapes

: *
T0* 
_class
loc:@pi/dense/bias
Ş
GGT/AssignSub	AssignSubpi/dense/kernel	GGT/mul_3*
use_locking( *
T0*6
_class,
*loc:@pi/dense/biasloc:@pi/dense/kernel*
_output_shapes

: 

GGT/strided_slice_1/stackConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT/strided_slice_1/stack_1Const^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT/strided_slice_1/stack_2Const^GGT/group_deps*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:*
dtype0
Ä
GGT/strided_slice_1StridedSliceGGT/cond/MergeGGT/strided_slice_1/stackGGT/strided_slice_1/stack_1GGT/strided_slice_1/stack_2*
end_mask *
_output_shapes

: *
T0*
Index0* 
_class
loc:@pi/dense/bias*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 

GGT/Reshape_1/shapeConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT/Reshape_1ReshapeGGT/strided_slice_1GGT/Reshape_1/shape* 
_class
loc:@pi/dense/bias*
Tshape0*
_output_shapes
: *
T0
n
	GGT/mul_4MulGGT/lrGGT/Reshape_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

GGT/AssignSub_1	AssignSubpi/dense/bias	GGT/mul_4*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

GGT/strided_slice_2/stackConst^GGT/group_deps*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:¤*
dtype0

GGT/strided_slice_2/stack_1Const^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB:¤*
dtype0*
_output_shapes
:

GGT/strided_slice_2/stack_2Const^GGT/group_deps*
dtype0*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:
Ĺ
GGT/strided_slice_2StridedSliceGGT/cond/MergeGGT/strided_slice_2/stackGGT/strided_slice_2/stack_1GGT/strided_slice_2/stack_2*
Index0*
T0* 
_class
loc:@pi/dense/bias*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:	

GGT/Reshape_2/shapeConst^GGT/group_deps*
dtype0*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB"       

GGT/Reshape_2ReshapeGGT/strided_slice_2GGT/Reshape_2/shape*
T0* 
_class
loc:@pi/dense/bias*
Tshape0*
_output_shapes

: 
r
	GGT/mul_5MulGGT/lrGGT/Reshape_2* 
_class
loc:@pi/dense/bias*
_output_shapes

: *
T0
°
GGT/AssignSub_2	AssignSubpi/dense_1/kernel	GGT/mul_5*
use_locking( *
T0*8
_class.
,loc:@pi/dense/biasloc:@pi/dense_1/kernel*
_output_shapes

: 

GGT/strided_slice_3/stackConst^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT/strided_slice_3/stack_1Const^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB:¤*
dtype0*
_output_shapes
:

GGT/strided_slice_3/stack_2Const^GGT/group_deps* 
_class
loc:@pi/dense/bias*
valueB:*
dtype0*
_output_shapes
:
Ä
GGT/strided_slice_3StridedSliceGGT/cond/MergeGGT/strided_slice_3/stackGGT/strided_slice_3/stack_1GGT/strided_slice_3/stack_2*
Index0*
T0* 
_class
loc:@pi/dense/bias*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes

:

GGT/Reshape_3/shapeConst^GGT/group_deps*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:*
dtype0

GGT/Reshape_3ReshapeGGT/strided_slice_3GGT/Reshape_3/shape*
T0* 
_class
loc:@pi/dense/bias*
Tshape0*
_output_shapes
:
n
	GGT/mul_6MulGGT/lrGGT/Reshape_3*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:
¨
GGT/AssignSub_3	AssignSubpi/dense_1/bias	GGT/mul_6*
_output_shapes
:*
use_locking( *
T0*6
_class,
*loc:@pi/dense/biasloc:@pi/dense_1/bias

GGT/strided_slice_4/stackConst^GGT/group_deps*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:¤*
dtype0

GGT/strided_slice_4/stack_1Const^GGT/group_deps*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:¨*
dtype0

GGT/strided_slice_4/stack_2Const^GGT/group_deps*
dtype0*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:
Ä
GGT/strided_slice_4StridedSliceGGT/cond/MergeGGT/strided_slice_4/stackGGT/strided_slice_4/stack_1GGT/strided_slice_4/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes

:*
T0*
Index0* 
_class
loc:@pi/dense/bias

GGT/Reshape_4/shapeConst^GGT/group_deps*
_output_shapes
:* 
_class
loc:@pi/dense/bias*
valueB:*
dtype0

GGT/Reshape_4ReshapeGGT/strided_slice_4GGT/Reshape_4/shape* 
_class
loc:@pi/dense/bias*
Tshape0*
_output_shapes
:*
T0
n
	GGT/mul_7MulGGT/lrGGT/Reshape_4*
_output_shapes
:*
T0* 
_class
loc:@pi/dense/bias

GGT/AssignSub_4	AssignSub
pi/log_std	GGT/mul_7*
T0*1
_class'
%loc:@pi/dense/biasloc:@pi/log_std*
_output_shapes
:*
use_locking( 
Ł
GGT/group_deps_1NoOp^GGT/AssignSub^GGT/AssignSub_1^GGT/AssignSub_2^GGT/AssignSub_3^GGT/AssignSub_4^GGT/group_deps* 
_class
loc:@pi/dense/bias

GGTNoOp^GGT/group_deps_1
i
Reshape_10/shapeConst^GGT*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_10Reshapepi/dense/kernel/readReshape_10/shape*
T0*
Tshape0*
_output_shapes	
:
i
Reshape_11/shapeConst^GGT*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
n

Reshape_11Reshapepi/dense/bias/readReshape_11/shape*
_output_shapes
: *
T0*
Tshape0
i
Reshape_12/shapeConst^GGT*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_12Reshapepi/dense_1/kernel/readReshape_12/shape*
T0*
Tshape0*
_output_shapes	
:
i
Reshape_13/shapeConst^GGT*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
p

Reshape_13Reshapepi/dense_1/bias/readReshape_13/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_14/shapeConst^GGT*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
k

Reshape_14Reshapepi/log_std/readReshape_14/shape*
_output_shapes
:*
T0*
Tshape0
U
concat_1/axisConst^GGT*
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
j
Const_5Const^GGT*)
value B"                *
dtype0*
_output_shapes
:
Y
split_1/split_dimConst^GGT*
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
g
Reshape_15/shapeConst^GGT*
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
`
Reshape_16/shapeConst^GGT*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_16Reshape	split_1:1Reshape_16/shape*
T0*
Tshape0*
_output_shapes
: 
g
Reshape_17/shapeConst^GGT*
dtype0*
_output_shapes
:*
valueB"       
i

Reshape_17Reshape	split_1:2Reshape_17/shape*
T0*
Tshape0*
_output_shapes

: 
`
Reshape_18/shapeConst^GGT*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_18Reshape	split_1:3Reshape_18/shape*
T0*
Tshape0*
_output_shapes
:
`
Reshape_19/shapeConst^GGT*
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
Reshape_15*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 

Assign_1Assignpi/dense/bias
Reshape_16*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Š
Assign_2Assignpi/dense_1/kernel
Reshape_17*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ą
Assign_3Assignpi/dense_1/bias
Reshape_18*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
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
M

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4^GGT
'
group_deps_1NoOp^GGT^group_deps
T
gradients_1/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_1/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
_output_shapes
: *
T0*

index_type0
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
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
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
b
gradients_1/Mean_1_grad/Shape_1Shapepow*
T0*
out_type0*
_output_shapes
:
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
˘
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
Ś
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
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
gradients_1/pow_grad/PowPowsubgradients_1/pow_grad/sub*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
gradients_1/pow_grad/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
z
gradients_1/pow_grad/GreaterGreatersubgradients_1/pow_grad/Greater/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
 *  ?*
dtype0
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
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
gradients_1/pow_grad/zeros_like	ZerosLikesub*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ž
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
Ţ
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
×
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
ş
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ş
gradients_1/sub_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
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
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad

;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
Ţ
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b(*
T0
Î
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Relu;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

: *
transpose_b( *
T0
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
Ž
&gradients_1/v/dense/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients_1/v/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad'^gradients_1/v/dense/Relu_grad/ReluGrad

9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/Relu_grad/ReluGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/Relu_grad/ReluGrad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
Ř
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
É
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: *
transpose_b( 

0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1

8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
c
Reshape_20/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙


Reshape_20Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_20/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_21/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
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
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


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

concat_2ConcatV2
Reshape_20
Reshape_21
Reshape_22
Reshape_23concat_2/axis*
_output_shapes	
:Á*

Tidx0*
T0*
N
k
PyFunc_2PyFuncconcat_2*
token
pyfunc_2*
Tin
2*
_output_shapes	
:Á*
Tout
2
`
Const_6Const*
_output_shapes
:*%
valueB"              *
dtype0
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

split_2SplitVPyFunc_2Const_6split_2/split_dim*

Tlen0*
	num_split*-
_output_shapes
:: : :*
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
Reshape_25/shapeConst*
dtype0*
_output_shapes
:*
valueB: 
e

Reshape_25Reshape	split_2:1Reshape_25/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_26/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_26Reshape	split_2:2Reshape_26/shape*
Tshape0*
_output_shapes

: *
T0
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
P
GGT_1/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
N
	GGT_1/epsConst*
dtype0*
_output_shapes
: *
valueB
 *ˇŃ8
M
GGT_1/lrConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
T
GGT_1/sigma_epsConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
R
GGT_1/svd_epsConst*
dtype0*
_output_shapes
: *
valueB
 *˝75
N
GGT_1/windowConst*
value	B :
*
dtype0*
_output_shapes
: 
M
Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *    

global_step_1
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
˘
global_step_1/AssignAssignglobal_step_1Cast_1/x*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
o
global_step_1/readIdentityglobal_step_1*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
P
zeros_3/mul/yConst*
dtype0*
_output_shapes
: *
value
B :Á
P
zeros_3/mulMulGGT_1/windowzeros_3/mul/y*
T0*
_output_shapes
: 
Q
zeros_3/Less/yConst*
value
B :č*
dtype0*
_output_shapes
: 
R
zeros_3/LessLesszeros_3/mulzeros_3/Less/y*
_output_shapes
: *
T0
S
zeros_3/packed/1Const*
value
B :Á*
dtype0*
_output_shapes
: 
p
zeros_3/packedPackGGT_1/windowzeros_3/packed/1*
T0*

axis *
N*
_output_shapes
:
R
zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
j
zeros_3Fillzeros_3/packedzeros_3/Const*
_output_shapes
:	
Á*
T0*

index_type0
¤
grad_buffer_1
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape:	
Á*
dtype0*
_output_shapes
:	
Á*
shared_name 
Ş
grad_buffer_1/AssignAssigngrad_buffer_1zeros_3*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:	
Á*
use_locking(
x
grad_buffer_1/readIdentitygrad_buffer_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	
Á
V
zeros_4Const*
valueBÁ*    *
dtype0*
_output_shapes	
:Á

	moment1_1
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:Á*
dtype0*
_output_shapes	
:Á

moment1_1/AssignAssign	moment1_1zeros_4*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes	
:Á
l
moment1_1/readIdentity	moment1_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes	
:Á
V
zeros_5Const*
valueBÁ*    *
dtype0*
_output_shapes	
:Á

flat_grad_1
VariableV2*
_output_shapes	
:Á*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:Á*
dtype0
˘
flat_grad_1/AssignAssignflat_grad_1zeros_5*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes	
:Á
p
flat_grad_1/readIdentityflat_grad_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes	
:Á

)GGT_1/update_v/dense/kernel/Reshape/shapeConst*!
_class
loc:@v/dense/kernel*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ź
#GGT_1/update_v/dense/kernel/ReshapeReshape
Reshape_24)GGT_1/update_v/dense/kernel/Reshape/shape*!
_class
loc:@v/dense/kernel*
Tshape0*
_output_shapes	
:*
T0

'GGT_1/update_v/dense/kernel/range/startConst*!
_class
loc:@v/dense/kernel*
value	B : *
dtype0*
_output_shapes
: 

'GGT_1/update_v/dense/kernel/range/limitConst*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
value
B : *
dtype0

'GGT_1/update_v/dense/kernel/range/deltaConst*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
value	B :*
dtype0
ń
!GGT_1/update_v/dense/kernel/rangeRange'GGT_1/update_v/dense/kernel/range/start'GGT_1/update_v/dense/kernel/range/limit'GGT_1/update_v/dense/kernel/range/delta*
_output_shapes	
:*

Tidx0*!
_class
loc:@v/dense/kernel

)GGT_1/update_v/dense/kernel/ScatterUpdateScatterUpdateflat_grad_1!GGT_1/update_v/dense/kernel/range#GGT_1/update_v/dense/kernel/Reshape*
_output_shapes	
:Á*
use_locking(*
Tindices0*
T0*4
_class*
(loc:@v/dense/biasloc:@v/dense/kernel

'GGT_1/update_v/dense/bias/Reshape/shapeConst*
_class
loc:@v/dense/bias*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ľ
!GGT_1/update_v/dense/bias/ReshapeReshape
Reshape_25'GGT_1/update_v/dense/bias/Reshape/shape*
T0*
_class
loc:@v/dense/bias*
Tshape0*
_output_shapes
: 

%GGT_1/update_v/dense/bias/range/startConst*
_class
loc:@v/dense/bias*
value	B : *
dtype0*
_output_shapes
: 

%GGT_1/update_v/dense/bias/range/limitConst*
_output_shapes
: *
_class
loc:@v/dense/bias*
value	B : *
dtype0

%GGT_1/update_v/dense/bias/range/deltaConst*
_class
loc:@v/dense/bias*
value	B :*
dtype0*
_output_shapes
: 
ć
GGT_1/update_v/dense/bias/rangeRange%GGT_1/update_v/dense/bias/range/start%GGT_1/update_v/dense/bias/range/limit%GGT_1/update_v/dense/bias/range/delta*
_class
loc:@v/dense/bias*
_output_shapes
: *

Tidx0
ó
'GGT_1/update_v/dense/bias/ScatterUpdateScatterUpdateflat_grad_1GGT_1/update_v/dense/bias/range!GGT_1/update_v/dense/bias/Reshape*
use_locking(*
Tindices0*
T0*
_class
loc:@v/dense/bias*
_output_shapes	
:Á
Ł
+GGT_1/update_v/dense_1/kernel/Reshape/shapeConst*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
Á
%GGT_1/update_v/dense_1/kernel/ReshapeReshape
Reshape_26+GGT_1/update_v/dense_1/kernel/Reshape/shape*
T0*#
_class
loc:@v/dense_1/kernel*
Tshape0*
_output_shapes
: 

)GGT_1/update_v/dense_1/kernel/range/startConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
value
B :Ą

)GGT_1/update_v/dense_1/kernel/range/limitConst*#
_class
loc:@v/dense_1/kernel*
value
B :Á*
dtype0*
_output_shapes
: 

)GGT_1/update_v/dense_1/kernel/range/deltaConst*#
_class
loc:@v/dense_1/kernel*
value	B :*
dtype0*
_output_shapes
: 
ú
#GGT_1/update_v/dense_1/kernel/rangeRange)GGT_1/update_v/dense_1/kernel/range/start)GGT_1/update_v/dense_1/kernel/range/limit)GGT_1/update_v/dense_1/kernel/range/delta*

Tidx0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 

+GGT_1/update_v/dense_1/kernel/ScatterUpdateScatterUpdateflat_grad_1#GGT_1/update_v/dense_1/kernel/range%GGT_1/update_v/dense_1/kernel/Reshape*
use_locking(*
Tindices0*
T0*6
_class,
*loc:@v/dense/biasloc:@v/dense_1/kernel*
_output_shapes	
:Á

)GGT_1/update_v/dense_1/bias/Reshape/shapeConst*!
_class
loc:@v/dense_1/bias*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ť
#GGT_1/update_v/dense_1/bias/ReshapeReshape
Reshape_27)GGT_1/update_v/dense_1/bias/Reshape/shape*
T0*!
_class
loc:@v/dense_1/bias*
Tshape0*
_output_shapes
:

'GGT_1/update_v/dense_1/bias/range/startConst*!
_class
loc:@v/dense_1/bias*
value
B : *
dtype0*
_output_shapes
: 

'GGT_1/update_v/dense_1/bias/range/limitConst*
_output_shapes
: *!
_class
loc:@v/dense_1/bias*
value
B :Ą*
dtype0

'GGT_1/update_v/dense_1/bias/range/deltaConst*!
_class
loc:@v/dense_1/bias*
value	B :*
dtype0*
_output_shapes
: 
đ
!GGT_1/update_v/dense_1/bias/rangeRange'GGT_1/update_v/dense_1/bias/range/start'GGT_1/update_v/dense_1/bias/range/limit'GGT_1/update_v/dense_1/bias/range/delta*
_output_shapes
:*

Tidx0*!
_class
loc:@v/dense_1/bias

)GGT_1/update_v/dense_1/bias/ScatterUpdateScatterUpdateflat_grad_1!GGT_1/update_v/dense_1/bias/range#GGT_1/update_v/dense_1/bias/Reshape*4
_class*
(loc:@v/dense/biasloc:@v/dense_1/bias*
_output_shapes	
:Á*
use_locking(*
Tindices0*
T0
Č
GGT_1/group_depsNoOp(^GGT_1/update_v/dense/bias/ScatterUpdate*^GGT_1/update_v/dense/kernel/ScatterUpdate*^GGT_1/update_v/dense_1/bias/ScatterUpdate,^GGT_1/update_v/dense_1/kernel/ScatterUpdate

GGT_1/AssignAdd/valueConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

GGT_1/AssignAdd	AssignAddglobal_step_1GGT_1/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias

	GGT_1/mulMulGGT_1/beta1moment1_1/read^GGT_1/group_deps*
T0*
_class
loc:@v/dense/bias*
_output_shapes	
:Á

GGT_1/sub/xConst^GGT_1/group_deps*
dtype0*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *  ?
l
	GGT_1/subSubGGT_1/sub/xGGT_1/beta1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
v
GGT_1/mul_1Mul	GGT_1/subflat_grad_1/read*
T0*
_class
loc:@v/dense/bias*
_output_shapes	
:Á
o
	GGT_1/addAdd	GGT_1/mulGGT_1/mul_1*
_output_shapes	
:Á*
T0*
_class
loc:@v/dense/bias

GGT_1/AssignAssign	moment1_1	GGT_1/add*
_output_shapes	
:Á*
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(

GGT_1/sub_1/yConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 
t
GGT_1/sub_1SubGGT_1/AssignAddGGT_1/sub_1/y*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

GGT_1/ToInt32CastGGT_1/sub_1*

SrcT0*
_class
loc:@v/dense/bias*
Truncate( *

DstT0*
_output_shapes
: 
y
GGT_1/FloorModFloorModGGT_1/ToInt32GGT_1/window*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
ż
GGT_1/ScatterUpdateScatterUpdategrad_buffer_1GGT_1/FloorModGGT_1/Assign*
_class
loc:@v/dense/bias*
_output_shapes
:	
Á*
use_locking(*
Tindices0*
T0


GGT_1/CastCastGGT_1/window^GGT_1/group_deps*

SrcT0*
_class
loc:@v/dense/bias*
Truncate( *

DstT0*
_output_shapes
: 
w
GGT_1/MinimumMinimumGGT_1/AssignAdd
GGT_1/Cast*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
c

GGT_1/SqrtSqrtGGT_1/Minimum*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

GGT_1/ExpandDims/dimConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

GGT_1/ExpandDims
ExpandDimsGGT_1/AssignGGT_1/ExpandDims/dim*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	Á*

Tdim0

GGT_1/truedivRealDivGGT_1/ScatterUpdate
GGT_1/Sqrt*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	
Á

GGT_1/transpose/permConst^GGT_1/group_deps*
_output_shapes
:*
_class
loc:@v/dense/bias*
valueB"       *
dtype0

GGT_1/transpose	TransposeGGT_1/truedivGGT_1/transpose/perm*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	Á
*
Tperm0
¨
GGT_1/MatMulMatMulGGT_1/transposeGGT_1/transpose*
T0*
_class
loc:@v/dense/bias*
transpose_a(*
_output_shapes

:

*
transpose_b( 

GGT_1/eye/MinimumMinimumGGT_1/windowGGT_1/window^GGT_1/group_deps*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

GGT_1/eye/shapeConst^GGT_1/group_deps*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB *
dtype0

GGT_1/eye/concat/values_1PackGGT_1/eye/Minimum*
T0*
_class
loc:@v/dense/bias*

axis *
N*
_output_shapes
:

GGT_1/eye/concat/axisConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
value	B : *
dtype0*
_output_shapes
: 
ş
GGT_1/eye/concatConcatV2GGT_1/eye/shapeGGT_1/eye/concat/values_1GGT_1/eye/concat/axis*
T0*
_class
loc:@v/dense/bias*
N*
_output_shapes
:*

Tidx0

GGT_1/eye/ones/ConstConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

GGT_1/eye/onesFillGGT_1/eye/concatGGT_1/eye/ones/Const*
T0*
_class
loc:@v/dense/bias*

index_type0*
_output_shapes
:

|
GGT_1/eye/MatrixDiag
MatrixDiagGGT_1/eye/ones*
_output_shapes

:

*
T0*
_class
loc:@v/dense/bias

GGT_1/mul_2MulGGT_1/eye/MatrixDiagGGT_1/svd_eps*
T0*
_class
loc:@v/dense/bias*
_output_shapes

:


w
GGT_1/add_1AddGGT_1/MatMulGGT_1/mul_2*
_output_shapes

:

*
T0*
_class
loc:@v/dense/bias

	GGT_1/SvdSvdGGT_1/add_1*.
_output_shapes
:
:

:

*
full_matrices( *

compute_uv(*
T0*
_class
loc:@v/dense/bias
e
GGT_1/Sqrt_1Sqrt	GGT_1/Svd*
_output_shapes
:
*
T0*
_class
loc:@v/dense/bias

GGT_1/ConstConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:

	GGT_1/MinMinGGT_1/Sqrt_1GGT_1/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

GGT_1/Cast_1/xConst^GGT_1/group_deps*
dtype0*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *  ?
w
GGT_1/add_2AddGGT_1/Sqrt_1GGT_1/sigma_eps*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:


GGT_1/Pow/yConst^GGT_1/group_deps*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *  @@*
dtype0
p
	GGT_1/PowPowGGT_1/add_2GGT_1/Pow/y*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:

{
GGT_1/truediv_1RealDivGGT_1/Cast_1/x	GGT_1/Pow*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:


GGT_1/zerosConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueBÁ*    *
dtype0*
_output_shapes	
:Á

GGT_1/ExpandDims_1/dimConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

GGT_1/ExpandDims_1
ExpandDimsGGT_1/zerosGGT_1/ExpandDims_1/dim*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	Á*

Tdim0
m

GGT_1/DiagDiagGGT_1/truediv_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes

:


Ť
GGT_1/MatMul_1MatMulGGT_1/transposeGGT_1/ExpandDims*
transpose_a(*
_output_shapes

:
*
transpose_b( *
T0*
_class
loc:@v/dense/bias
Ľ
GGT_1/MatMul_2MatMulGGT_1/Svd:1GGT_1/MatMul_1*
T0*
_class
loc:@v/dense/bias*
transpose_a(*
_output_shapes

:
*
transpose_b( 
¤
GGT_1/MatMul_3MatMul
GGT_1/DiagGGT_1/MatMul_2*
_class
loc:@v/dense/bias*
transpose_a( *
_output_shapes

:
*
transpose_b( *
T0
Ľ
GGT_1/MatMul_4MatMulGGT_1/Svd:1GGT_1/MatMul_3*
T0*
_class
loc:@v/dense/bias*
transpose_a( *
_output_shapes

:
*
transpose_b( 
Ş
GGT_1/MatMul_5MatMulGGT_1/transposeGGT_1/MatMul_4*
T0*
_class
loc:@v/dense/bias*
transpose_a( *
_output_shapes
:	Á*
transpose_b( 

GGT_1/Cast_2/xConst^GGT_1/group_deps*
dtype0*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *  ?
{
GGT_1/truediv_2RealDivGGT_1/Cast_2/x	GGT_1/Svd*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:

o
GGT_1/Diag_1DiagGGT_1/truediv_2*
T0*
_class
loc:@v/dense/bias*
_output_shapes

:


Ť
GGT_1/MatMul_6MatMulGGT_1/transposeGGT_1/ExpandDims*
_class
loc:@v/dense/bias*
transpose_a(*
_output_shapes

:
*
transpose_b( *
T0
Ľ
GGT_1/MatMul_7MatMulGGT_1/Svd:1GGT_1/MatMul_6*
T0*
_class
loc:@v/dense/bias*
transpose_a(*
_output_shapes

:
*
transpose_b( 
Ś
GGT_1/MatMul_8MatMulGGT_1/Diag_1GGT_1/MatMul_7*
T0*
_class
loc:@v/dense/bias*
transpose_a( *
_output_shapes

:
*
transpose_b( 
Ľ
GGT_1/MatMul_9MatMulGGT_1/Svd:1GGT_1/MatMul_8*
T0*
_class
loc:@v/dense/bias*
transpose_a( *
_output_shapes

:
*
transpose_b( 
Ť
GGT_1/MatMul_10MatMulGGT_1/transposeGGT_1/MatMul_9*
transpose_b( *
T0*
_class
loc:@v/dense/bias*
transpose_a( *
_output_shapes
:	Á

GGT_1/sub_2SubGGT_1/ExpandDimsGGT_1/MatMul_10*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	Á
}
GGT_1/truediv_3RealDivGGT_1/sub_2	GGT_1/Min*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	Á
p
GGT_1/GreaterGreater	GGT_1/Min	GGT_1/eps*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
}
GGT_1/cond/SwitchSwitchGGT_1/GreaterGGT_1/Greater*
_output_shapes
: : *
T0
*
_class
loc:@v/dense/bias
v
GGT_1/cond/switch_tIdentityGGT_1/cond/Switch:1*
T0
*
_class
loc:@v/dense/bias*
_output_shapes
: 
t
GGT_1/cond/switch_fIdentityGGT_1/cond/Switch*
_output_shapes
: *
T0
*
_class
loc:@v/dense/bias
o
GGT_1/cond/pred_idIdentityGGT_1/Greater*
T0
*
_class
loc:@v/dense/bias*
_output_shapes
: 

GGT_1/cond/AddAddGGT_1/cond/Add/Switch:1GGT_1/cond/Add/Switch_1:1*
_class
loc:@v/dense/bias*
_output_shapes
:	Á*
T0

GGT_1/cond/Add/SwitchSwitchGGT_1/MatMul_5GGT_1/cond/pred_id*
_class
loc:@v/dense/bias**
_output_shapes
:	Á:	Á*
T0

GGT_1/cond/Add/Switch_1SwitchGGT_1/truediv_3GGT_1/cond/pred_id**
_output_shapes
:	Á:	Á*
T0*
_class
loc:@v/dense/bias

GGT_1/cond/Add_1AddGGT_1/cond/Add_1/SwitchGGT_1/cond/Add_1/Switch_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:	Á

GGT_1/cond/Add_1/SwitchSwitchGGT_1/ExpandDims_1GGT_1/cond/pred_id*
T0*
_class
loc:@v/dense/bias**
_output_shapes
:	Á:	Á

GGT_1/cond/Add_1/Switch_1SwitchGGT_1/MatMul_5GGT_1/cond/pred_id*
_class
loc:@v/dense/bias**
_output_shapes
:	Á:	Á*
T0

GGT_1/cond/MergeMergeGGT_1/cond/Add_1GGT_1/cond/Add*
N*!
_output_shapes
:	Á: *
T0*
_class
loc:@v/dense/bias

GGT_1/strided_slice/stackConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT_1/strided_slice/stack_1Const^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT_1/strided_slice/stack_2Const^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB:*
dtype0*
_output_shapes
:
Ć
GGT_1/strided_sliceStridedSliceGGT_1/cond/MergeGGT_1/strided_slice/stackGGT_1/strided_slice/stack_1GGT_1/strided_slice/stack_2*
Index0*
T0*
_class
loc:@v/dense/bias*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:	

GGT_1/Reshape/shapeConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB"       *
dtype0*
_output_shapes
:

GGT_1/ReshapeReshapeGGT_1/strided_sliceGGT_1/Reshape/shape*
T0*
_class
loc:@v/dense/bias*
Tshape0*
_output_shapes

: 
u
GGT_1/mul_3MulGGT_1/lrGGT_1/Reshape*
T0*
_class
loc:@v/dense/bias*
_output_shapes

: 
Ť
GGT_1/AssignSub	AssignSubv/dense/kernelGGT_1/mul_3*
use_locking( *
T0*4
_class*
(loc:@v/dense/biasloc:@v/dense/kernel*
_output_shapes

: 

GGT_1/strided_slice_1/stackConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT_1/strided_slice_1/stack_1Const^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT_1/strided_slice_1/stack_2Const^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB:*
dtype0*
_output_shapes
:
Í
GGT_1/strided_slice_1StridedSliceGGT_1/cond/MergeGGT_1/strided_slice_1/stackGGT_1/strided_slice_1/stack_1GGT_1/strided_slice_1/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes

: *
Index0*
T0*
_class
loc:@v/dense/bias

GGT_1/Reshape_1/shapeConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT_1/Reshape_1ReshapeGGT_1/strided_slice_1GGT_1/Reshape_1/shape*
T0*
_class
loc:@v/dense/bias*
Tshape0*
_output_shapes
: 
s
GGT_1/mul_4MulGGT_1/lrGGT_1/Reshape_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

GGT_1/AssignSub_1	AssignSubv/dense/biasGGT_1/mul_4*
use_locking( *
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

GGT_1/strided_slice_2/stackConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB:Ą*
dtype0*
_output_shapes
:

GGT_1/strided_slice_2/stack_1Const^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB:Á*
dtype0*
_output_shapes
:

GGT_1/strided_slice_2/stack_2Const^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB:*
dtype0*
_output_shapes
:
Í
GGT_1/strided_slice_2StridedSliceGGT_1/cond/MergeGGT_1/strided_slice_2/stackGGT_1/strided_slice_2/stack_1GGT_1/strided_slice_2/stack_2*
new_axis_mask *
end_mask *
_output_shapes

: *
Index0*
T0*
_class
loc:@v/dense/bias*
shrink_axis_mask *
ellipsis_mask *

begin_mask 

GGT_1/Reshape_2/shapeConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB"       *
dtype0*
_output_shapes
:
 
GGT_1/Reshape_2ReshapeGGT_1/strided_slice_2GGT_1/Reshape_2/shape*
_output_shapes

: *
T0*
_class
loc:@v/dense/bias*
Tshape0
w
GGT_1/mul_5MulGGT_1/lrGGT_1/Reshape_2*
_output_shapes

: *
T0*
_class
loc:@v/dense/bias
ą
GGT_1/AssignSub_2	AssignSubv/dense_1/kernelGGT_1/mul_5*
use_locking( *
T0*6
_class,
*loc:@v/dense/biasloc:@v/dense_1/kernel*
_output_shapes

: 

GGT_1/strided_slice_3/stackConst^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:

GGT_1/strided_slice_3/stack_1Const^GGT_1/group_deps*
_class
loc:@v/dense/bias*
valueB:Ą*
dtype0*
_output_shapes
:

GGT_1/strided_slice_3/stack_2Const^GGT_1/group_deps*
_output_shapes
:*
_class
loc:@v/dense/bias*
valueB:*
dtype0
Í
GGT_1/strided_slice_3StridedSliceGGT_1/cond/MergeGGT_1/strided_slice_3/stackGGT_1/strided_slice_3/stack_1GGT_1/strided_slice_3/stack_2*
Index0*
T0*
_class
loc:@v/dense/bias*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes

:

GGT_1/Reshape_3/shapeConst^GGT_1/group_deps*
_output_shapes
:*
_class
loc:@v/dense/bias*
valueB:*
dtype0

GGT_1/Reshape_3ReshapeGGT_1/strided_slice_3GGT_1/Reshape_3/shape*
_output_shapes
:*
T0*
_class
loc:@v/dense/bias*
Tshape0
s
GGT_1/mul_6MulGGT_1/lrGGT_1/Reshape_3*
_output_shapes
:*
T0*
_class
loc:@v/dense/bias
Š
GGT_1/AssignSub_3	AssignSubv/dense_1/biasGGT_1/mul_6*
_output_shapes
:*
use_locking( *
T0*4
_class*
(loc:@v/dense/biasloc:@v/dense_1/bias

GGT_1/group_deps_1NoOp^GGT_1/AssignSub^GGT_1/AssignSub_1^GGT_1/AssignSub_2^GGT_1/AssignSub_3^GGT_1/group_deps*
_class
loc:@v/dense/bias
"
GGT_1NoOp^GGT_1/group_deps_1
k
Reshape_28/shapeConst^GGT_1*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
p

Reshape_28Reshapev/dense/kernel/readReshape_28/shape*
_output_shapes	
:*
T0*
Tshape0
k
Reshape_29/shapeConst^GGT_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_29Reshapev/dense/bias/readReshape_29/shape*
T0*
Tshape0*
_output_shapes
: 
k
Reshape_30/shapeConst^GGT_1*
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
k
Reshape_31/shapeConst^GGT_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_31Reshapev/dense_1/bias/readReshape_31/shape*
T0*
Tshape0*
_output_shapes
:
W
concat_3/axisConst^GGT_1*
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
h
Const_7Const^GGT_1*
dtype0*
_output_shapes
:*%
valueB"              
[
split_3/split_dimConst^GGT_1*
value	B : *
dtype0*
_output_shapes
: 

split_3SplitVPyFunc_3Const_7split_3/split_dim*

Tlen0*
	num_split*$
_output_shapes
::::*
T0
i
Reshape_32/shapeConst^GGT_1*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_32Reshapesplit_3Reshape_32/shape*
T0*
Tshape0*
_output_shapes

: 
b
Reshape_33/shapeConst^GGT_1*
_output_shapes
:*
valueB: *
dtype0
e

Reshape_33Reshape	split_3:1Reshape_33/shape*
_output_shapes
: *
T0*
Tshape0
i
Reshape_34/shapeConst^GGT_1*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_34Reshape	split_3:2Reshape_34/shape*
_output_shapes

: *
T0*
Tshape0
b
Reshape_35/shapeConst^GGT_1*
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
Reshape_33*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
§
Assign_7Assignv/dense_1/kernel
Reshape_34*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel

Assign_8Assignv/dense_1/bias
Reshape_35*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
H
group_deps_2NoOp	^Assign_5	^Assign_6	^Assign_7	^Assign_8^GGT_1
+
group_deps_3NoOp^GGT_1^group_deps_2

initNoOp^flat_grad/Assign^flat_grad_1/Assign^global_step/Assign^global_step_1/Assign^grad_buffer/Assign^grad_buffer_1/Assign^moment1/Assign^moment1_1/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^pi/log_std/Assign^v/dense/bias/Assign^v/dense/kernel/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Assign
c
Reshape_36/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_36Reshapepi/dense/kernel/readReshape_36/shape*
T0*
Tshape0*
_output_shapes	
:
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

Reshape_38Reshapepi/dense_1/kernel/readReshape_38/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_39/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
p

Reshape_39Reshapepi/dense_1/bias/readReshape_39/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_40/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
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
˙˙˙˙˙˙˙˙˙*
dtype0
p

Reshape_41Reshapev/dense/kernel/readReshape_41/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_42/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_42Reshapev/dense/bias/readReshape_42/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_43/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_43Reshapev/dense_1/kernel/readReshape_43/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_44/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
o

Reshape_44Reshapev/dense_1/bias/readReshape_44/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_45/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
l

Reshape_45Reshapeglobal_step/readReshape_45/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_46/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
m

Reshape_46Reshapegrad_buffer/readReshape_46/shape*
_output_shapes	
:I*
T0*
Tshape0
c
Reshape_47/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
i

Reshape_47Reshapemoment1/readReshape_47/shape*
_output_shapes	
:¨*
T0*
Tshape0
c
Reshape_48/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
k

Reshape_48Reshapeflat_grad/readReshape_48/shape*
Tshape0*
_output_shapes	
:¨*
T0
c
Reshape_49/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
n

Reshape_49Reshapeglobal_step_1/readReshape_49/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_50/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_50Reshapegrad_buffer_1/readReshape_50/shape*
T0*
Tshape0*
_output_shapes	
:A
c
Reshape_51/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
k

Reshape_51Reshapemoment1_1/readReshape_51/shape*
T0*
Tshape0*
_output_shapes	
:Á
c
Reshape_52/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_52Reshapeflat_grad_1/readReshape_52/shape*
Tshape0*
_output_shapes	
:Á*
T0
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ť
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
Reshape_52concat_4/axis*
N*
_output_shapes

:×ł*

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

Const_8Const*Y
valuePBN"D                                 $  ¨  ¨        A  A  *
dtype0*
_output_shapes
:
S
split_4/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
split_4SplitVPyFunc_4Const_8split_4/split_dim*
T0*

Tlen0*
	num_split*X
_output_shapesF
D:::::::::::::::::
a
Reshape_53/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
g

Reshape_53Reshapesplit_4Reshape_53/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_54/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_54Reshape	split_4:1Reshape_54/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_55/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_55Reshape	split_4:2Reshape_55/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_56/shapeConst*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_56Reshape	split_4:3Reshape_56/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_57/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_57Reshape	split_4:4Reshape_57/shape*
Tshape0*
_output_shapes
:*
T0
a
Reshape_58/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_58Reshape	split_4:5Reshape_58/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_59/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_59Reshape	split_4:6Reshape_59/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_60/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_60Reshape	split_4:7Reshape_60/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_61/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_61Reshape	split_4:8Reshape_61/shape*
_output_shapes
:*
T0*
Tshape0
S
Reshape_62/shapeConst*
valueB *
dtype0*
_output_shapes
: 
a

Reshape_62Reshape	split_4:9Reshape_62/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_63/shapeConst*
_output_shapes
:*
valueB"
   ¨  *
dtype0
k

Reshape_63Reshape
split_4:10Reshape_63/shape*
Tshape0*
_output_shapes
:	
¨*
T0
[
Reshape_64/shapeConst*
dtype0*
_output_shapes
:*
valueB:¨
g

Reshape_64Reshape
split_4:11Reshape_64/shape*
T0*
Tshape0*
_output_shapes	
:¨
[
Reshape_65/shapeConst*
_output_shapes
:*
valueB:¨*
dtype0
g

Reshape_65Reshape
split_4:12Reshape_65/shape*
T0*
Tshape0*
_output_shapes	
:¨
S
Reshape_66/shapeConst*
valueB *
dtype0*
_output_shapes
: 
b

Reshape_66Reshape
split_4:13Reshape_66/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_67/shapeConst*
valueB"
   A  *
dtype0*
_output_shapes
:
k

Reshape_67Reshape
split_4:14Reshape_67/shape*
T0*
Tshape0*
_output_shapes
:	
Á
[
Reshape_68/shapeConst*
valueB:Á*
dtype0*
_output_shapes
:
g

Reshape_68Reshape
split_4:15Reshape_68/shape*
_output_shapes	
:Á*
T0*
Tshape0
[
Reshape_69/shapeConst*
_output_shapes
:*
valueB:Á*
dtype0
g

Reshape_69Reshape
split_4:16Reshape_69/shape*
_output_shapes	
:Á*
T0*
Tshape0
Ľ
Assign_9Assignpi/dense/kernel
Reshape_53*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 

	Assign_10Assignpi/dense/bias
Reshape_54*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Ş
	Assign_11Assignpi/dense_1/kernel
Reshape_55*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
˘
	Assign_12Assignpi/dense_1/bias
Reshape_56*
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
Reshape_57*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std
¤
	Assign_14Assignv/dense/kernel
Reshape_58*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel

	Assign_15Assignv/dense/bias
Reshape_59*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
¨
	Assign_16Assignv/dense_1/kernel
Reshape_60*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
 
	Assign_17Assignv/dense_1/bias
Reshape_61*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:

	Assign_18Assignglobal_step
Reshape_62* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ą
	Assign_19Assigngrad_buffer
Reshape_63*
validate_shape(*
_output_shapes
:	
¨*
use_locking(*
T0* 
_class
loc:@pi/dense/bias

	Assign_20Assignmoment1
Reshape_64*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes	
:¨

	Assign_21Assign	flat_grad
Reshape_65*
_output_shapes	
:¨*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(

	Assign_22Assignglobal_step_1
Reshape_66*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
˘
	Assign_23Assigngrad_buffer_1
Reshape_67*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:	
Á*
use_locking(*
T0

	Assign_24Assign	moment1_1
Reshape_68*
_output_shapes	
:Á*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(

	Assign_25Assignflat_grad_1
Reshape_69*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes	
:Á
ß
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
^Assign_25	^Assign_9
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

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_c8be8eaa52a348308d8efd99d5d6a289/part*
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
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ö
save/SaveV2/tensor_namesConst*
value˙BüB	flat_gradBflat_grad_1Bglobal_stepBglobal_step_1Bgrad_bufferBgrad_buffer_1Bmoment1B	moment1_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelB
pi/log_stdBv/dense/biasBv/dense/kernelBv/dense_1/biasBv/dense_1/kernel*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ř
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices	flat_gradflat_grad_1global_stepglobal_step_1grad_buffergrad_buffer_1moment1	moment1_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernel
pi/log_stdv/dense/biasv/dense/kernelv/dense_1/biasv/dense_1/kernel*
dtypes
2
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
Ů
save/RestoreV2/tensor_namesConst*
value˙BüB	flat_gradBflat_grad_1Bglobal_stepBglobal_step_1Bgrad_bufferBgrad_buffer_1Bmoment1B	moment1_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelB
pi/log_stdBv/dense/biasBv/dense/kernelBv/dense_1/biasBv/dense_1/kernel*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*5
value,B*B B B B B B B B B B B B B B B B B 
ŕ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*X
_output_shapesF
D:::::::::::::::::*
dtypes
2
Ą
save/AssignAssign	flat_gradsave/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes	
:¨
Ś
save/Assign_1Assignflat_grad_1save/RestoreV2:1*
_output_shapes	
:Á*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
˘
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Ł
save/Assign_3Assignglobal_step_1save/RestoreV2:3*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ť
save/Assign_4Assigngrad_buffersave/RestoreV2:4*
_output_shapes
:	
¨*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Ź
save/Assign_5Assigngrad_buffer_1save/RestoreV2:5*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:	
Á*
use_locking(*
T0
Ł
save/Assign_6Assignmoment1save/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes	
:¨
¤
save/Assign_7Assign	moment1_1save/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes	
:Á
¨
save/Assign_8Assignpi/dense/biassave/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
°
save/Assign_9Assignpi/dense/kernelsave/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
Ž
save/Assign_10Assignpi/dense_1/biassave/RestoreV2:10*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
ś
save/Assign_11Assignpi/dense_1/kernelsave/RestoreV2:11*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
¤
save/Assign_12Assign
pi/log_stdsave/RestoreV2:12*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
¨
save/Assign_13Assignv/dense/biassave/RestoreV2:13*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
°
save/Assign_14Assignv/dense/kernelsave/RestoreV2:14*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
Ź
save/Assign_15Assignv/dense_1/biassave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
´
save/Assign_16Assignv/dense_1/kernelsave/RestoreV2:16*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Ż
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

GGT
GGT_1"Ź
cond_context
Ë
GGT/cond/cond_textGGT/cond/pred_id:0GGT/cond/switch_t:0 *
GGT/MatMul_5:0
GGT/cond/Add/Switch:1
GGT/cond/Add/Switch_1:1
GGT/cond/Add:0
GGT/cond/pred_id:0
GGT/cond/switch_t:0
GGT/truediv_3:0'
GGT/MatMul_5:0GGT/cond/Add/Switch:1*
GGT/truediv_3:0GGT/cond/Add/Switch_1:1(
GGT/cond/pred_id:0GGT/cond/pred_id:0
Ű
GGT/cond/cond_text_1GGT/cond/pred_id:0GGT/cond/switch_f:0*
GGT/ExpandDims_1:0
GGT/MatMul_5:0
GGT/cond/Add_1/Switch:0
GGT/cond/Add_1/Switch_1:0
GGT/cond/Add_1:0
GGT/cond/pred_id:0
GGT/cond/switch_f:0(
GGT/cond/pred_id:0GGT/cond/pred_id:0+
GGT/MatMul_5:0GGT/cond/Add_1/Switch_1:0-
GGT/ExpandDims_1:0GGT/cond/Add_1/Switch:0
ë
GGT_1/cond/cond_textGGT_1/cond/pred_id:0GGT_1/cond/switch_t:0 *Ł
GGT_1/MatMul_5:0
GGT_1/cond/Add/Switch:1
GGT_1/cond/Add/Switch_1:1
GGT_1/cond/Add:0
GGT_1/cond/pred_id:0
GGT_1/cond/switch_t:0
GGT_1/truediv_3:0+
GGT_1/MatMul_5:0GGT_1/cond/Add/Switch:1.
GGT_1/truediv_3:0GGT_1/cond/Add/Switch_1:1,
GGT_1/cond/pred_id:0GGT_1/cond/pred_id:0
ű
GGT_1/cond/cond_text_1GGT_1/cond/pred_id:0GGT_1/cond/switch_f:0*ł
GGT_1/ExpandDims_1:0
GGT_1/MatMul_5:0
GGT_1/cond/Add_1/Switch:0
GGT_1/cond/Add_1/Switch_1:0
GGT_1/cond/Add_1:0
GGT_1/cond/pred_id:0
GGT_1/cond/switch_f:0,
GGT_1/cond/pred_id:0GGT_1/cond/pred_id:0/
GGT_1/MatMul_5:0GGT_1/cond/Add_1/Switch_1:01
GGT_1/ExpandDims_1:0GGT_1/cond/Add_1/Switch:0"ë
	variablesÝÚ
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
A
global_step:0global_step/Assignglobal_step/read:02Cast/x:0
@
grad_buffer:0grad_buffer/Assigngrad_buffer/read:02zeros:0
6
	moment1:0moment1/Assignmoment1/read:02	zeros_1:0
<
flat_grad:0flat_grad/Assignflat_grad/read:02	zeros_2:0
I
global_step_1:0global_step_1/Assignglobal_step_1/read:02
Cast_1/x:0
H
grad_buffer_1:0grad_buffer_1/Assigngrad_buffer_1/read:02	zeros_3:0
<
moment1_1:0moment1_1/Assignmoment1_1/read:02	zeros_4:0
B
flat_grad_1:0flat_grad_1/Assignflat_grad_1/read:02	zeros_5:0"ă
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
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08*§
serving_default
)
x$
Placeholder:0˙˙˙˙˙˙˙˙˙#
v
v/Squeeze:0˙˙˙˙˙˙˙˙˙%
pi
pi/add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict