ąÝ
Ž'ú&
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

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
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
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
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
¨
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
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
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'ĹĽ
p
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_4Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense/kernel*
valueB"       

.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *řKFž*
dtype0*
_output_shapes
: 

.pi/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
valueB
 *řKF>*
dtype0
ď
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	 *

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2
Ú
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
í
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 
ß
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 
Š
pi/dense/kernel
VariableV2*
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name *"
_class
loc:@pi/dense/kernel*
	container 
Ô
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 

pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 
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
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
t
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC
]
pi/dense/CRelu/NegNegpi/dense/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
^
pi/dense/CRelu/axisConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

pi/dense/CReluConcatV2pi/dense/BiasAddpi/dense/CRelu/Negpi/dense/CRelu/axis*

Tidx0*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
]
pi/dense/CRelu/ReluRelupi/dense/CRelu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Š
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"@   	   *
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *-Éž*
dtype0

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *-É>*
dtype0*
_output_shapes
: 
ô
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
seed2*
dtype0*
_output_shapes

:@	*

seed *
T0*$
_class
loc:@pi/dense_1/kernel
â
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
ô
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@	
ć
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@	
Ť
pi/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:@	*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:@	
Ű
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@	

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
_output_shapes

:@	*
T0*$
_class
loc:@pi/dense_1/kernel

!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB	*    *
dtype0*
_output_shapes
:	

pi/dense_1/bias
VariableV2*
shape:	*
dtype0*
_output_shapes
:	*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container 
Ć
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:	
 
pi/dense_1/MatMulMatMulpi/dense/CRelu/Relupi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
transpose_b( 

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0
a
pi/LogSoftmax
LogSoftmaxpi/dense_1/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0
h
&pi/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
Ä
pi/multinomial/MultinomialMultinomialpi/dense_1/BiasAdd&pi/multinomial/Multinomial/num_samples*
seed2**'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

seed *
output_dtype0	*
T0
v

pi/SqueezeSqueezepi/multinomial/Multinomial*
squeeze_dims
*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
pi/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Y
pi/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
pi/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :	
ą

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
z
pi/SumSumpi/mulpi/Sum/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( 
Z
pi/one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
pi/one_hot_1/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
T
pi/one_hot_1/depthConst*
_output_shapes
: *
value	B :	*
dtype0
ś
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
TI0	*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0
Ł
/v/dense/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@v/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:

-v/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
valueB
 *řKFž

-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *řKF>*
dtype0*
_output_shapes
: 
ě
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	 *

seed *
T0*!
_class
loc:@v/dense/kernel*
seed2>
Ö
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
é
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
Ű
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
§
v/dense/kernel
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape:	 *
dtype0*
_output_shapes
:	 
Đ
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
|
v/dense/kernel/readIdentityv/dense/kernel*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 *
T0
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
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
q
v/dense/bias/readIdentityv/dense/bias*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
[
v/dense/CRelu/NegNegv/dense/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
]
v/dense/CRelu/axisConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0

v/dense/CReluConcatV2v/dense/BiasAddv/dense/CRelu/Negv/dense/CRelu/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*

Tidx0
[
v/dense/CRelu/ReluReluv/dense/CRelu*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
§
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB"@      

/v/dense_1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *ž*
dtype0*
_output_shapes
: 

/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *>*
dtype0*
_output_shapes
: 
ń
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*#
_class
loc:@v/dense_1/kernel*
seed2R*
dtype0*
_output_shapes

:@*

seed *
T0
Ţ
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
đ
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@
â
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@
Š
v/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
:@
×
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(

v/dense_1/kernel/readIdentityv/dense_1/kernel*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@
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
VariableV2*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Â
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
w
v/dense_1/bias/readIdentityv/dense_1/bias*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias

v/dense_1/MatMulMatMulv/dense/CRelu/Reluv/dense_1/kernel/read*
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
MeanMeanmulConst*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
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
pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
D
powPowsubpow/y*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
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
sub_1SubPlaceholder_4pi/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
Mean_3MeanNeg_1Const_3*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
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
gradients/Mean_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
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

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
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
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
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
a
gradients/pi/Sum_grad/ShapeShapepi/mul*
_output_shapes
:*
T0*
out_type0

gradients/pi/Sum_grad/SizeConst*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0
§
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
­
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: *
T0

gradients/pi/Sum_grad/Shape_1Const*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
valueB *
dtype0*
_output_shapes
: 

!gradients/pi/Sum_grad/range/startConst*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B : *
dtype0

!gradients/pi/Sum_grad/range/deltaConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ţ
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
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
#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
N*
_output_shapes
:*
T0

gradients/pi/Sum_grad/Maximum/yConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ă
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
_output_shapes
:*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
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
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*

Tmultiples0*
T0
e
gradients/pi/mul_grad/ShapeShape
pi/one_hot*
out_type0*
_output_shapes
:*
T0
j
gradients/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
_output_shapes
:*
T0*
out_type0
˝
+gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_grad/Shapegradients/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
}
gradients/pi/mul_grad/MulMulgradients/pi/Sum_grad/Tilepi/LogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
¨
gradients/pi/mul_grad/SumSumgradients/pi/mul_grad/Mul+gradients/pi/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
 
gradients/pi/mul_grad/ReshapeReshapegradients/pi/mul_grad/Sumgradients/pi/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
|
gradients/pi/mul_grad/Mul_1Mul
pi/one_hotgradients/pi/Sum_grad/Tile*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0
Ž
gradients/pi/mul_grad/Sum_1Sumgradients/pi/mul_grad/Mul_1-gradients/pi/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ś
gradients/pi/mul_grad/Reshape_1Reshapegradients/pi/mul_grad/Sum_1gradients/pi/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
p
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Reshape ^gradients/pi/mul_grad/Reshape_1
ć
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Reshape'^gradients/pi/mul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0*0
_class&
$"loc:@gradients/pi/mul_grad/Reshape
ě
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Reshape_1'^gradients/pi/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
h
 gradients/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
}
2gradients/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ü
 gradients/pi/LogSoftmax_grad/SumSum0gradients/pi/mul_grad/tuple/control_dependency_12gradients/pi/LogSoftmax_grad/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims(*
T0

 gradients/pi/LogSoftmax_grad/mulMul gradients/pi/LogSoftmax_grad/Sum gradients/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
­
 gradients/pi/LogSoftmax_grad/subSub0gradients/pi/mul_grad/tuple/control_dependency_1 gradients/pi/LogSoftmax_grad/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0

-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:	

2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp!^gradients/pi/LogSoftmax_grad/sub.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad

:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity gradients/pi/LogSoftmax_grad/sub3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/pi/LogSoftmax_grad/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	

<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:	
Ý
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b(*
T0
Ó
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/CRelu/Relu:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@	*
transpose_b( 

1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1

9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@	
š
+gradients/pi/dense/CRelu/Relu_grad/ReluGradReluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/CRelu/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
d
"gradients/pi/dense/CRelu_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 

!gradients/pi/dense/CRelu_grad/modFloorModpi/dense/CRelu/axis"gradients/pi/dense/CRelu_grad/Rank*
_output_shapes
: *
T0
s
#gradients/pi/dense/CRelu_grad/ShapeShapepi/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:

$gradients/pi/dense/CRelu_grad/ShapeNShapeNpi/dense/BiasAddpi/dense/CRelu/Neg*
N* 
_output_shapes
::*
T0*
out_type0
Ö
*gradients/pi/dense/CRelu_grad/ConcatOffsetConcatOffset!gradients/pi/dense/CRelu_grad/mod$gradients/pi/dense/CRelu_grad/ShapeN&gradients/pi/dense/CRelu_grad/ShapeN:1*
N* 
_output_shapes
::
ę
#gradients/pi/dense/CRelu_grad/SliceSlice+gradients/pi/dense/CRelu/Relu_grad/ReluGrad*gradients/pi/dense/CRelu_grad/ConcatOffset$gradients/pi/dense/CRelu_grad/ShapeN*
T0*
Index0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
đ
%gradients/pi/dense/CRelu_grad/Slice_1Slice+gradients/pi/dense/CRelu/Relu_grad/ReluGrad,gradients/pi/dense/CRelu_grad/ConcatOffset:1&gradients/pi/dense/CRelu_grad/ShapeN:1*
T0*
Index0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

.gradients/pi/dense/CRelu_grad/tuple/group_depsNoOp$^gradients/pi/dense/CRelu_grad/Slice&^gradients/pi/dense/CRelu_grad/Slice_1

6gradients/pi/dense/CRelu_grad/tuple/control_dependencyIdentity#gradients/pi/dense/CRelu_grad/Slice/^gradients/pi/dense/CRelu_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/dense/CRelu_grad/Slice*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

8gradients/pi/dense/CRelu_grad/tuple/control_dependency_1Identity%gradients/pi/dense/CRelu_grad/Slice_1/^gradients/pi/dense/CRelu_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*8
_class.
,*loc:@gradients/pi/dense/CRelu_grad/Slice_1

%gradients/pi/dense/CRelu/Neg_grad/NegNeg8gradients/pi/dense/CRelu_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
č
gradients/AddNAddN6gradients/pi/dense/CRelu_grad/tuple/control_dependency%gradients/pi/dense/CRelu/Neg_grad/Neg*6
_class,
*(loc:@gradients/pi/dense/CRelu_grad/Slice*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN*
T0*
data_formatNHWC*
_output_shapes
: 
w
0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad
ń
8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/dense/CRelu_grad/Slice*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Ř
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	 *
transpose_b( 

/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1

7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul

9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	 *
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1
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
: 
b
Reshape_1/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
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
:Ŕ
b
Reshape_3/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
Tshape0*
_output_shapes
:	*
T0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3concat/axis*

Tidx0*
T0*
N*
_output_shapes	
:é$
g
PyFuncPyFuncconcat*
Tout
2*
token
pyfunc_0*
Tin
2*
_output_shapes	
:é$
`
Const_4Const*%
valueB"       @  	   *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

splitSplitVPyFuncConst_4split/split_dim*

Tlen0*
	num_split*.
_output_shapes
: : :Ŕ:	*
T0
`
Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
d
	Reshape_4ReshapesplitReshape_4/shape*
T0*
Tshape0*
_output_shapes
:	 
Y
Reshape_5/shapeConst*
valueB: *
dtype0*
_output_shapes
:
a
	Reshape_5Reshapesplit:1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
: 
`
Reshape_6/shapeConst*
valueB"@   	   *
dtype0*
_output_shapes
:
e
	Reshape_6Reshapesplit:2Reshape_6/shape*
_output_shapes

:@	*
T0*
Tshape0
Y
Reshape_7/shapeConst*
valueB:	*
dtype0*
_output_shapes
:
a
	Reshape_7Reshapesplit:3Reshape_7/shape*
_output_shapes
:	*
T0*
Tshape0
b
GradientDescent/learning_rateConst*
valueB
 *RI9*
dtype0*
_output_shapes
: 
ď
;GradientDescent/update_pi/dense/kernel/ApplyGradientDescentApplyGradientDescentpi/dense/kernelGradientDescent/learning_rate	Reshape_4*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 *
use_locking( 
ä
9GradientDescent/update_pi/dense/bias/ApplyGradientDescentApplyGradientDescentpi/dense/biasGradientDescent/learning_rate	Reshape_5*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
ô
=GradientDescent/update_pi/dense_1/kernel/ApplyGradientDescentApplyGradientDescentpi/dense_1/kernelGradientDescent/learning_rate	Reshape_6*
_output_shapes

:@	*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel
ę
;GradientDescent/update_pi/dense_1/bias/ApplyGradientDescentApplyGradientDescentpi/dense_1/biasGradientDescent/learning_rate	Reshape_7*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:	

GradientDescentNoOp:^GradientDescent/update_pi/dense/bias/ApplyGradientDescent<^GradientDescent/update_pi/dense/kernel/ApplyGradientDescent<^GradientDescent/update_pi/dense_1/bias/ApplyGradientDescent>^GradientDescent/update_pi/dense_1/kernel/ApplyGradientDescent
t
Reshape_8/shapeConst^GradientDescent*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
o
	Reshape_8Reshapepi/dense/kernel/readReshape_8/shape*
_output_shapes	
: *
T0*
Tshape0
t
Reshape_9/shapeConst^GradientDescent*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
l
	Reshape_9Reshapepi/dense/bias/readReshape_9/shape*
T0*
Tshape0*
_output_shapes
: 
u
Reshape_10/shapeConst^GradientDescent*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
s

Reshape_10Reshapepi/dense_1/kernel/readReshape_10/shape*
_output_shapes	
:Ŕ*
T0*
Tshape0
u
Reshape_11/shapeConst^GradientDescent*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_11Reshapepi/dense_1/bias/readReshape_11/shape*
T0*
Tshape0*
_output_shapes
:	
a
concat_1/axisConst^GradientDescent*
value	B : *
dtype0*
_output_shapes
: 

concat_1ConcatV2	Reshape_8	Reshape_9
Reshape_10
Reshape_11concat_1/axis*
T0*
N*
_output_shapes	
:é$*

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
r
Const_5Const^GradientDescent*%
valueB"       @  	   *
dtype0*
_output_shapes
:
e
split_1/split_dimConst^GradientDescent*
_output_shapes
: *
value	B : *
dtype0

split_1SplitVPyFunc_1Const_5split_1/split_dim*
T0*

Tlen0*
	num_split*$
_output_shapes
::::
s
Reshape_12/shapeConst^GradientDescent*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_12Reshapesplit_1Reshape_12/shape*
T0*
Tshape0*
_output_shapes
:	 
l
Reshape_13/shapeConst^GradientDescent*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_13Reshape	split_1:1Reshape_13/shape*
T0*
Tshape0*
_output_shapes
: 
s
Reshape_14/shapeConst^GradientDescent*
valueB"@   	   *
dtype0*
_output_shapes
:
i

Reshape_14Reshape	split_1:2Reshape_14/shape*
_output_shapes

:@	*
T0*
Tshape0
l
Reshape_15/shapeConst^GradientDescent*
_output_shapes
:*
valueB:	*
dtype0
e

Reshape_15Reshape	split_1:3Reshape_15/shape*
Tshape0*
_output_shapes
:	*
T0
¤
AssignAssignpi/dense/kernel
Reshape_12*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 

Assign_1Assignpi/dense/bias
Reshape_13*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Š
Assign_2Assignpi/dense_1/kernel
Reshape_14*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@	
Ą
Assign_3Assignpi/dense_1/bias
Reshape_15*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
N

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3^GradientDescent
3
group_deps_1NoOp^GradientDescent^group_deps
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
Ś
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
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
gradients_1/pow_grad/sub/yConst*
valueB
 *  ?*
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
:˙˙˙˙˙˙˙˙˙
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
gradients_1/pow_grad/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersubgradients_1/pow_grad/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
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
gradients_1/sub_grad/Shape_1Shape	v/Squeeze*
out_type0*
_output_shapes
:*
T0
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
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
gradients_1/sub_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
^
gradients_1/sub_grad/NegNeggradients_1/sub_grad/Sum_1*
_output_shapes
:*
T0

gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
Ţ
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape
ä
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0
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
:˙˙˙˙˙˙˙˙˙@*
transpose_b(*
T0
Ô
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/CRelu/Relu;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@

2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1

:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul

<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
ş
,gradients_1/v/dense/CRelu/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/CRelu/Relu*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
e
#gradients_1/v/dense/CRelu_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 

"gradients_1/v/dense/CRelu_grad/modFloorModv/dense/CRelu/axis#gradients_1/v/dense/CRelu_grad/Rank*
T0*
_output_shapes
: 
s
$gradients_1/v/dense/CRelu_grad/ShapeShapev/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:

%gradients_1/v/dense/CRelu_grad/ShapeNShapeNv/dense/BiasAddv/dense/CRelu/Neg*
T0*
out_type0*
N* 
_output_shapes
::
Ú
+gradients_1/v/dense/CRelu_grad/ConcatOffsetConcatOffset"gradients_1/v/dense/CRelu_grad/mod%gradients_1/v/dense/CRelu_grad/ShapeN'gradients_1/v/dense/CRelu_grad/ShapeN:1*
N* 
_output_shapes
::
î
$gradients_1/v/dense/CRelu_grad/SliceSlice,gradients_1/v/dense/CRelu/Relu_grad/ReluGrad+gradients_1/v/dense/CRelu_grad/ConcatOffset%gradients_1/v/dense/CRelu_grad/ShapeN*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
Index0
ô
&gradients_1/v/dense/CRelu_grad/Slice_1Slice,gradients_1/v/dense/CRelu/Relu_grad/ReluGrad-gradients_1/v/dense/CRelu_grad/ConcatOffset:1'gradients_1/v/dense/CRelu_grad/ShapeN:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
Index0

/gradients_1/v/dense/CRelu_grad/tuple/group_depsNoOp%^gradients_1/v/dense/CRelu_grad/Slice'^gradients_1/v/dense/CRelu_grad/Slice_1

7gradients_1/v/dense/CRelu_grad/tuple/control_dependencyIdentity$gradients_1/v/dense/CRelu_grad/Slice0^gradients_1/v/dense/CRelu_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/v/dense/CRelu_grad/Slice*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

9gradients_1/v/dense/CRelu_grad/tuple/control_dependency_1Identity&gradients_1/v/dense/CRelu_grad/Slice_10^gradients_1/v/dense/CRelu_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/CRelu_grad/Slice_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

&gradients_1/v/dense/CRelu/Neg_grad/NegNeg9gradients_1/v/dense/CRelu_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
í
gradients_1/AddNAddN7gradients_1/v/dense/CRelu_grad/tuple/control_dependency&gradients_1/v/dense/CRelu/Neg_grad/Neg*
T0*7
_class-
+)loc:@gradients_1/v/dense/CRelu_grad/Slice*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN*
T0*
data_formatNHWC*
_output_shapes
: 
{
1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad
ö
9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/v/dense/CRelu_grad/Slice*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
: *
T0*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad
Ů
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
Ę
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	 *
transpose_b( *
T0

0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1

8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes
:	 
c
Reshape_16/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_16Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_16/shape*
Tshape0*
_output_shapes	
: *
T0
c
Reshape_17/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_17Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_17/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_18/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_18Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_18/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_19/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_19Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_19/shape*
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
Reshape_16
Reshape_17
Reshape_18
Reshape_19concat_2/axis*
T0*
N*
_output_shapes	
:á *

Tidx0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:á *
Tout
2*
token
pyfunc_2
`
Const_6Const*%
valueB"       @      *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
_output_shapes
: *
value	B : *
dtype0

split_2SplitVPyFunc_2Const_6split_2/split_dim*

Tlen0*
	num_split*-
_output_shapes
: : :@:*
T0
a
Reshape_20/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_20Reshapesplit_2Reshape_20/shape*
T0*
Tshape0*
_output_shapes
:	 
Z
Reshape_21/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_21Reshape	split_2:1Reshape_21/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_22/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_22Reshape	split_2:2Reshape_22/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_23/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_23Reshape	split_2:3Reshape_23/shape*
T0*
Tshape0*
_output_shapes
:
d
GradientDescent_1/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
ń
<GradientDescent_1/update_v/dense/kernel/ApplyGradientDescentApplyGradientDescentv/dense/kernelGradientDescent_1/learning_rate
Reshape_20*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
ć
:GradientDescent_1/update_v/dense/bias/ApplyGradientDescentApplyGradientDescentv/dense/biasGradientDescent_1/learning_rate
Reshape_21*
use_locking( *
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
ö
>GradientDescent_1/update_v/dense_1/kernel/ApplyGradientDescentApplyGradientDescentv/dense_1/kernelGradientDescent_1/learning_rate
Reshape_22*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@
ě
<GradientDescent_1/update_v/dense_1/bias/ApplyGradientDescentApplyGradientDescentv/dense_1/biasGradientDescent_1/learning_rate
Reshape_23*!
_class
loc:@v/dense_1/bias*
_output_shapes
:*
use_locking( *
T0

GradientDescent_1NoOp;^GradientDescent_1/update_v/dense/bias/ApplyGradientDescent=^GradientDescent_1/update_v/dense/kernel/ApplyGradientDescent=^GradientDescent_1/update_v/dense_1/bias/ApplyGradientDescent?^GradientDescent_1/update_v/dense_1/kernel/ApplyGradientDescent
w
Reshape_24/shapeConst^GradientDescent_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_24Reshapev/dense/kernel/readReshape_24/shape*
_output_shapes	
: *
T0*
Tshape0
w
Reshape_25/shapeConst^GradientDescent_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_25Reshapev/dense/bias/readReshape_25/shape*
Tshape0*
_output_shapes
: *
T0
w
Reshape_26/shapeConst^GradientDescent_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_26Reshapev/dense_1/kernel/readReshape_26/shape*
Tshape0*
_output_shapes
:@*
T0
w
Reshape_27/shapeConst^GradientDescent_1*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
o

Reshape_27Reshapev/dense_1/bias/readReshape_27/shape*
Tshape0*
_output_shapes
:*
T0
c
concat_3/axisConst^GradientDescent_1*
dtype0*
_output_shapes
: *
value	B : 

concat_3ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27concat_3/axis*

Tidx0*
T0*
N*
_output_shapes	
:á 
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
t
Const_7Const^GradientDescent_1*%
valueB"       @      *
dtype0*
_output_shapes
:
g
split_3/split_dimConst^GradientDescent_1*
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
u
Reshape_28/shapeConst^GradientDescent_1*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_28Reshapesplit_3Reshape_28/shape*
T0*
Tshape0*
_output_shapes
:	 
n
Reshape_29/shapeConst^GradientDescent_1*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_29Reshape	split_3:1Reshape_29/shape*
T0*
Tshape0*
_output_shapes
: 
u
Reshape_30/shapeConst^GradientDescent_1*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_30Reshape	split_3:2Reshape_30/shape*
Tshape0*
_output_shapes

:@*
T0
n
Reshape_31/shapeConst^GradientDescent_1*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_31Reshape	split_3:3Reshape_31/shape*
_output_shapes
:*
T0*
Tshape0
¤
Assign_4Assignv/dense/kernel
Reshape_28*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 

Assign_5Assignv/dense/bias
Reshape_29*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
§
Assign_6Assignv/dense_1/kernel
Reshape_30*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@

Assign_7Assignv/dense_1/bias
Reshape_31*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
T
group_deps_2NoOp	^Assign_4	^Assign_5	^Assign_6	^Assign_7^GradientDescent_1
7
group_deps_3NoOp^GradientDescent_1^group_deps_2
Đ
initNoOp^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^v/dense/bias/Assign^v/dense/kernel/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Assign
c
Reshape_32/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_32Reshapepi/dense/kernel/readReshape_32/shape*
Tshape0*
_output_shapes	
: *
T0
c
Reshape_33/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
n

Reshape_33Reshapepi/dense/bias/readReshape_33/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_34/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_34Reshapepi/dense_1/kernel/readReshape_34/shape*
T0*
Tshape0*
_output_shapes	
:Ŕ
c
Reshape_35/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
p

Reshape_35Reshapepi/dense_1/bias/readReshape_35/shape*
_output_shapes
:	*
T0*
Tshape0
c
Reshape_36/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_36Reshapev/dense/kernel/readReshape_36/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_37/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_37Reshapev/dense/bias/readReshape_37/shape*
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
q

Reshape_38Reshapev/dense_1/kernel/readReshape_38/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_39/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_39Reshapev/dense_1/bias/readReshape_39/shape*
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
ž
concat_4ConcatV2
Reshape_32
Reshape_33
Reshape_34
Reshape_35
Reshape_36
Reshape_37
Reshape_38
Reshape_39concat_4/axis*

Tidx0*
T0*
N*
_output_shapes	
:ĘE
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
p
Const_8Const*5
value,B*"        @  	          @      *
dtype0*
_output_shapes
:
S
split_4/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

split_4SplitVPyFunc_4Const_8split_4/split_dim*
T0*

Tlen0*
	num_split*4
_output_shapes"
 ::::::::
a
Reshape_40/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_40Reshapesplit_4Reshape_40/shape*
T0*
Tshape0*
_output_shapes
:	 
Z
Reshape_41/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_41Reshape	split_4:1Reshape_41/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_42/shapeConst*
valueB"@   	   *
dtype0*
_output_shapes
:
i

Reshape_42Reshape	split_4:2Reshape_42/shape*
Tshape0*
_output_shapes

:@	*
T0
Z
Reshape_43/shapeConst*
valueB:	*
dtype0*
_output_shapes
:
e

Reshape_43Reshape	split_4:3Reshape_43/shape*
T0*
Tshape0*
_output_shapes
:	
a
Reshape_44/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_44Reshape	split_4:4Reshape_44/shape*
T0*
Tshape0*
_output_shapes
:	 
Z
Reshape_45/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_45Reshape	split_4:5Reshape_45/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_46/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
i

Reshape_46Reshape	split_4:6Reshape_46/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_47/shapeConst*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_47Reshape	split_4:7Reshape_47/shape*
T0*
Tshape0*
_output_shapes
:
Ś
Assign_8Assignpi/dense/kernel
Reshape_40*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(

Assign_9Assignpi/dense/bias
Reshape_41*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Ş
	Assign_10Assignpi/dense_1/kernel
Reshape_42*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@	*
use_locking(*
T0
˘
	Assign_11Assignpi/dense_1/bias
Reshape_43*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
Ľ
	Assign_12Assignv/dense/kernel
Reshape_44*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0

	Assign_13Assignv/dense/bias
Reshape_45*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
¨
	Assign_14Assignv/dense_1/kernel
Reshape_46*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@
 
	Assign_15Assignv/dense_1/bias
Reshape_47*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
r
group_deps_4NoOp
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15	^Assign_8	^Assign_9
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
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_ffc98f51c7a6438d842e6d3b52759306/part*
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
ć
save/SaveV2/tensor_namesConst*
valueBBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/kernelBv/dense_1/biasBv/dense_1/kernel*
dtype0*
_output_shapes
:
s
save/SaveV2/shape_and_slicesConst*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
˙
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/kernelv/dense_1/biasv/dense_1/kernel*
dtypes

2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
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
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
é
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/kernelBv/dense_1/biasBv/dense_1/kernel
v
save/RestoreV2/shape_and_slicesConst*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
ł
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*4
_output_shapes"
 ::::::::*
dtypes

2
¤
save/AssignAssignpi/dense/biassave/RestoreV2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ą
save/Assign_1Assignpi/dense/kernelsave/RestoreV2:1*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
Ź
save/Assign_2Assignpi/dense_1/biassave/RestoreV2:2*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	*
use_locking(
´
save/Assign_3Assignpi/dense_1/kernelsave/RestoreV2:3*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@	
Ś
save/Assign_4Assignv/dense/biassave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
Ż
save/Assign_5Assignv/dense/kernelsave/RestoreV2:5*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
Ş
save/Assign_6Assignv/dense_1/biassave/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
˛
save/Assign_7Assignv/dense_1/kernelsave/RestoreV2:7*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"
trainable_variables÷ô
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08"2
train_op&
$
GradientDescent
GradientDescent_1"
	variables÷ô
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08*¨
serving_default
*
x%
Placeholder:0˙˙˙˙˙˙˙˙˙#
v
v/Squeeze:0˙˙˙˙˙˙˙˙˙%
pi
pi/Squeeze:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict