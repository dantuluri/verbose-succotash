Ę	
Ť%÷$
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
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
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'ő
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
0pi/dense/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@pi/dense/kernel*
valueB"   @   *
dtype0*
_output_shapes
:

.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *ó5ž*
dtype0*
_output_shapes
: 

.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
ď
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	@*

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
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	@*
T0
ß
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	@
Š
pi/dense/kernel
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape:	@
Ô
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@

pi/dense/kernel/readIdentitypi/dense/kernel*
_output_shapes
:	@*
T0*"
_class
loc:@pi/dense/kernel

pi/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@* 
_class
loc:@pi/dense/bias*
valueB@*    

pi/dense/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias
ž
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b( 

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
Y
pi/dense/ReluRelupi/dense/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Š
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *×ł]ž

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *×ł]>
ô
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@@*

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

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
ć
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Ť
pi/dense_1/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@
Ű
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel

!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@

pi/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@
Ć
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@

pi/dense_1/MatMulMatMulpi/dense/Relupi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b( *
T0

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
]
pi/dense_1/ReluRelupi/dense_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Š
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:

0pi/dense_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *ž*
dtype0*
_output_shapes
: 

0pi/dense_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *>*
dtype0*
_output_shapes
: 
ô
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*$
_class
loc:@pi/dense_2/kernel*
seed2*
â
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
ô
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel
ć
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel
Ť
pi/dense_2/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
Ű
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel

pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel

!pi/dense_2/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:

pi/dense_2/bias
VariableV2*"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Ć
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:

pi/dense_2/MatMulMatMulpi/dense_1/Relupi/dense_2/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
a
pi/LogSoftmax
LogSoftmaxpi/dense_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
&pi/multinomial/Multinomial/num_samplesConst*
_output_shapes
: *
value	B :*
dtype0
Ä
pi/multinomial/MultinomialMultinomialpi/dense_2/BiasAdd&pi/multinomial/Multinomial/num_samples*
seed28*'
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
pi/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
pi/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
R
pi/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
ą

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
z
pi/SumSumpi/mulpi/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0
Z
pi/one_hot_1/on_valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
[
pi/one_hot_1/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
T
pi/one_hot_1/depthConst*
value	B :*
dtype0*
_output_shapes
: 
ś
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
TI0	*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
valueB"   @   *
dtype0*
_output_shapes
:

-v/dense/kernel/Initializer/random_uniform/minConst*!
_class
loc:@v/dense/kernel*
valueB
 *ó5ž*
dtype0*
_output_shapes
: 

-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
ě
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@v/dense/kernel*
seed2L*
dtype0*
_output_shapes
:	@*

seed 
Ö
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
T0
é
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	@*
T0*!
_class
loc:@v/dense/kernel
Ű
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	@
§
v/dense/kernel
VariableV2*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *!
_class
loc:@v/dense/kernel
Đ
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@
|
v/dense/kernel/readIdentityv/dense/kernel*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	@

v/dense/bias/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@

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
ş
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

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b( 

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
W
v/dense/ReluReluv/dense/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
§
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0

/v/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *×ł]ž

/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *×ł]>*
dtype0*
_output_shapes
: 
ń
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*#
_class
loc:@v/dense_1/kernel*
seed2]*
dtype0*
_output_shapes

:@@
Ţ
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
đ
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel
â
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Š
v/dense_1/kernel
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
×
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@

v/dense_1/kernel/readIdentityv/dense_1/kernel*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0

 v/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
valueB@*    

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
Â
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
w
v/dense_1/bias/readIdentityv/dense_1/bias*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0

v/dense_1/MatMulMatMulv/dense/Reluv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b( 

v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
[
v/dense_1/ReluReluv/dense_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
§
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:

/v/dense_2/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_2/kernel*
valueB
 *ž*
dtype0*
_output_shapes
: 

/v/dense_2/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_2/kernel*
valueB
 *>*
dtype0*
_output_shapes
: 
ń
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*#
_class
loc:@v/dense_2/kernel*
seed2n
Ţ
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 
đ
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
â
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Š
v/dense_2/kernel
VariableV2*
_output_shapes

:@*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container *
shape
:@*
dtype0
×
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(

v/dense_2/kernel/readIdentityv/dense_2/kernel*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel

 v/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0

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
Â
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
w
v/dense_2/bias/readIdentityv/dense_2/bias*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
T0

v/dense_2/MatMulMatMulv/dense_1/Reluv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 

v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
l
	v/SqueezeSqueezev/dense_2/BiasAdd*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
*
T0
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
subSubPlaceholder_3	v/Squeeze*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
:˙˙˙˙˙˙˙˙˙*
T0
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
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2Meansub_1Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
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
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
^
gradients/Mean_grad/Shape_1Shapemul*
_output_shapes
:*
T0*
out_type0
^
gradients/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
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
gradients/mul_grad/ShapeShapepi/Sum*
out_type0*
_output_shapes
:*
T0
g
gradients/mul_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
w
gradients/mul_grad/MulMulgradients/Mean_grad/truedivPlaceholder_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
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
a
gradients/pi/Sum_grad/ShapeShapepi/mul*
_output_shapes
:*
T0*
out_type0
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
gradients/pi/Sum_grad/Shape_1Const*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
valueB 

!gradients/pi/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B : 
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
gradients/pi/Sum_grad/Maximum/yConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ă
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
ť
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*
T0
Ă
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ľ
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
gradients/pi/mul_grad/ShapeShape
pi/one_hot*
T0*
out_type0*
_output_shapes
:
j
gradients/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
T0*
out_type0*
_output_shapes
:
˝
+gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_grad/Shapegradients/pi/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
}
gradients/pi/mul_grad/MulMulgradients/pi/Sum_grad/Tilepi/LogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
|
gradients/pi/mul_grad/Mul_1Mul
pi/one_hotgradients/pi/Sum_grad/Tile*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/pi/mul_grad/Sum_1Sumgradients/pi/mul_grad/Mul_1-gradients/pi/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ś
gradients/pi/mul_grad/Reshape_1Reshapegradients/pi/mul_grad/Sum_1gradients/pi/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Reshape ^gradients/pi/mul_grad/Reshape_1
ć
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Reshape'^gradients/pi/mul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/mul_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Reshape_1'^gradients/pi/mul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1
h
 gradients/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
­
 gradients/pi/LogSoftmax_grad/subSub0gradients/pi/mul_grad/tuple/control_dependency_1 gradients/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/pi/LogSoftmax_grad/sub*
_output_shapes
:*
T0*
data_formatNHWC

2gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp!^gradients/pi/LogSoftmax_grad/sub.^gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad

:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity gradients/pi/LogSoftmax_grad/sub3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/pi/LogSoftmax_grad/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*@
_class6
42loc:@gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad
Ý
'gradients/pi/dense_2/MatMul_grad/MatMulMatMul:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencypi/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b(
Ď
)gradients/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Relu:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@

1gradients/pi/dense_2/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_2/MatMul_grad/MatMul*^gradients/pi/dense_2/MatMul_grad/MatMul_1

9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_2/MatMul_grad/MatMul2^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*:
_class0
.,loc:@gradients/pi/dense_2/MatMul_grad/MatMul

;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_2/MatMul_grad/MatMul_12^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@
ą
'gradients/pi/dense_1/Relu_grad/ReluGradReluGrad9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencypi/dense_1/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ą
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0

2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense_1/Relu_grad/ReluGrad

:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/Relu_grad/ReluGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/Relu_grad/ReluGrad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Ý
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b(
Í
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@@*
transpose_b( *
T0

1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1

9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@*
T0
­
%gradients/pi/dense/Relu_grad/ReluGradReluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Relu*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/pi/dense/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC

0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad&^gradients/pi/dense/Relu_grad/ReluGrad

8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/pi/dense/Relu_grad/ReluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*8
_class.
,*loc:@gradients/pi/dense/Relu_grad/ReluGrad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad
Ř
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(*
T0
Č
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	@

/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1

7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes
:	@
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
:@
b
Reshape_1/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0

	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:@
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
: 
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
:@
b
Reshape_4/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

	Reshape_4Reshape;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes	
:	*
T0*
Tshape0
b
Reshape_5/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

	Reshape_5Reshape<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5concat/axis*
T0*
N*
_output_shapes	
:j*

Tidx0
g
PyFuncPyFuncconcat*
Tin
2*
_output_shapes	
:j*
Tout
2*
token
pyfunc_0
h
Const_4Const*-
value$B""    @      @        *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

splitSplitVPyFuncConst_4split/split_dim*

Tlen0*
	num_split*;
_output_shapes)
':@:@: :@:	:*
T0
`
Reshape_6/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
	Reshape_6ReshapesplitReshape_6/shape*
Tshape0*
_output_shapes
:	@*
T0
Y
Reshape_7/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
a
	Reshape_7Reshapesplit:1Reshape_7/shape*
_output_shapes
:@*
T0*
Tshape0
`
Reshape_8/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
e
	Reshape_8Reshapesplit:2Reshape_8/shape*
T0*
Tshape0*
_output_shapes

:@@
Y
Reshape_9/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
a
	Reshape_9Reshapesplit:3Reshape_9/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_10/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
g

Reshape_10Reshapesplit:4Reshape_10/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_11/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_11Reshapesplit:5Reshape_11/shape*
T0*
Tshape0*
_output_shapes
:
Ť
6pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   *"
_class
loc:@pi/dense/kernel

,pi/dense/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *"
_class
loc:@pi/dense/kernel*
dtype0
ô
&pi/dense/kernel/Adam/Initializer/zerosFill6pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,pi/dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	@
Ž
pi/dense/kernel/Adam
VariableV2*
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container 
Ú
pi/dense/kernel/Adam/AssignAssignpi/dense/kernel/Adam&pi/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(

pi/dense/kernel/Adam/readIdentitypi/dense/kernel/Adam*
_output_shapes
:	@*
T0*"
_class
loc:@pi/dense/kernel
­
8pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:

.pi/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *"
_class
loc:@pi/dense/kernel*
dtype0
ú
(pi/dense/kernel/Adam_1/Initializer/zerosFill8pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.pi/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	@
°
pi/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape:	@
ŕ
pi/dense/kernel/Adam_1/AssignAssignpi/dense/kernel/Adam_1(pi/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@

pi/dense/kernel/Adam_1/readIdentitypi/dense/kernel/Adam_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	@

$pi/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@pi/dense/bias
 
pi/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape:@
Í
pi/dense/bias/Adam/AssignAssignpi/dense/bias/Adam$pi/dense/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
~
pi/dense/bias/Adam/readIdentitypi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
T0

&pi/dense/bias/Adam_1/Initializer/zerosConst*
valueB@*    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:@
˘
pi/dense/bias/Adam_1
VariableV2* 
_class
loc:@pi/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
Ó
pi/dense/bias/Adam_1/AssignAssignpi/dense/bias/Adam_1&pi/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@

pi/dense/bias/Adam_1/readIdentitypi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
T0
Ż
8pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:

.pi/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
ű
(pi/dense_1/kernel/Adam/Initializer/zerosFill8pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor.pi/dense_1/kernel/Adam/Initializer/zeros/Const*
_output_shapes

:@@*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel
°
pi/dense_1/kernel/Adam
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
á
pi/dense_1/kernel/Adam/AssignAssignpi/dense_1/kernel/Adam(pi/dense_1/kernel/Adam/Initializer/zeros*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(

pi/dense_1/kernel/Adam/readIdentitypi/dense_1/kernel/Adam*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
ą
:pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0

*pi/dense_1/kernel/Adam_1/Initializer/zerosFill:pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor0pi/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
˛
pi/dense_1/kernel/Adam_1
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
ç
pi/dense_1/kernel/Adam_1/AssignAssignpi/dense_1/kernel/Adam_1*pi/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@

pi/dense_1/kernel/Adam_1/readIdentitypi/dense_1/kernel/Adam_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@

&pi/dense_1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *"
_class
loc:@pi/dense_1/bias
¤
pi/dense_1/bias/Adam
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias
Ő
pi/dense_1/bias/Adam/AssignAssignpi/dense_1/bias/Adam&pi/dense_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@

pi/dense_1/bias/Adam/readIdentitypi/dense_1/bias/Adam*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias

(pi/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:@
Ś
pi/dense_1/bias/Adam_1
VariableV2*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ű
pi/dense_1/bias/Adam_1/AssignAssignpi/dense_1/bias/Adam_1(pi/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@

pi/dense_1/bias/Adam_1/readIdentitypi/dense_1/bias/Adam_1*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
Ż
8pi/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"@      *$
_class
loc:@pi/dense_2/kernel*
dtype0

.pi/dense_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
: 
ű
(pi/dense_2/kernel/Adam/Initializer/zerosFill8pi/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor.pi/dense_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
°
pi/dense_2/kernel/Adam
VariableV2*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
á
pi/dense_2/kernel/Adam/AssignAssignpi/dense_2/kernel/Adam(pi/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@

pi/dense_2/kernel/Adam/readIdentitypi/dense_2/kernel/Adam*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel
ą
:pi/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@      *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
:

0pi/dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
: 

*pi/dense_2/kernel/Adam_1/Initializer/zerosFill:pi/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor0pi/dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
˛
pi/dense_2/kernel/Adam_1
VariableV2*$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
ç
pi/dense_2/kernel/Adam_1/AssignAssignpi/dense_2/kernel/Adam_1*pi/dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel

pi/dense_2/kernel/Adam_1/readIdentitypi/dense_2/kernel/Adam_1*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0

&pi/dense_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0
¤
pi/dense_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:
Ő
pi/dense_2/bias/Adam/AssignAssignpi/dense_2/bias/Adam&pi/dense_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:

pi/dense_2/bias/Adam/readIdentitypi/dense_2/bias/Adam*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
T0

(pi/dense_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0
Ś
pi/dense_2/bias/Adam_1
VariableV2*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ű
pi/dense_2/bias/Adam_1/AssignAssignpi/dense_2/bias/Adam_1(pi/dense_2/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias

pi/dense_2/bias/Adam_1/readIdentitypi/dense_2/bias/Adam_1*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *RI9
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
U
Adam/Identity/inputConst*
value	B : *
dtype0*
_output_shapes
: 
O
Adam/IdentityIdentityAdam/Identity/input*
_output_shapes
: *
T0
L

Adam/add/yConst*
value	B :*
dtype0*
_output_shapes
: 
K
Adam/addAddAdam/Identity
Adam/add/y*
T0*
_output_shapes
: 
[
	Adam/CastCastAdam/add*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0

Adam/update_pi/dense/kernel/PowPow
Adam/beta1	Adam/Cast*
_output_shapes
: *
T0*"
_class
loc:@pi/dense/kernel

!Adam/update_pi/dense/kernel/Pow_1Pow
Adam/beta2	Adam/Cast*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
ď
%Adam/update_pi/dense/kernel/ApplyAdam	ApplyAdampi/dense/kernelpi/dense/kernel/Adampi/dense/kernel/Adam_1Adam/update_pi/dense/kernel/Pow!Adam/update_pi/dense/kernel/Pow_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
use_nesterov( *
_output_shapes
:	@
~
Adam/update_pi/dense/bias/PowPow
Adam/beta1	Adam/Cast*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

Adam/update_pi/dense/bias/Pow_1Pow
Adam/beta2	Adam/Cast*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
Ü
#Adam/update_pi/dense/bias/ApplyAdam	ApplyAdampi/dense/biaspi/dense/bias/Adampi/dense/bias/Adam_1Adam/update_pi/dense/bias/PowAdam/update_pi/dense/bias/Pow_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7* 
_class
loc:@pi/dense/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0

!Adam/update_pi/dense_1/kernel/PowPow
Adam/beta1	Adam/Cast*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

#Adam/update_pi/dense_1/kernel/Pow_1Pow
Adam/beta2	Adam/Cast*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
ü
'Adam/update_pi/dense_1/kernel/ApplyAdam	ApplyAdampi/dense_1/kernelpi/dense_1/kernel/Adampi/dense_1/kernel/Adam_1!Adam/update_pi/dense_1/kernel/Pow#Adam/update_pi/dense_1/kernel/Pow_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_8*
use_nesterov( *
_output_shapes

:@@*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel

Adam/update_pi/dense_1/bias/PowPow
Adam/beta1	Adam/Cast*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

!Adam/update_pi/dense_1/bias/Pow_1Pow
Adam/beta2	Adam/Cast*
_output_shapes
: *
T0*"
_class
loc:@pi/dense_1/bias
ę
%Adam/update_pi/dense_1/bias/ApplyAdam	ApplyAdampi/dense_1/biaspi/dense_1/bias/Adampi/dense_1/bias/Adam_1Adam/update_pi/dense_1/bias/Pow!Adam/update_pi/dense_1/bias/Pow_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_9*
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( 

!Adam/update_pi/dense_2/kernel/PowPow
Adam/beta1	Adam/Cast*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 

#Adam/update_pi/dense_2/kernel/Pow_1Pow
Adam/beta2	Adam/Cast*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
ý
'Adam/update_pi/dense_2/kernel/ApplyAdam	ApplyAdampi/dense_2/kernelpi/dense_2/kernel/Adampi/dense_2/kernel/Adam_1!Adam/update_pi/dense_2/kernel/Pow#Adam/update_pi/dense_2/kernel/Pow_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_10*
use_nesterov( *
_output_shapes

:@*
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel

Adam/update_pi/dense_2/bias/PowPow
Adam/beta1	Adam/Cast*"
_class
loc:@pi/dense_2/bias*
_output_shapes
: *
T0

!Adam/update_pi/dense_2/bias/Pow_1Pow
Adam/beta2	Adam/Cast*"
_class
loc:@pi/dense_2/bias*
_output_shapes
: *
T0
ë
%Adam/update_pi/dense_2/bias/ApplyAdam	ApplyAdampi/dense_2/biaspi/dense_2/bias/Adampi/dense_2/bias/Adam_1Adam/update_pi/dense_2/bias/Pow!Adam/update_pi/dense_2/bias/Pow_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_11*
use_locking( *
T0*"
_class
loc:@pi/dense_2/bias*
use_nesterov( *
_output_shapes
:
ţ
AdamNoOp$^Adam/update_pi/dense/bias/ApplyAdam&^Adam/update_pi/dense/kernel/ApplyAdam&^Adam/update_pi/dense_1/bias/ApplyAdam(^Adam/update_pi/dense_1/kernel/ApplyAdam&^Adam/update_pi/dense_2/bias/ApplyAdam(^Adam/update_pi/dense_2/kernel/ApplyAdam
j
Reshape_12/shapeConst^Adam*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_12Reshapepi/dense/kernel/readReshape_12/shape*
_output_shapes	
:@*
T0*
Tshape0
j
Reshape_13/shapeConst^Adam*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
n

Reshape_13Reshapepi/dense/bias/readReshape_13/shape*
_output_shapes
:@*
T0*
Tshape0
j
Reshape_14/shapeConst^Adam*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_14Reshapepi/dense_1/kernel/readReshape_14/shape*
T0*
Tshape0*
_output_shapes	
: 
j
Reshape_15/shapeConst^Adam*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_15Reshapepi/dense_1/bias/readReshape_15/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_16/shapeConst^Adam*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_16Reshapepi/dense_2/kernel/readReshape_16/shape*
_output_shapes	
:	*
T0*
Tshape0
j
Reshape_17/shapeConst^Adam*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
p

Reshape_17Reshapepi/dense_2/bias/readReshape_17/shape*
T0*
Tshape0*
_output_shapes
:
V
concat_1/axisConst^Adam*
_output_shapes
: *
value	B : *
dtype0
Ś
concat_1ConcatV2
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17concat_1/axis*

Tidx0*
T0*
N*
_output_shapes	
:j
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
o
Const_5Const^Adam*-
value$B""    @      @        *
dtype0*
_output_shapes
:
Z
split_1/split_dimConst^Adam*
value	B : *
dtype0*
_output_shapes
: 

split_1SplitVPyFunc_1Const_5split_1/split_dim*
T0*

Tlen0*
	num_split*,
_output_shapes
::::::
h
Reshape_18/shapeConst^Adam*
valueB"   @   *
dtype0*
_output_shapes
:
h

Reshape_18Reshapesplit_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes
:	@
a
Reshape_19/shapeConst^Adam*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_19Reshape	split_1:1Reshape_19/shape*
T0*
Tshape0*
_output_shapes
:@
h
Reshape_20/shapeConst^Adam*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_20Reshape	split_1:2Reshape_20/shape*
_output_shapes

:@@*
T0*
Tshape0
a
Reshape_21/shapeConst^Adam*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_21Reshape	split_1:3Reshape_21/shape*
T0*
Tshape0*
_output_shapes
:@
h
Reshape_22/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB"@      
i

Reshape_22Reshape	split_1:4Reshape_22/shape*
Tshape0*
_output_shapes

:@*
T0
a
Reshape_23/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_23Reshape	split_1:5Reshape_23/shape*
_output_shapes
:*
T0*
Tshape0
¤
AssignAssignpi/dense/kernel
Reshape_18*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@

Assign_1Assignpi/dense/bias
Reshape_19*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Š
Assign_2Assignpi/dense_1/kernel
Reshape_20*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
Ą
Assign_3Assignpi/dense_1/bias
Reshape_21*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
Š
Assign_4Assignpi/dense_2/kernel
Reshape_22*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Ą
Assign_5Assignpi/dense_2/bias
Reshape_23*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Y

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
Z
gradients_1/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
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

gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients_1/Mean_1_grad/ShapeShapepow*
out_type0*
_output_shapes
:*
T0
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
gradients_1/Mean_1_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0
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
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
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
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
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
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙
g
$gradients_1/pow_grad/ones_like/ShapeShapesub*
_output_shapes
:*
T0*
out_type0
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
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
gradients_1/pow_grad/zeros_like	ZerosLikesub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
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
gradients_1/sub_grad/ShapeShapePlaceholder_3*
_output_shapes
:*
T0*
out_type0
e
gradients_1/sub_grad/Shape_1Shape	v/Squeeze*
T0*
out_type0*
_output_shapes
:
ş
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
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

gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
Ŕ
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

3gradients_1/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad

;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ţ
(gradients_1/v/dense_2/MatMul_grad/MatMulMatMul;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b(
Đ
*gradients_1/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Relu;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 

2gradients_1/v/dense_2/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_2/MatMul_grad/MatMul+^gradients_1/v/dense_2/MatMul_grad/MatMul_1

:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/MatMul_grad/MatMul3^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_2/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_2/MatMul_grad/MatMul_13^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@
˛
(gradients_1/v/dense_1/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyv/dense_1/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ł
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/v/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@

3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad)^gradients_1/v/dense_1/Relu_grad/ReluGrad

;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/Relu_grad/ReluGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/Relu_grad/ReluGrad

=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Ţ
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b(*
T0
Î
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Relu;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@@*
transpose_b( 

2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1

:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@
Ž
&gradients_1/v/dense/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients_1/v/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@

1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad'^gradients_1/v/dense/Relu_grad/ReluGrad

9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/Relu_grad/ReluGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/Relu_grad/ReluGrad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Ů
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
Ę
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	@*
transpose_b( 
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
:	@
c
Reshape_24/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_24Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_24/shape*
T0*
Tshape0*
_output_shapes	
:@
c
Reshape_25/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0


Reshape_25Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_25/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_26/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0


Reshape_26Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_26/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_27/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0


Reshape_27Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_27/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_28/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙


Reshape_28Reshape<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_28/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_29/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_29Reshape=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_29/shape*
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
Ś
concat_2ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27
Reshape_28
Reshape_29concat_2/axis*
T0*
N*
_output_shapes	
:Áa*

Tidx0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:Áa*
Tout
2*
token
pyfunc_2
h
Const_6Const*-
value$B""    @      @   @      *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

split_2SplitVPyFunc_2Const_6split_2/split_dim*
T0*

Tlen0*
	num_split*:
_output_shapes(
&:@:@: :@:@:
a
Reshape_30/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
h

Reshape_30Reshapesplit_2Reshape_30/shape*
T0*
Tshape0*
_output_shapes
:	@
Z
Reshape_31/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_31Reshape	split_2:1Reshape_31/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_32/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_32Reshape	split_2:2Reshape_32/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_33/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_33Reshape	split_2:3Reshape_33/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_34/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_34Reshape	split_2:4Reshape_34/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_35/shapeConst*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_35Reshape	split_2:5Reshape_35/shape*
_output_shapes
:*
T0*
Tshape0
Š
5v/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   *!
_class
loc:@v/dense/kernel

+v/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
đ
%v/dense/kernel/Adam/Initializer/zerosFill5v/dense/kernel/Adam/Initializer/zeros/shape_as_tensor+v/dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	@
Ź
v/dense/kernel/Adam
VariableV2*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *!
_class
loc:@v/dense/kernel
Ö
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@

v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
_output_shapes
:	@*
T0*!
_class
loc:@v/dense/kernel
Ť
7v/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:

-v/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
ö
'v/dense/kernel/Adam_1/Initializer/zerosFill7v/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor-v/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	@
Ž
v/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape:	@
Ü
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(

v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*
_output_shapes
:	@*
T0*!
_class
loc:@v/dense/kernel

#v/dense/bias/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@

v/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@
É
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@

%v/dense/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@
 
v/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@
Ď
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
­
7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:

-v/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
÷
'v/dense_1/kernel/Adam/Initializer/zerosFill7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Ž
v/dense_1/kernel/Adam
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
Ý
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@

v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Ż
9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:

/v/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
ý
)v/dense_1/kernel/Adam_1/Initializer/zerosFill9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_1/kernel/Adam_1/Initializer/zeros/Const*

index_type0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0
°
v/dense_1/kernel/Adam_1
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
ă
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel

v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel

%v/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0
˘
v/dense_1/bias/Adam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias*
	container 
Ń
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0

'v/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:@
¤
v/dense_1/bias/Adam_1
VariableV2*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@*
dtype0
×
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@

v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
Ą
'v/dense_2/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:@*
valueB@*    *#
_class
loc:@v/dense_2/kernel
Ž
v/dense_2/kernel/Adam
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container 
Ý
v/dense_2/kernel/Adam/AssignAssignv/dense_2/kernel/Adam'v/dense_2/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0

v/dense_2/kernel/Adam/readIdentityv/dense_2/kernel/Adam*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Ł
)v/dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes

:@
°
v/dense_2/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container 
ă
v/dense_2/kernel/Adam_1/AssignAssignv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@

v/dense_2/kernel/Adam_1/readIdentityv/dense_2/kernel/Adam_1*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@

%v/dense_2/bias/Adam/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
˘
v/dense_2/bias/Adam
VariableV2*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ń
v/dense_2/bias/Adam/AssignAssignv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:

v/dense_2/bias/Adam/readIdentityv/dense_2/bias/Adam*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:

'v/dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
¤
v/dense_2/bias/Adam_1
VariableV2*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
×
v/dense_2/bias/Adam_1/AssignAssignv/dense_2/bias/Adam_1'v/dense_2/bias/Adam_1/Initializer/zeros*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(

v/dense_2/bias/Adam_1/readIdentityv/dense_2/bias/Adam_1*
_output_shapes
:*
T0*!
_class
loc:@v/dense_2/bias
Y
Adam_1/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Q
Adam_1/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Q
Adam_1/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
S
Adam_1/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
W
Adam_1/Identity/inputConst*
value	B : *
dtype0*
_output_shapes
: 
S
Adam_1/IdentityIdentityAdam_1/Identity/input*
T0*
_output_shapes
: 
N
Adam_1/add/yConst*
_output_shapes
: *
value	B :*
dtype0
Q

Adam_1/addAddAdam_1/IdentityAdam_1/add/y*
_output_shapes
: *
T0
_
Adam_1/CastCast
Adam_1/add*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0

 Adam_1/update_v/dense/kernel/PowPowAdam_1/beta1Adam_1/Cast*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

"Adam_1/update_v/dense/kernel/Pow_1PowAdam_1/beta2Adam_1/Cast*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
÷
&Adam_1/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1 Adam_1/update_v/dense/kernel/Pow"Adam_1/update_v/dense/kernel/Pow_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_30*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
use_nesterov( *
_output_shapes
:	@

Adam_1/update_v/dense/bias/PowPowAdam_1/beta1Adam_1/Cast*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

 Adam_1/update_v/dense/bias/Pow_1PowAdam_1/beta2Adam_1/Cast*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
ä
$Adam_1/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1Adam_1/update_v/dense/bias/Pow Adam_1/update_v/dense/bias/Pow_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_31*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@v/dense/bias

"Adam_1/update_v/dense_1/kernel/PowPowAdam_1/beta1Adam_1/Cast*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: *
T0

$Adam_1/update_v/dense_1/kernel/Pow_1PowAdam_1/beta2Adam_1/Cast*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel

(Adam_1/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1"Adam_1/update_v/dense_1/kernel/Pow$Adam_1/update_v/dense_1/kernel/Pow_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_32*
_output_shapes

:@@*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
use_nesterov( 

 Adam_1/update_v/dense_1/bias/PowPowAdam_1/beta1Adam_1/Cast*!
_class
loc:@v/dense_1/bias*
_output_shapes
: *
T0

"Adam_1/update_v/dense_1/bias/Pow_1PowAdam_1/beta2Adam_1/Cast*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
: 
ň
&Adam_1/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1 Adam_1/update_v/dense_1/bias/Pow"Adam_1/update_v/dense_1/bias/Pow_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_33*!
_class
loc:@v/dense_1/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0

"Adam_1/update_v/dense_2/kernel/PowPowAdam_1/beta1Adam_1/Cast*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 

$Adam_1/update_v/dense_2/kernel/Pow_1PowAdam_1/beta2Adam_1/Cast*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 

(Adam_1/update_v/dense_2/kernel/ApplyAdam	ApplyAdamv/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1"Adam_1/update_v/dense_2/kernel/Pow$Adam_1/update_v/dense_2/kernel/Pow_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_34*
use_locking( *
T0*#
_class
loc:@v/dense_2/kernel*
use_nesterov( *
_output_shapes

:@

 Adam_1/update_v/dense_2/bias/PowPowAdam_1/beta1Adam_1/Cast*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
: 

"Adam_1/update_v/dense_2/bias/Pow_1PowAdam_1/beta2Adam_1/Cast*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
: 
ň
&Adam_1/update_v/dense_2/bias/ApplyAdam	ApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1 Adam_1/update_v/dense_2/bias/Pow"Adam_1/update_v/dense_2/bias/Pow_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_35*
use_locking( *
T0*!
_class
loc:@v/dense_2/bias*
use_nesterov( *
_output_shapes
:

Adam_1NoOp%^Adam_1/update_v/dense/bias/ApplyAdam'^Adam_1/update_v/dense/kernel/ApplyAdam'^Adam_1/update_v/dense_1/bias/ApplyAdam)^Adam_1/update_v/dense_1/kernel/ApplyAdam'^Adam_1/update_v/dense_2/bias/ApplyAdam)^Adam_1/update_v/dense_2/kernel/ApplyAdam
l
Reshape_36/shapeConst^Adam_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_36Reshapev/dense/kernel/readReshape_36/shape*
_output_shapes	
:@*
T0*
Tshape0
l
Reshape_37/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
m

Reshape_37Reshapev/dense/bias/readReshape_37/shape*
_output_shapes
:@*
T0*
Tshape0
l
Reshape_38/shapeConst^Adam_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
r

Reshape_38Reshapev/dense_1/kernel/readReshape_38/shape*
T0*
Tshape0*
_output_shapes	
: 
l
Reshape_39/shapeConst^Adam_1*
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
:@
l
Reshape_40/shapeConst^Adam_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_40Reshapev/dense_2/kernel/readReshape_40/shape*
T0*
Tshape0*
_output_shapes
:@
l
Reshape_41/shapeConst^Adam_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_41Reshapev/dense_2/bias/readReshape_41/shape*
Tshape0*
_output_shapes
:*
T0
X
concat_3/axisConst^Adam_1*
value	B : *
dtype0*
_output_shapes
: 
Ś
concat_3ConcatV2
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41concat_3/axis*
_output_shapes	
:Áa*

Tidx0*
T0*
N
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
q
Const_7Const^Adam_1*
dtype0*
_output_shapes
:*-
value$B""    @      @   @      
\
split_3/split_dimConst^Adam_1*
value	B : *
dtype0*
_output_shapes
: 

split_3SplitVPyFunc_3Const_7split_3/split_dim*

Tlen0*
	num_split*,
_output_shapes
::::::*
T0
j
Reshape_42/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB"   @   
h

Reshape_42Reshapesplit_3Reshape_42/shape*
T0*
Tshape0*
_output_shapes
:	@
c
Reshape_43/shapeConst^Adam_1*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_43Reshape	split_3:1Reshape_43/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_44/shapeConst^Adam_1*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_44Reshape	split_3:2Reshape_44/shape*
_output_shapes

:@@*
T0*
Tshape0
c
Reshape_45/shapeConst^Adam_1*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_45Reshape	split_3:3Reshape_45/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_46/shapeConst^Adam_1*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_46Reshape	split_3:4Reshape_46/shape*
_output_shapes

:@*
T0*
Tshape0
c
Reshape_47/shapeConst^Adam_1*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_47Reshape	split_3:5Reshape_47/shape*
T0*
Tshape0*
_output_shapes
:
¤
Assign_6Assignv/dense/kernel
Reshape_42*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0

Assign_7Assignv/dense/bias
Reshape_43*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
§
Assign_8Assignv/dense_1/kernel
Reshape_44*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@

Assign_9Assignv/dense_1/bias
Reshape_45*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
¨
	Assign_10Assignv/dense_2/kernel
Reshape_46*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
 
	Assign_11Assignv/dense_2/bias
Reshape_47*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
a
group_deps_2NoOp^Adam_1
^Assign_10
^Assign_11	^Assign_6	^Assign_7	^Assign_8	^Assign_9
,
group_deps_3NoOp^Adam_1^group_deps_2

initNoOp^pi/dense/bias/Adam/Assign^pi/dense/bias/Adam_1/Assign^pi/dense/bias/Assign^pi/dense/kernel/Adam/Assign^pi/dense/kernel/Adam_1/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Adam/Assign^pi/dense_1/bias/Adam_1/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Adam/Assign ^pi/dense_1/kernel/Adam_1/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Adam/Assign^pi/dense_2/bias/Adam_1/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Adam/Assign ^pi/dense_2/kernel/Adam_1/Assign^pi/dense_2/kernel/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign^v/dense_2/bias/Adam/Assign^v/dense_2/bias/Adam_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/Adam/Assign^v/dense_2/kernel/Adam_1/Assign^v/dense_2/kernel/Assign
c
Reshape_48/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_48Reshapepi/dense/kernel/readReshape_48/shape*
Tshape0*
_output_shapes	
:@*
T0
c
Reshape_49/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
n

Reshape_49Reshapepi/dense/bias/readReshape_49/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_50/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_50Reshapepi/dense_1/kernel/readReshape_50/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_51/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
p

Reshape_51Reshapepi/dense_1/bias/readReshape_51/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_52/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_52Reshapepi/dense_2/kernel/readReshape_52/shape*
T0*
Tshape0*
_output_shapes	
:	
c
Reshape_53/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_53Reshapepi/dense_2/bias/readReshape_53/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_54/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_54Reshapev/dense/kernel/readReshape_54/shape*
T0*
Tshape0*
_output_shapes	
:@
c
Reshape_55/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_55Reshapev/dense/bias/readReshape_55/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_56/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
r

Reshape_56Reshapev/dense_1/kernel/readReshape_56/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_57/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_57Reshapev/dense_1/bias/readReshape_57/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_58/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
q

Reshape_58Reshapev/dense_2/kernel/readReshape_58/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_59/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_59Reshapev/dense_2/bias/readReshape_59/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_60/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
v

Reshape_60Reshapepi/dense/kernel/Adam/readReshape_60/shape*
T0*
Tshape0*
_output_shapes	
:@
c
Reshape_61/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x

Reshape_61Reshapepi/dense/kernel/Adam_1/readReshape_61/shape*
T0*
Tshape0*
_output_shapes	
:@
c
Reshape_62/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
s

Reshape_62Reshapepi/dense/bias/Adam/readReshape_62/shape*
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
˙˙˙˙˙˙˙˙˙
u

Reshape_63Reshapepi/dense/bias/Adam_1/readReshape_63/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_64/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x

Reshape_64Reshapepi/dense_1/kernel/Adam/readReshape_64/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_65/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z

Reshape_65Reshapepi/dense_1/kernel/Adam_1/readReshape_65/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_66/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
u

Reshape_66Reshapepi/dense_1/bias/Adam/readReshape_66/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_67/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w

Reshape_67Reshapepi/dense_1/bias/Adam_1/readReshape_67/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_68/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x

Reshape_68Reshapepi/dense_2/kernel/Adam/readReshape_68/shape*
T0*
Tshape0*
_output_shapes	
:	
c
Reshape_69/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
z

Reshape_69Reshapepi/dense_2/kernel/Adam_1/readReshape_69/shape*
Tshape0*
_output_shapes	
:	*
T0
c
Reshape_70/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
u

Reshape_70Reshapepi/dense_2/bias/Adam/readReshape_70/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_71/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w

Reshape_71Reshapepi/dense_2/bias/Adam_1/readReshape_71/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_72/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
u

Reshape_72Reshapev/dense/kernel/Adam/readReshape_72/shape*
_output_shapes	
:@*
T0*
Tshape0
c
Reshape_73/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w

Reshape_73Reshapev/dense/kernel/Adam_1/readReshape_73/shape*
T0*
Tshape0*
_output_shapes	
:@
c
Reshape_74/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
r

Reshape_74Reshapev/dense/bias/Adam/readReshape_74/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_75/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
t

Reshape_75Reshapev/dense/bias/Adam_1/readReshape_75/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_76/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
w

Reshape_76Reshapev/dense_1/kernel/Adam/readReshape_76/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_77/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y

Reshape_77Reshapev/dense_1/kernel/Adam_1/readReshape_77/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_78/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
t

Reshape_78Reshapev/dense_1/bias/Adam/readReshape_78/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_79/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
v

Reshape_79Reshapev/dense_1/bias/Adam_1/readReshape_79/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_80/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
v

Reshape_80Reshapev/dense_2/kernel/Adam/readReshape_80/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_81/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x

Reshape_81Reshapev/dense_2/kernel/Adam_1/readReshape_81/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_82/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
t

Reshape_82Reshapev/dense_2/bias/Adam/readReshape_82/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_83/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
v

Reshape_83Reshapev/dense_2/bias/Adam_1/readReshape_83/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concat_4ConcatV2
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
Reshape_83concat_4/axis*

Tidx0*
T0*
N$*
_output_shapes

:ůâ
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
ä
Const_8Const*¨
valueB$"    @      @            @      @   @              @   @         @   @                     @   @         @   @   @   @         *
dtype0*
_output_shapes
:$
S
split_4/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

split_4SplitVPyFunc_4Const_8split_4/split_dim*

Tlen0*
	num_split$*Ś
_output_shapes
::::::::::::::::::::::::::::::::::::*
T0
a
Reshape_84/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
h

Reshape_84Reshapesplit_4Reshape_84/shape*
T0*
Tshape0*
_output_shapes
:	@
Z
Reshape_85/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_85Reshape	split_4:1Reshape_85/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_86/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_86Reshape	split_4:2Reshape_86/shape*
Tshape0*
_output_shapes

:@@*
T0
Z
Reshape_87/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_87Reshape	split_4:3Reshape_87/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_88/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_88Reshape	split_4:4Reshape_88/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_89/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_89Reshape	split_4:5Reshape_89/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_90/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
j

Reshape_90Reshape	split_4:6Reshape_90/shape*
T0*
Tshape0*
_output_shapes
:	@
Z
Reshape_91/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_91Reshape	split_4:7Reshape_91/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_92/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_92Reshape	split_4:8Reshape_92/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_93/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_93Reshape	split_4:9Reshape_93/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_94/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
j

Reshape_94Reshape
split_4:10Reshape_94/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_95/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_95Reshape
split_4:11Reshape_95/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_96/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
k

Reshape_96Reshape
split_4:12Reshape_96/shape*
Tshape0*
_output_shapes
:	@*
T0
a
Reshape_97/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
k

Reshape_97Reshape
split_4:13Reshape_97/shape*
_output_shapes
:	@*
T0*
Tshape0
Z
Reshape_98/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
f

Reshape_98Reshape
split_4:14Reshape_98/shape*
_output_shapes
:@*
T0*
Tshape0
Z
Reshape_99/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
f

Reshape_99Reshape
split_4:15Reshape_99/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_100/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_100Reshape
split_4:16Reshape_100/shape*
_output_shapes

:@@*
T0*
Tshape0
b
Reshape_101/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   @   
l
Reshape_101Reshape
split_4:17Reshape_101/shape*
T0*
Tshape0*
_output_shapes

:@@
[
Reshape_102/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_102Reshape
split_4:18Reshape_102/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_103/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_103Reshape
split_4:19Reshape_103/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_104/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
l
Reshape_104Reshape
split_4:20Reshape_104/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_105/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_105Reshape
split_4:21Reshape_105/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_106/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_106Reshape
split_4:22Reshape_106/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_107/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_107Reshape
split_4:23Reshape_107/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_108/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
m
Reshape_108Reshape
split_4:24Reshape_108/shape*
_output_shapes
:	@*
T0*
Tshape0
b
Reshape_109/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
m
Reshape_109Reshape
split_4:25Reshape_109/shape*
T0*
Tshape0*
_output_shapes
:	@
[
Reshape_110/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_110Reshape
split_4:26Reshape_110/shape*
_output_shapes
:@*
T0*
Tshape0
[
Reshape_111/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_111Reshape
split_4:27Reshape_111/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_112/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_112Reshape
split_4:28Reshape_112/shape*
T0*
Tshape0*
_output_shapes

:@@
b
Reshape_113/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_113Reshape
split_4:29Reshape_113/shape*
_output_shapes

:@@*
T0*
Tshape0
[
Reshape_114/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_114Reshape
split_4:30Reshape_114/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_115/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_115Reshape
split_4:31Reshape_115/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_116/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_116Reshape
split_4:32Reshape_116/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_117/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_117Reshape
split_4:33Reshape_117/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_118/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_118Reshape
split_4:34Reshape_118/shape*
Tshape0*
_output_shapes
:*
T0
[
Reshape_119/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_119Reshape
split_4:35Reshape_119/shape*
Tshape0*
_output_shapes
:*
T0
§
	Assign_12Assignpi/dense/kernel
Reshape_84*
_output_shapes
:	@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(

	Assign_13Assignpi/dense/bias
Reshape_85* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ş
	Assign_14Assignpi/dense_1/kernel
Reshape_86*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
˘
	Assign_15Assignpi/dense_1/bias
Reshape_87*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ş
	Assign_16Assignpi/dense_2/kernel
Reshape_88*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
˘
	Assign_17Assignpi/dense_2/bias
Reshape_89*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
Ľ
	Assign_18Assignv/dense/kernel
Reshape_90*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@

	Assign_19Assignv/dense/bias
Reshape_91*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
¨
	Assign_20Assignv/dense_1/kernel
Reshape_92*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
 
	Assign_21Assignv/dense_1/bias
Reshape_93*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
¨
	Assign_22Assignv/dense_2/kernel
Reshape_94*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
 
	Assign_23Assignv/dense_2/bias
Reshape_95*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
Ź
	Assign_24Assignpi/dense/kernel/Adam
Reshape_96*
_output_shapes
:	@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
Ž
	Assign_25Assignpi/dense/kernel/Adam_1
Reshape_97*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(
Ł
	Assign_26Assignpi/dense/bias/Adam
Reshape_98*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Ľ
	Assign_27Assignpi/dense/bias/Adam_1
Reshape_99*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
°
	Assign_28Assignpi/dense_1/kernel/AdamReshape_100*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
˛
	Assign_29Assignpi/dense_1/kernel/Adam_1Reshape_101*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
¨
	Assign_30Assignpi/dense_1/bias/AdamReshape_102*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ş
	Assign_31Assignpi/dense_1/bias/Adam_1Reshape_103*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
°
	Assign_32Assignpi/dense_2/kernel/AdamReshape_104*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
˛
	Assign_33Assignpi/dense_2/kernel/Adam_1Reshape_105*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
¨
	Assign_34Assignpi/dense_2/bias/AdamReshape_106*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
Ş
	Assign_35Assignpi/dense_2/bias/Adam_1Reshape_107*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Ť
	Assign_36Assignv/dense/kernel/AdamReshape_108*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(
­
	Assign_37Assignv/dense/kernel/Adam_1Reshape_109*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0
˘
	Assign_38Assignv/dense/bias/AdamReshape_110*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
¤
	Assign_39Assignv/dense/bias/Adam_1Reshape_111*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
Ž
	Assign_40Assignv/dense_1/kernel/AdamReshape_112*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
°
	Assign_41Assignv/dense_1/kernel/Adam_1Reshape_113*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Ś
	Assign_42Assignv/dense_1/bias/AdamReshape_114*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
¨
	Assign_43Assignv/dense_1/bias/Adam_1Reshape_115*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ž
	Assign_44Assignv/dense_2/kernel/AdamReshape_116*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
°
	Assign_45Assignv/dense_2/kernel/Adam_1Reshape_117*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
Ś
	Assign_46Assignv/dense_2/bias/AdamReshape_118*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
¨
	Assign_47Assignv/dense_2/bias/Adam_1Reshape_119*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
Ä
group_deps_4NoOp
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
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
^Assign_44
^Assign_45
^Assign_46
^Assign_47
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_5d4db874afd24fe892d1b5f66206c59a/part*
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
Đ
save/SaveV2/tensor_namesConst*
valueůBö$Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:$
Ť
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:$*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/Adampi/dense/bias/Adam_1pi/dense/kernelpi/dense/kernel/Adampi/dense/kernel/Adam_1pi/dense_1/biaspi/dense_1/bias/Adampi/dense_1/bias/Adam_1pi/dense_1/kernelpi/dense_1/kernel/Adampi/dense_1/kernel/Adam_1pi/dense_2/biaspi/dense_2/bias/Adampi/dense_2/bias/Adam_1pi/dense_2/kernelpi/dense_2/kernel/Adampi/dense_2/kernel/Adam_1v/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*2
dtypes(
&2$

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
_output_shapes
:*
T0*

axis 
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
Ó
save/RestoreV2/tensor_namesConst*
valueůBö$Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:$
Ž
save/RestoreV2/shape_and_slicesConst*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:$
Â
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*Ś
_output_shapes
::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$
¤
save/AssignAssignpi/dense/biassave/RestoreV2*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
­
save/Assign_1Assignpi/dense/bias/Adamsave/RestoreV2:1*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
Ż
save/Assign_2Assignpi/dense/bias/Adam_1save/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ą
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(
ś
save/Assign_4Assignpi/dense/kernel/Adamsave/RestoreV2:4*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0
¸
save/Assign_5Assignpi/dense/kernel/Adam_1save/RestoreV2:5*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@
Ź
save/Assign_6Assignpi/dense_1/biassave/RestoreV2:6*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
ą
save/Assign_7Assignpi/dense_1/bias/Adamsave/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
ł
save/Assign_8Assignpi/dense_1/bias/Adam_1save/RestoreV2:8*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
´
save/Assign_9Assignpi/dense_1/kernelsave/RestoreV2:9*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
ť
save/Assign_10Assignpi/dense_1/kernel/Adamsave/RestoreV2:10*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
˝
save/Assign_11Assignpi/dense_1/kernel/Adam_1save/RestoreV2:11*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
Ž
save/Assign_12Assignpi/dense_2/biassave/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
ł
save/Assign_13Assignpi/dense_2/bias/Adamsave/RestoreV2:13*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
ľ
save/Assign_14Assignpi/dense_2/bias/Adam_1save/RestoreV2:14*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
ś
save/Assign_15Assignpi/dense_2/kernelsave/RestoreV2:15*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ť
save/Assign_16Assignpi/dense_2/kernel/Adamsave/RestoreV2:16*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
˝
save/Assign_17Assignpi/dense_2/kernel/Adam_1save/RestoreV2:17*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
¨
save/Assign_18Assignv/dense/biassave/RestoreV2:18*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
­
save/Assign_19Assignv/dense/bias/Adamsave/RestoreV2:19*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Ż
save/Assign_20Assignv/dense/bias/Adam_1save/RestoreV2:20*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
ą
save/Assign_21Assignv/dense/kernelsave/RestoreV2:21*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@
ś
save/Assign_22Assignv/dense/kernel/Adamsave/RestoreV2:22*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(
¸
save/Assign_23Assignv/dense/kernel/Adam_1save/RestoreV2:23*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@
Ź
save/Assign_24Assignv/dense_1/biassave/RestoreV2:24*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ą
save/Assign_25Assignv/dense_1/bias/Adamsave/RestoreV2:25*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
ł
save/Assign_26Assignv/dense_1/bias/Adam_1save/RestoreV2:26*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
´
save/Assign_27Assignv/dense_1/kernelsave/RestoreV2:27*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
š
save/Assign_28Assignv/dense_1/kernel/Adamsave/RestoreV2:28*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
ť
save/Assign_29Assignv/dense_1/kernel/Adam_1save/RestoreV2:29*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
Ź
save/Assign_30Assignv/dense_2/biassave/RestoreV2:30*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
ą
save/Assign_31Assignv/dense_2/bias/Adamsave/RestoreV2:31*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
ł
save/Assign_32Assignv/dense_2/bias/Adam_1save/RestoreV2:32*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
´
save/Assign_33Assignv/dense_2/kernelsave/RestoreV2:33*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
š
save/Assign_34Assignv/dense_2/kernel/Adamsave/RestoreV2:34*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ť
save/Assign_35Assignv/dense_2/kernel/Adam_1save/RestoreV2:35*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
ň
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
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
value3B1 B+_temp_86bee063070d49a58b3d4639e19c076b/part*
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

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ň
save_1/SaveV2/tensor_namesConst*
_output_shapes
:$*
valueůBö$Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0
­
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:$*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/Adampi/dense/bias/Adam_1pi/dense/kernelpi/dense/kernel/Adampi/dense/kernel/Adam_1pi/dense_1/biaspi/dense_1/bias/Adampi/dense_1/bias/Adam_1pi/dense_1/kernelpi/dense_1/kernel/Adampi/dense_1/kernel/Adam_1pi/dense_2/biaspi/dense_2/bias/Adampi/dense_2/bias/Adam_1pi/dense_2/kernelpi/dense_2/kernel/Adampi/dense_2/kernel/Adam_1v/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*2
dtypes(
&2$
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
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
Ő
save_1/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:$*
valueůBö$Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1
°
!save_1/RestoreV2/shape_and_slicesConst*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:$
Ę
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*Ś
_output_shapes
::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$
¨
save_1/AssignAssignpi/dense/biassave_1/RestoreV2*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
ą
save_1/Assign_1Assignpi/dense/bias/Adamsave_1/RestoreV2:1* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ł
save_1/Assign_2Assignpi/dense/bias/Adam_1save_1/RestoreV2:2*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
ľ
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
ş
save_1/Assign_4Assignpi/dense/kernel/Adamsave_1/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@
ź
save_1/Assign_5Assignpi/dense/kernel/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	@
°
save_1/Assign_6Assignpi/dense_1/biassave_1/RestoreV2:6*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ľ
save_1/Assign_7Assignpi/dense_1/bias/Adamsave_1/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
ˇ
save_1/Assign_8Assignpi/dense_1/bias/Adam_1save_1/RestoreV2:8*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
¸
save_1/Assign_9Assignpi/dense_1/kernelsave_1/RestoreV2:9*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
ż
save_1/Assign_10Assignpi/dense_1/kernel/Adamsave_1/RestoreV2:10*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
Á
save_1/Assign_11Assignpi/dense_1/kernel/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
˛
save_1/Assign_12Assignpi/dense_2/biassave_1/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
ˇ
save_1/Assign_13Assignpi/dense_2/bias/Adamsave_1/RestoreV2:13*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
š
save_1/Assign_14Assignpi/dense_2/bias/Adam_1save_1/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
ş
save_1/Assign_15Assignpi/dense_2/kernelsave_1/RestoreV2:15*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
ż
save_1/Assign_16Assignpi/dense_2/kernel/Adamsave_1/RestoreV2:16*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel
Á
save_1/Assign_17Assignpi/dense_2/kernel/Adam_1save_1/RestoreV2:17*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
Ź
save_1/Assign_18Assignv/dense/biassave_1/RestoreV2:18*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
ą
save_1/Assign_19Assignv/dense/bias/Adamsave_1/RestoreV2:19*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
ł
save_1/Assign_20Assignv/dense/bias/Adam_1save_1/RestoreV2:20*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ľ
save_1/Assign_21Assignv/dense/kernelsave_1/RestoreV2:21*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@
ş
save_1/Assign_22Assignv/dense/kernel/Adamsave_1/RestoreV2:22*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0
ź
save_1/Assign_23Assignv/dense/kernel/Adam_1save_1/RestoreV2:23*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0
°
save_1/Assign_24Assignv/dense_1/biassave_1/RestoreV2:24*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
ľ
save_1/Assign_25Assignv/dense_1/bias/Adamsave_1/RestoreV2:25*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
ˇ
save_1/Assign_26Assignv/dense_1/bias/Adam_1save_1/RestoreV2:26*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
¸
save_1/Assign_27Assignv/dense_1/kernelsave_1/RestoreV2:27*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
˝
save_1/Assign_28Assignv/dense_1/kernel/Adamsave_1/RestoreV2:28*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
ż
save_1/Assign_29Assignv/dense_1/kernel/Adam_1save_1/RestoreV2:29*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
°
save_1/Assign_30Assignv/dense_2/biassave_1/RestoreV2:30*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
ľ
save_1/Assign_31Assignv/dense_2/bias/Adamsave_1/RestoreV2:31*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
ˇ
save_1/Assign_32Assignv/dense_2/bias/Adam_1save_1/RestoreV2:32*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
¸
save_1/Assign_33Assignv/dense_2/kernelsave_1/RestoreV2:33*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
˝
save_1/Assign_34Assignv/dense_2/kernel/Adamsave_1/RestoreV2:34*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
ż
save_1/Assign_35Assignv/dense_2/kernel/Adam_1save_1/RestoreV2:35*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ź
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

Adam
Adam_1"ý"
	variablesď"ě"
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
|
pi/dense/kernel/Adam:0pi/dense/kernel/Adam/Assignpi/dense/kernel/Adam/read:02(pi/dense/kernel/Adam/Initializer/zeros:0

pi/dense/kernel/Adam_1:0pi/dense/kernel/Adam_1/Assignpi/dense/kernel/Adam_1/read:02*pi/dense/kernel/Adam_1/Initializer/zeros:0
t
pi/dense/bias/Adam:0pi/dense/bias/Adam/Assignpi/dense/bias/Adam/read:02&pi/dense/bias/Adam/Initializer/zeros:0
|
pi/dense/bias/Adam_1:0pi/dense/bias/Adam_1/Assignpi/dense/bias/Adam_1/read:02(pi/dense/bias/Adam_1/Initializer/zeros:0

pi/dense_1/kernel/Adam:0pi/dense_1/kernel/Adam/Assignpi/dense_1/kernel/Adam/read:02*pi/dense_1/kernel/Adam/Initializer/zeros:0

pi/dense_1/kernel/Adam_1:0pi/dense_1/kernel/Adam_1/Assignpi/dense_1/kernel/Adam_1/read:02,pi/dense_1/kernel/Adam_1/Initializer/zeros:0
|
pi/dense_1/bias/Adam:0pi/dense_1/bias/Adam/Assignpi/dense_1/bias/Adam/read:02(pi/dense_1/bias/Adam/Initializer/zeros:0

pi/dense_1/bias/Adam_1:0pi/dense_1/bias/Adam_1/Assignpi/dense_1/bias/Adam_1/read:02*pi/dense_1/bias/Adam_1/Initializer/zeros:0

pi/dense_2/kernel/Adam:0pi/dense_2/kernel/Adam/Assignpi/dense_2/kernel/Adam/read:02*pi/dense_2/kernel/Adam/Initializer/zeros:0

pi/dense_2/kernel/Adam_1:0pi/dense_2/kernel/Adam_1/Assignpi/dense_2/kernel/Adam_1/read:02,pi/dense_2/kernel/Adam_1/Initializer/zeros:0
|
pi/dense_2/bias/Adam:0pi/dense_2/bias/Adam/Assignpi/dense_2/bias/Adam/read:02(pi/dense_2/bias/Adam/Initializer/zeros:0

pi/dense_2/bias/Adam_1:0pi/dense_2/bias/Adam_1/Assignpi/dense_2/bias/Adam_1/read:02*pi/dense_2/bias/Adam_1/Initializer/zeros:0
x
v/dense/kernel/Adam:0v/dense/kernel/Adam/Assignv/dense/kernel/Adam/read:02'v/dense/kernel/Adam/Initializer/zeros:0

v/dense/kernel/Adam_1:0v/dense/kernel/Adam_1/Assignv/dense/kernel/Adam_1/read:02)v/dense/kernel/Adam_1/Initializer/zeros:0
p
v/dense/bias/Adam:0v/dense/bias/Adam/Assignv/dense/bias/Adam/read:02%v/dense/bias/Adam/Initializer/zeros:0
x
v/dense/bias/Adam_1:0v/dense/bias/Adam_1/Assignv/dense/bias/Adam_1/read:02'v/dense/bias/Adam_1/Initializer/zeros:0

v/dense_1/kernel/Adam:0v/dense_1/kernel/Adam/Assignv/dense_1/kernel/Adam/read:02)v/dense_1/kernel/Adam/Initializer/zeros:0

v/dense_1/kernel/Adam_1:0v/dense_1/kernel/Adam_1/Assignv/dense_1/kernel/Adam_1/read:02+v/dense_1/kernel/Adam_1/Initializer/zeros:0
x
v/dense_1/bias/Adam:0v/dense_1/bias/Adam/Assignv/dense_1/bias/Adam/read:02'v/dense_1/bias/Adam/Initializer/zeros:0

v/dense_1/bias/Adam_1:0v/dense_1/bias/Adam_1/Assignv/dense_1/bias/Adam_1/read:02)v/dense_1/bias/Adam_1/Initializer/zeros:0

v/dense_2/kernel/Adam:0v/dense_2/kernel/Adam/Assignv/dense_2/kernel/Adam/read:02)v/dense_2/kernel/Adam/Initializer/zeros:0

v/dense_2/kernel/Adam_1:0v/dense_2/kernel/Adam_1/Assignv/dense_2/kernel/Adam_1/read:02+v/dense_2/kernel/Adam_1/Initializer/zeros:0
x
v/dense_2/bias/Adam:0v/dense_2/bias/Adam/Assignv/dense_2/bias/Adam/read:02'v/dense_2/bias/Adam/Initializer/zeros:0

v/dense_2/bias/Adam_1:0v/dense_2/bias/Adam_1/Assignv/dense_2/bias/Adam_1/read:02)v/dense_2/bias/Adam_1/Initializer/zeros:0"Ů

trainable_variablesÁ
ž

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
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08*¨
serving_default
*
x%
Placeholder:0˙˙˙˙˙˙˙˙˙%
pi
pi/Squeeze:0	˙˙˙˙˙˙˙˙˙#
v
v/Squeeze:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict