ČĚ
%é$
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'ă
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
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Ľ
0pi/dense/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@pi/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:
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
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@pi/dense/kernel
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
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias
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
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
[
pi/dense/Relu6Relu6pi/dense/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Š
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"       *
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
 *Ź\ąž*
dtype0

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *Ź\ą>*
dtype0*
_output_shapes
: 
ô
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*$
_class
loc:@pi/dense_1/kernel*
seed2*
dtype0*
_output_shapes

: *

seed *
T0
â
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
ô
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: *
T0
ć
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel
Ť
pi/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: 
Ű
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel

!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:

pi/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:
Ć
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_1/bias

pi/dense_1/MatMulMatMulpi/dense/Relu6pi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
a
pi/LogSoftmax
LogSoftmaxpi/dense_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
&pi/multinomial/Multinomial/num_samplesConst*
dtype0*
_output_shapes
: *
value	B :
Ä
pi/multinomial/MultinomialMultinomialpi/dense_1/BiasAdd&pi/multinomial/Multinomial/num_samples*

seed *
output_dtype0	*
T0*
seed2'*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
v

pi/SqueezeSqueezepi/multinomial/Multinomial*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
*
T0	
X
pi/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
pi/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
pi/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
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
pi/Sum/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
z
pi/SumSumpi/mulpi/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0
Z
pi/one_hot_1/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
[
pi/one_hot_1/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
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
valueB"       *
dtype0*
_output_shapes
:

-v/dense/kernel/Initializer/random_uniform/minConst*!
_class
loc:@v/dense/kernel*
valueB
 *řKFž*
dtype0*
_output_shapes
: 
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
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*!
_class
loc:@v/dense/kernel*
seed2;*
dtype0*
_output_shapes
:	 *

seed *
T0
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
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 *
T0
§
v/dense/kernel
VariableV2*
_output_shapes
:	 *
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape:	 *
dtype0
Đ
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
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
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container 
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
v/dense/bias/readIdentityv/dense/bias*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Y
v/dense/Relu6Relu6v/dense/BiasAdd*'
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
/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *JQÚ>*
dtype0*
_output_shapes
: 
ń
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*#
_class
loc:@v/dense_1/kernel*
seed2L*
dtype0*
_output_shapes

: 
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
×
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0

v/dense_1/kernel/readIdentityv/dense_1/kernel*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
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
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
w
v/dense_1/bias/readIdentityv/dense_1/bias*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias

v/dense_1/MatMulMatMulv/dense/Relu6v/dense_1/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
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
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
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

gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
\
gradients/Mean_grad/ShapeShapemul*
out_type0*
_output_shapes
:*
T0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
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

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
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
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
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
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
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ö
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
!gradients/pi/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :
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
gradients/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
_output_shapes
:*
T0*
out_type0
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
gradients/pi/mul_grad/Sum_1Sumgradients/pi/mul_grad/Mul_1-gradients/pi/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ś
gradients/pi/mul_grad/Reshape_1Reshapegradients/pi/mul_grad/Sum_1gradients/pi/mul_grad/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
p
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Reshape ^gradients/pi/mul_grad/Reshape_1
ć
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Reshape'^gradients/pi/mul_grad/tuple/group_deps*0
_class&
$"loc:@gradients/pi/mul_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ě
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Reshape_1'^gradients/pi/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
 gradients/pi/LogSoftmax_grad/SumSum0gradients/pi/mul_grad/tuple/control_dependency_12gradients/pi/LogSoftmax_grad/Sum/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims(

 gradients/pi/LogSoftmax_grad/mulMul gradients/pi/LogSoftmax_grad/Sum gradients/pi/LogSoftmax_grad/Exp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
­
 gradients/pi/LogSoftmax_grad/subSub0gradients/pi/mul_grad/tuple/control_dependency_1 gradients/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/pi/LogSoftmax_grad/sub*
data_formatNHWC*
_output_shapes
:*
T0

2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp!^gradients/pi/LogSoftmax_grad/sub.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad

:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity gradients/pi/LogSoftmax_grad/sub3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*3
_class)
'%loc:@gradients/pi/LogSoftmax_grad/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ý
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b(
Î
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu6:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

: *
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
:˙˙˙˙˙˙˙˙˙ 

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

: *
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1
ą
'gradients/pi/dense/Relu6_grad/Relu6Grad	Relu6Grad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Relu6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense/Relu6_grad/Relu6Grad*
T0*
data_formatNHWC*
_output_shapes
: 

0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense/Relu6_grad/Relu6Grad

8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense/Relu6_grad/Relu6Grad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense/Relu6_grad/Relu6Grad*'
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
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(*
T0
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
9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes
:	 
`
Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
: 
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
Reshape_2/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0

	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:Ŕ
b
Reshape_3/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0

	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
Tshape0*
_output_shapes
:*
T0
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3concat/axis*
N*
_output_shapes	
:ň$*

Tidx0*
T0
g
PyFuncPyFuncconcat*
Tin
2*
_output_shapes	
:ň$*
Tout
2*
token
pyfunc_0
`
Const_4Const*%
valueB"       @     *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 

splitSplitVPyFuncConst_4split/split_dim*

Tlen0*
	num_split*.
_output_shapes
: : :Ŕ:*
T0
`
Reshape_4/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
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
valueB"       *
dtype0*
_output_shapes
:
e
	Reshape_6Reshapesplit:2Reshape_6/shape*
T0*
Tshape0*
_output_shapes

: 
Y
Reshape_7/shapeConst*
valueB:*
dtype0*
_output_shapes
:
a
	Reshape_7Reshapesplit:3Reshape_7/shape*
T0*
Tshape0*
_output_shapes
:
´
?pi/dense/kernel/LARSOptimizer/Initializer/zeros/shape_as_tensorConst*
valueB"       *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:

5pi/dense/kernel/LARSOptimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 

/pi/dense/kernel/LARSOptimizer/Initializer/zerosFill?pi/dense/kernel/LARSOptimizer/Initializer/zeros/shape_as_tensor5pi/dense/kernel/LARSOptimizer/Initializer/zeros/Const*
_output_shapes
:	 *
T0*

index_type0*"
_class
loc:@pi/dense/kernel
ˇ
pi/dense/kernel/LARSOptimizer
VariableV2*
	container *
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name *"
_class
loc:@pi/dense/kernel
ő
$pi/dense/kernel/LARSOptimizer/AssignAssignpi/dense/kernel/LARSOptimizer/pi/dense/kernel/LARSOptimizer/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0

"pi/dense/kernel/LARSOptimizer/readIdentitypi/dense/kernel/LARSOptimizer*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 

-pi/dense/bias/LARSOptimizer/Initializer/zerosConst*
valueB *    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
: 
Š
pi/dense/bias/LARSOptimizer
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
č
"pi/dense/bias/LARSOptimizer/AssignAssignpi/dense/bias/LARSOptimizer-pi/dense/bias/LARSOptimizer/Initializer/zeros* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

 pi/dense/bias/LARSOptimizer/readIdentitypi/dense/bias/LARSOptimizer*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
Ź
1pi/dense_1/kernel/LARSOptimizer/Initializer/zerosConst*
valueB *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

: 
š
pi/dense_1/kernel/LARSOptimizer
VariableV2*
dtype0*
_output_shapes

: *
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: 
ü
&pi/dense_1/kernel/LARSOptimizer/AssignAssignpi/dense_1/kernel/LARSOptimizer1pi/dense_1/kernel/LARSOptimizer/Initializer/zeros*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
 
$pi/dense_1/kernel/LARSOptimizer/readIdentitypi/dense_1/kernel/LARSOptimizer*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
 
/pi/dense_1/bias/LARSOptimizer/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
­
pi/dense_1/bias/LARSOptimizer
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias
đ
$pi/dense_1/bias/LARSOptimizer/AssignAssignpi/dense_1/bias/LARSOptimizer/pi/dense_1/bias/LARSOptimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:

"pi/dense_1/bias/LARSOptimizer/readIdentitypi/dense_1/bias/LARSOptimizer*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
`
LARSOptimizer/learning_rateConst*
valueB
 *RI9*
dtype0*
_output_shapes
: 
[
LARSOptimizer/momentumConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ž
-LARSOptimizer/update_pi/dense/kernel/norm/mulMulpi/dense/kernel/readpi/dense/kernel/read*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 
¤
/LARSOptimizer/update_pi/dense/kernel/norm/ConstConst*"
_class
loc:@pi/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:
ţ
-LARSOptimizer/update_pi/dense/kernel/norm/SumSum-LARSOptimizer/update_pi/dense/kernel/norm/mul/LARSOptimizer/update_pi/dense/kernel/norm/Const*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:*
	keep_dims(*

Tidx0
˛
.LARSOptimizer/update_pi/dense/kernel/norm/SqrtSqrt-LARSOptimizer/update_pi/dense/kernel/norm/Sum*"
_class
loc:@pi/dense/kernel*
_output_shapes

:*
T0
Ĺ
1LARSOptimizer/update_pi/dense/kernel/norm/SqueezeSqueeze.LARSOptimizer/update_pi/dense/kernel/norm/Sqrt*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
squeeze_dims
 

/LARSOptimizer/update_pi/dense/kernel/norm_1/mulMul	Reshape_4	Reshape_4*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 
Ś
1LARSOptimizer/update_pi/dense/kernel/norm_1/ConstConst*"
_class
loc:@pi/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:

/LARSOptimizer/update_pi/dense/kernel/norm_1/SumSum/LARSOptimizer/update_pi/dense/kernel/norm_1/mul1LARSOptimizer/update_pi/dense/kernel/norm_1/Const*"
_class
loc:@pi/dense/kernel*
_output_shapes

:*
	keep_dims(*

Tidx0*
T0
ś
0LARSOptimizer/update_pi/dense/kernel/norm_1/SqrtSqrt/LARSOptimizer/update_pi/dense/kernel/norm_1/Sum*"
_class
loc:@pi/dense/kernel*
_output_shapes

:*
T0
É
3LARSOptimizer/update_pi/dense/kernel/norm_1/SqueezeSqueeze0LARSOptimizer/update_pi/dense/kernel/norm_1/Sqrt*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
squeeze_dims
 

.LARSOptimizer/update_pi/dense/kernel/Greater/yConst*
dtype0*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
valueB
 *    
ß
,LARSOptimizer/update_pi/dense/kernel/GreaterGreater1LARSOptimizer/update_pi/dense/kernel/norm/Squeeze.LARSOptimizer/update_pi/dense/kernel/Greater/y*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

0LARSOptimizer/update_pi/dense/kernel/Greater_1/yConst*"
_class
loc:@pi/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ĺ
.LARSOptimizer/update_pi/dense/kernel/Greater_1Greater3LARSOptimizer/update_pi/dense/kernel/norm_1/Squeeze0LARSOptimizer/update_pi/dense/kernel/Greater_1/y*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

*LARSOptimizer/update_pi/dense/kernel/mul/xConst*"
_class
loc:@pi/dense/kernel*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ó
(LARSOptimizer/update_pi/dense/kernel/mulMul*LARSOptimizer/update_pi/dense/kernel/mul/x1LARSOptimizer/update_pi/dense/kernel/norm/Squeeze*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

,LARSOptimizer/update_pi/dense/kernel/mul_1/xConst*"
_class
loc:@pi/dense/kernel*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
×
*LARSOptimizer/update_pi/dense/kernel/mul_1Mul,LARSOptimizer/update_pi/dense/kernel/mul_1/x1LARSOptimizer/update_pi/dense/kernel/norm/Squeeze*
_output_shapes
: *
T0*"
_class
loc:@pi/dense/kernel
Ő
(LARSOptimizer/update_pi/dense/kernel/addAdd3LARSOptimizer/update_pi/dense/kernel/norm_1/Squeeze*LARSOptimizer/update_pi/dense/kernel/mul_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

,LARSOptimizer/update_pi/dense/kernel/add_1/yConst*"
_class
loc:@pi/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
*LARSOptimizer/update_pi/dense/kernel/add_1Add(LARSOptimizer/update_pi/dense/kernel/add,LARSOptimizer/update_pi/dense/kernel/add_1/y*
_output_shapes
: *
T0*"
_class
loc:@pi/dense/kernel
Ň
,LARSOptimizer/update_pi/dense/kernel/truedivRealDiv(LARSOptimizer/update_pi/dense/kernel/mul*LARSOptimizer/update_pi/dense/kernel/add_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

-LARSOptimizer/update_pi/dense/kernel/Select/eConst*"
_class
loc:@pi/dense/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

+LARSOptimizer/update_pi/dense/kernel/SelectSelect.LARSOptimizer/update_pi/dense/kernel/Greater_1,LARSOptimizer/update_pi/dense/kernel/truediv-LARSOptimizer/update_pi/dense/kernel/Select/e*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

/LARSOptimizer/update_pi/dense/kernel/Select_1/eConst*"
_class
loc:@pi/dense/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

-LARSOptimizer/update_pi/dense/kernel/Select_1Select,LARSOptimizer/update_pi/dense/kernel/Greater+LARSOptimizer/update_pi/dense/kernel/Select/LARSOptimizer/update_pi/dense/kernel/Select_1/e*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

,LARSOptimizer/update_pi/dense/kernel/mul_2/xConst*"
_class
loc:@pi/dense/kernel*
valueB
 *RI9*
dtype0*
_output_shapes
: 
Ó
*LARSOptimizer/update_pi/dense/kernel/mul_2Mul,LARSOptimizer/update_pi/dense/kernel/mul_2/x-LARSOptimizer/update_pi/dense/kernel/Select_1*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
T0
¤
;LARSOptimizer/update_pi/dense/kernel/ApplyMomentum/momentumConst*"
_class
loc:@pi/dense/kernel*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ü
2LARSOptimizer/update_pi/dense/kernel/ApplyMomentumApplyMomentumpi/dense/kernelpi/dense/kernel/LARSOptimizer*LARSOptimizer/update_pi/dense/kernel/mul_2	Reshape_4;LARSOptimizer/update_pi/dense/kernel/ApplyMomentum/momentum*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
use_nesterov( *
_output_shapes
:	 
Ą
+LARSOptimizer/update_pi/dense/bias/norm/mulMulpi/dense/bias/readpi/dense/bias/read*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

-LARSOptimizer/update_pi/dense/bias/norm/ConstConst* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:
ň
+LARSOptimizer/update_pi/dense/bias/norm/SumSum+LARSOptimizer/update_pi/dense/bias/norm/mul-LARSOptimizer/update_pi/dense/bias/norm/Const*
_output_shapes
:*
	keep_dims(*

Tidx0*
T0* 
_class
loc:@pi/dense/bias
¨
,LARSOptimizer/update_pi/dense/bias/norm/SqrtSqrt+LARSOptimizer/update_pi/dense/bias/norm/Sum*
_output_shapes
:*
T0* 
_class
loc:@pi/dense/bias
ż
/LARSOptimizer/update_pi/dense/bias/norm/SqueezeSqueeze,LARSOptimizer/update_pi/dense/bias/norm/Sqrt*
_output_shapes
: *
squeeze_dims
 *
T0* 
_class
loc:@pi/dense/bias

-LARSOptimizer/update_pi/dense/bias/norm_1/mulMul	Reshape_5	Reshape_5*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias

/LARSOptimizer/update_pi/dense/bias/norm_1/ConstConst* 
_class
loc:@pi/dense/bias*
valueB: *
dtype0*
_output_shapes
:
ř
-LARSOptimizer/update_pi/dense/bias/norm_1/SumSum-LARSOptimizer/update_pi/dense/bias/norm_1/mul/LARSOptimizer/update_pi/dense/bias/norm_1/Const*
_output_shapes
:*
	keep_dims(*

Tidx0*
T0* 
_class
loc:@pi/dense/bias
Ź
.LARSOptimizer/update_pi/dense/bias/norm_1/SqrtSqrt-LARSOptimizer/update_pi/dense/bias/norm_1/Sum*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:
Ă
1LARSOptimizer/update_pi/dense/bias/norm_1/SqueezeSqueeze.LARSOptimizer/update_pi/dense/bias/norm_1/Sqrt* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
squeeze_dims
 *
T0

,LARSOptimizer/update_pi/dense/bias/Greater/yConst* 
_class
loc:@pi/dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
×
*LARSOptimizer/update_pi/dense/bias/GreaterGreater/LARSOptimizer/update_pi/dense/bias/norm/Squeeze,LARSOptimizer/update_pi/dense/bias/Greater/y*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

.LARSOptimizer/update_pi/dense/bias/Greater_1/yConst* 
_class
loc:@pi/dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Ý
,LARSOptimizer/update_pi/dense/bias/Greater_1Greater1LARSOptimizer/update_pi/dense/bias/norm_1/Squeeze.LARSOptimizer/update_pi/dense/bias/Greater_1/y* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
T0

(LARSOptimizer/update_pi/dense/bias/mul/xConst* 
_class
loc:@pi/dense/bias*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ë
&LARSOptimizer/update_pi/dense/bias/mulMul(LARSOptimizer/update_pi/dense/bias/mul/x/LARSOptimizer/update_pi/dense/bias/norm/Squeeze*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

*LARSOptimizer/update_pi/dense/bias/mul_1/xConst* 
_class
loc:@pi/dense/bias*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
Ď
(LARSOptimizer/update_pi/dense/bias/mul_1Mul*LARSOptimizer/update_pi/dense/bias/mul_1/x/LARSOptimizer/update_pi/dense/bias/norm/Squeeze*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
Í
&LARSOptimizer/update_pi/dense/bias/addAdd1LARSOptimizer/update_pi/dense/bias/norm_1/Squeeze(LARSOptimizer/update_pi/dense/bias/mul_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

*LARSOptimizer/update_pi/dense/bias/add_1/yConst* 
_class
loc:@pi/dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
(LARSOptimizer/update_pi/dense/bias/add_1Add&LARSOptimizer/update_pi/dense/bias/add*LARSOptimizer/update_pi/dense/bias/add_1/y*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
Ę
*LARSOptimizer/update_pi/dense/bias/truedivRealDiv&LARSOptimizer/update_pi/dense/bias/mul(LARSOptimizer/update_pi/dense/bias/add_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

+LARSOptimizer/update_pi/dense/bias/Select/eConst*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *  ?*
dtype0
ý
)LARSOptimizer/update_pi/dense/bias/SelectSelect,LARSOptimizer/update_pi/dense/bias/Greater_1*LARSOptimizer/update_pi/dense/bias/truediv+LARSOptimizer/update_pi/dense/bias/Select/e*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

-LARSOptimizer/update_pi/dense/bias/Select_1/eConst* 
_class
loc:@pi/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ţ
+LARSOptimizer/update_pi/dense/bias/Select_1Select*LARSOptimizer/update_pi/dense/bias/Greater)LARSOptimizer/update_pi/dense/bias/Select-LARSOptimizer/update_pi/dense/bias/Select_1/e*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

*LARSOptimizer/update_pi/dense/bias/mul_2/xConst* 
_class
loc:@pi/dense/bias*
valueB
 *RI9*
dtype0*
_output_shapes
: 
Ë
(LARSOptimizer/update_pi/dense/bias/mul_2Mul*LARSOptimizer/update_pi/dense/bias/mul_2/x+LARSOptimizer/update_pi/dense/bias/Select_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
 
9LARSOptimizer/update_pi/dense/bias/ApplyMomentum/momentumConst* 
_class
loc:@pi/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ë
0LARSOptimizer/update_pi/dense/bias/ApplyMomentumApplyMomentumpi/dense/biaspi/dense/bias/LARSOptimizer(LARSOptimizer/update_pi/dense/bias/mul_2	Reshape_59LARSOptimizer/update_pi/dense/bias/ApplyMomentum/momentum*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
_output_shapes
: 
ľ
/LARSOptimizer/update_pi/dense_1/kernel/norm/mulMulpi/dense_1/kernel/readpi/dense_1/kernel/read*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
¨
1LARSOptimizer/update_pi/dense_1/kernel/norm/ConstConst*$
_class
loc:@pi/dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:

/LARSOptimizer/update_pi/dense_1/kernel/norm/SumSum/LARSOptimizer/update_pi/dense_1/kernel/norm/mul1LARSOptimizer/update_pi/dense_1/kernel/norm/Const*
_output_shapes

:*
	keep_dims(*

Tidx0*
T0*$
_class
loc:@pi/dense_1/kernel
¸
0LARSOptimizer/update_pi/dense_1/kernel/norm/SqrtSqrt/LARSOptimizer/update_pi/dense_1/kernel/norm/Sum*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:
Ë
3LARSOptimizer/update_pi/dense_1/kernel/norm/SqueezeSqueeze0LARSOptimizer/update_pi/dense_1/kernel/norm/Sqrt*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: *
squeeze_dims
 

1LARSOptimizer/update_pi/dense_1/kernel/norm_1/mulMul	Reshape_6	Reshape_6*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: *
T0
Ş
3LARSOptimizer/update_pi/dense_1/kernel/norm_1/ConstConst*$
_class
loc:@pi/dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:

1LARSOptimizer/update_pi/dense_1/kernel/norm_1/SumSum1LARSOptimizer/update_pi/dense_1/kernel/norm_1/mul3LARSOptimizer/update_pi/dense_1/kernel/norm_1/Const*
	keep_dims(*

Tidx0*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:
ź
2LARSOptimizer/update_pi/dense_1/kernel/norm_1/SqrtSqrt1LARSOptimizer/update_pi/dense_1/kernel/norm_1/Sum*
_output_shapes

:*
T0*$
_class
loc:@pi/dense_1/kernel
Ď
5LARSOptimizer/update_pi/dense_1/kernel/norm_1/SqueezeSqueeze2LARSOptimizer/update_pi/dense_1/kernel/norm_1/Sqrt*
squeeze_dims
 *
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

0LARSOptimizer/update_pi/dense_1/kernel/Greater/yConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *    *
dtype0
ç
.LARSOptimizer/update_pi/dense_1/kernel/GreaterGreater3LARSOptimizer/update_pi/dense_1/kernel/norm/Squeeze0LARSOptimizer/update_pi/dense_1/kernel/Greater/y*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

2LARSOptimizer/update_pi/dense_1/kernel/Greater_1/yConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
í
0LARSOptimizer/update_pi/dense_1/kernel/Greater_1Greater5LARSOptimizer/update_pi/dense_1/kernel/norm_1/Squeeze2LARSOptimizer/update_pi/dense_1/kernel/Greater_1/y*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

,LARSOptimizer/update_pi/dense_1/kernel/mul/xConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ű
*LARSOptimizer/update_pi/dense_1/kernel/mulMul,LARSOptimizer/update_pi/dense_1/kernel/mul/x3LARSOptimizer/update_pi/dense_1/kernel/norm/Squeeze*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

.LARSOptimizer/update_pi/dense_1/kernel/mul_1/xConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
ß
,LARSOptimizer/update_pi/dense_1/kernel/mul_1Mul.LARSOptimizer/update_pi/dense_1/kernel/mul_1/x3LARSOptimizer/update_pi/dense_1/kernel/norm/Squeeze*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
Ý
*LARSOptimizer/update_pi/dense_1/kernel/addAdd5LARSOptimizer/update_pi/dense_1/kernel/norm_1/Squeeze,LARSOptimizer/update_pi/dense_1/kernel/mul_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

.LARSOptimizer/update_pi/dense_1/kernel/add_1/yConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *    *
dtype0
Ö
,LARSOptimizer/update_pi/dense_1/kernel/add_1Add*LARSOptimizer/update_pi/dense_1/kernel/add.LARSOptimizer/update_pi/dense_1/kernel/add_1/y*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
Ú
.LARSOptimizer/update_pi/dense_1/kernel/truedivRealDiv*LARSOptimizer/update_pi/dense_1/kernel/mul,LARSOptimizer/update_pi/dense_1/kernel/add_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

/LARSOptimizer/update_pi/dense_1/kernel/Select/eConst*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *  ?*
dtype0

-LARSOptimizer/update_pi/dense_1/kernel/SelectSelect0LARSOptimizer/update_pi/dense_1/kernel/Greater_1.LARSOptimizer/update_pi/dense_1/kernel/truediv/LARSOptimizer/update_pi/dense_1/kernel/Select/e*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: *
T0

1LARSOptimizer/update_pi/dense_1/kernel/Select_1/eConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/LARSOptimizer/update_pi/dense_1/kernel/Select_1Select.LARSOptimizer/update_pi/dense_1/kernel/Greater-LARSOptimizer/update_pi/dense_1/kernel/Select1LARSOptimizer/update_pi/dense_1/kernel/Select_1/e*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: *
T0

.LARSOptimizer/update_pi/dense_1/kernel/mul_2/xConst*
dtype0*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *RI9
Ű
,LARSOptimizer/update_pi/dense_1/kernel/mul_2Mul.LARSOptimizer/update_pi/dense_1/kernel/mul_2/x/LARSOptimizer/update_pi/dense_1/kernel/Select_1*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
¨
=LARSOptimizer/update_pi/dense_1/kernel/ApplyMomentum/momentumConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *fff?*
dtype0*
_output_shapes
: 
ç
4LARSOptimizer/update_pi/dense_1/kernel/ApplyMomentumApplyMomentumpi/dense_1/kernelpi/dense_1/kernel/LARSOptimizer,LARSOptimizer/update_pi/dense_1/kernel/mul_2	Reshape_6=LARSOptimizer/update_pi/dense_1/kernel/ApplyMomentum/momentum*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( *
_output_shapes

: 
Š
-LARSOptimizer/update_pi/dense_1/bias/norm/mulMulpi/dense_1/bias/readpi/dense_1/bias/read*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:*
T0

/LARSOptimizer/update_pi/dense_1/bias/norm/ConstConst*"
_class
loc:@pi/dense_1/bias*
valueB: *
dtype0*
_output_shapes
:
ú
-LARSOptimizer/update_pi/dense_1/bias/norm/SumSum-LARSOptimizer/update_pi/dense_1/bias/norm/mul/LARSOptimizer/update_pi/dense_1/bias/norm/Const*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:*
	keep_dims(*

Tidx0
Ž
.LARSOptimizer/update_pi/dense_1/bias/norm/SqrtSqrt-LARSOptimizer/update_pi/dense_1/bias/norm/Sum*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
Ĺ
1LARSOptimizer/update_pi/dense_1/bias/norm/SqueezeSqueeze.LARSOptimizer/update_pi/dense_1/bias/norm/Sqrt*
squeeze_dims
 *
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

/LARSOptimizer/update_pi/dense_1/bias/norm_1/mulMul	Reshape_7	Reshape_7*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:

1LARSOptimizer/update_pi/dense_1/bias/norm_1/ConstConst*"
_class
loc:@pi/dense_1/bias*
valueB: *
dtype0*
_output_shapes
:

/LARSOptimizer/update_pi/dense_1/bias/norm_1/SumSum/LARSOptimizer/update_pi/dense_1/bias/norm_1/mul1LARSOptimizer/update_pi/dense_1/bias/norm_1/Const*
	keep_dims(*

Tidx0*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
˛
0LARSOptimizer/update_pi/dense_1/bias/norm_1/SqrtSqrt/LARSOptimizer/update_pi/dense_1/bias/norm_1/Sum*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:*
T0
É
3LARSOptimizer/update_pi/dense_1/bias/norm_1/SqueezeSqueeze0LARSOptimizer/update_pi/dense_1/bias/norm_1/Sqrt*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: *
squeeze_dims
 

.LARSOptimizer/update_pi/dense_1/bias/Greater/yConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
ß
,LARSOptimizer/update_pi/dense_1/bias/GreaterGreater1LARSOptimizer/update_pi/dense_1/bias/norm/Squeeze.LARSOptimizer/update_pi/dense_1/bias/Greater/y*
_output_shapes
: *
T0*"
_class
loc:@pi/dense_1/bias

0LARSOptimizer/update_pi/dense_1/bias/Greater_1/yConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
ĺ
.LARSOptimizer/update_pi/dense_1/bias/Greater_1Greater3LARSOptimizer/update_pi/dense_1/bias/norm_1/Squeeze0LARSOptimizer/update_pi/dense_1/bias/Greater_1/y*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

*LARSOptimizer/update_pi/dense_1/bias/mul/xConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ó
(LARSOptimizer/update_pi/dense_1/bias/mulMul*LARSOptimizer/update_pi/dense_1/bias/mul/x1LARSOptimizer/update_pi/dense_1/bias/norm/Squeeze*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

,LARSOptimizer/update_pi/dense_1/bias/mul_1/xConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
×
*LARSOptimizer/update_pi/dense_1/bias/mul_1Mul,LARSOptimizer/update_pi/dense_1/bias/mul_1/x1LARSOptimizer/update_pi/dense_1/bias/norm/Squeeze*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 
Ő
(LARSOptimizer/update_pi/dense_1/bias/addAdd3LARSOptimizer/update_pi/dense_1/bias/norm_1/Squeeze*LARSOptimizer/update_pi/dense_1/bias/mul_1*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

,LARSOptimizer/update_pi/dense_1/bias/add_1/yConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
*LARSOptimizer/update_pi/dense_1/bias/add_1Add(LARSOptimizer/update_pi/dense_1/bias/add,LARSOptimizer/update_pi/dense_1/bias/add_1/y*
_output_shapes
: *
T0*"
_class
loc:@pi/dense_1/bias
Ň
,LARSOptimizer/update_pi/dense_1/bias/truedivRealDiv(LARSOptimizer/update_pi/dense_1/bias/mul*LARSOptimizer/update_pi/dense_1/bias/add_1*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

-LARSOptimizer/update_pi/dense_1/bias/Select/eConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

+LARSOptimizer/update_pi/dense_1/bias/SelectSelect.LARSOptimizer/update_pi/dense_1/bias/Greater_1,LARSOptimizer/update_pi/dense_1/bias/truediv-LARSOptimizer/update_pi/dense_1/bias/Select/e*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

/LARSOptimizer/update_pi/dense_1/bias/Select_1/eConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

-LARSOptimizer/update_pi/dense_1/bias/Select_1Select,LARSOptimizer/update_pi/dense_1/bias/Greater+LARSOptimizer/update_pi/dense_1/bias/Select/LARSOptimizer/update_pi/dense_1/bias/Select_1/e*
_output_shapes
: *
T0*"
_class
loc:@pi/dense_1/bias

,LARSOptimizer/update_pi/dense_1/bias/mul_2/xConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *RI9*
dtype0*
_output_shapes
: 
Ó
*LARSOptimizer/update_pi/dense_1/bias/mul_2Mul,LARSOptimizer/update_pi/dense_1/bias/mul_2/x-LARSOptimizer/update_pi/dense_1/bias/Select_1*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 
¤
;LARSOptimizer/update_pi/dense_1/bias/ApplyMomentum/momentumConst*"
_class
loc:@pi/dense_1/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
×
2LARSOptimizer/update_pi/dense_1/bias/ApplyMomentumApplyMomentumpi/dense_1/biaspi/dense_1/bias/LARSOptimizer*LARSOptimizer/update_pi/dense_1/bias/mul_2	Reshape_7;LARSOptimizer/update_pi/dense_1/bias/ApplyMomentum/momentum*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( *
_output_shapes
:
é
LARSOptimizerNoOp1^LARSOptimizer/update_pi/dense/bias/ApplyMomentum3^LARSOptimizer/update_pi/dense/kernel/ApplyMomentum3^LARSOptimizer/update_pi/dense_1/bias/ApplyMomentum5^LARSOptimizer/update_pi/dense_1/kernel/ApplyMomentum
r
Reshape_8/shapeConst^LARSOptimizer*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o
	Reshape_8Reshapepi/dense/kernel/readReshape_8/shape*
_output_shapes	
: *
T0*
Tshape0
r
Reshape_9/shapeConst^LARSOptimizer*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
l
	Reshape_9Reshapepi/dense/bias/readReshape_9/shape*
T0*
Tshape0*
_output_shapes
: 
s
Reshape_10/shapeConst^LARSOptimizer*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_10Reshapepi/dense_1/kernel/readReshape_10/shape*
T0*
Tshape0*
_output_shapes	
:Ŕ
s
Reshape_11/shapeConst^LARSOptimizer*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
p

Reshape_11Reshapepi/dense_1/bias/readReshape_11/shape*
_output_shapes
:*
T0*
Tshape0
_
concat_1/axisConst^LARSOptimizer*
value	B : *
dtype0*
_output_shapes
: 

concat_1ConcatV2	Reshape_8	Reshape_9
Reshape_10
Reshape_11concat_1/axis*

Tidx0*
T0*
N*
_output_shapes	
:ň$
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
Const_5Const^LARSOptimizer*
_output_shapes
:*%
valueB"       @     *
dtype0
c
split_1/split_dimConst^LARSOptimizer*
value	B : *
dtype0*
_output_shapes
: 

split_1SplitVPyFunc_1Const_5split_1/split_dim*

Tlen0*
	num_split*$
_output_shapes
::::*
T0
q
Reshape_12/shapeConst^LARSOptimizer*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_12Reshapesplit_1Reshape_12/shape*
_output_shapes
:	 *
T0*
Tshape0
j
Reshape_13/shapeConst^LARSOptimizer*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_13Reshape	split_1:1Reshape_13/shape*
_output_shapes
: *
T0*
Tshape0
q
Reshape_14/shapeConst^LARSOptimizer*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_14Reshape	split_1:2Reshape_14/shape*
T0*
Tshape0*
_output_shapes

: 
j
Reshape_15/shapeConst^LARSOptimizer*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_15Reshape	split_1:3Reshape_15/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_14*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
Ą
Assign_3Assignpi/dense_1/bias
Reshape_15*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
L

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3^LARSOptimizer
1
group_deps_1NoOp^LARSOptimizer^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
valueB
 *  ?*
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
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
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
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
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
gradients_1/pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
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
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
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
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape
×
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*
_output_shapes
: *
T0*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1
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
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ş
gradients_1/sub_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
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
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape
ä
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1
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
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
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
=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad
Ţ
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b(*
T0
Ď
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Relu6;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: *
transpose_b( 

2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1

:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: 
˛
(gradients_1/v/dense/Relu6_grad/Relu6Grad	Relu6Grad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Relu6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ą
,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/v/dense/Relu6_grad/Relu6Grad*
T0*
data_formatNHWC*
_output_shapes
: 

1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad)^gradients_1/v/dense/Relu6_grad/Relu6Grad

9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/v/dense/Relu6_grad/Relu6Grad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense/Relu6_grad/Relu6Grad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Ů
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	 *
transpose_b( 

0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1

8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	 *
T0*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1
c
Reshape_16/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_16Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_16/shape*
T0*
Tshape0*
_output_shapes	
: 
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

Reshape_18Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes
: 
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
:Á *

Tidx0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:Á *
Tout
2*
token
pyfunc_2
`
Const_6Const*%
valueB"              *
dtype0*
_output_shapes
:
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
: : : :
a
Reshape_20/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_20Reshapesplit_2Reshape_20/shape*
_output_shapes
:	 *
T0*
Tshape0
Z
Reshape_21/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_21Reshape	split_2:1Reshape_21/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_22/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_22Reshape	split_2:2Reshape_22/shape*
T0*
Tshape0*
_output_shapes

: 
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
˛
>v/dense/kernel/LARSOptimizer/Initializer/zeros/shape_as_tensorConst*
valueB"       *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:

4v/dense/kernel/LARSOptimizer/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 

.v/dense/kernel/LARSOptimizer/Initializer/zerosFill>v/dense/kernel/LARSOptimizer/Initializer/zeros/shape_as_tensor4v/dense/kernel/LARSOptimizer/Initializer/zeros/Const*
_output_shapes
:	 *
T0*

index_type0*!
_class
loc:@v/dense/kernel
ľ
v/dense/kernel/LARSOptimizer
VariableV2*
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name *!
_class
loc:@v/dense/kernel*
	container 
ń
#v/dense/kernel/LARSOptimizer/AssignAssignv/dense/kernel/LARSOptimizer.v/dense/kernel/LARSOptimizer/Initializer/zeros*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(

!v/dense/kernel/LARSOptimizer/readIdentityv/dense/kernel/LARSOptimizer*
_output_shapes
:	 *
T0*!
_class
loc:@v/dense/kernel

,v/dense/bias/LARSOptimizer/Initializer/zerosConst*
valueB *    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
§
v/dense/bias/LARSOptimizer
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container 
ä
!v/dense/bias/LARSOptimizer/AssignAssignv/dense/bias/LARSOptimizer,v/dense/bias/LARSOptimizer/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias

v/dense/bias/LARSOptimizer/readIdentityv/dense/bias/LARSOptimizer*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
Ş
0v/dense_1/kernel/LARSOptimizer/Initializer/zerosConst*
_output_shapes

: *
valueB *    *#
_class
loc:@v/dense_1/kernel*
dtype0
ˇ
v/dense_1/kernel/LARSOptimizer
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
ř
%v/dense_1/kernel/LARSOptimizer/AssignAssignv/dense_1/kernel/LARSOptimizer0v/dense_1/kernel/LARSOptimizer/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

#v/dense_1/kernel/LARSOptimizer/readIdentityv/dense_1/kernel/LARSOptimizer*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel

.v/dense_1/bias/LARSOptimizer/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:
Ť
v/dense_1/bias/LARSOptimizer
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container 
ě
#v/dense_1/bias/LARSOptimizer/AssignAssignv/dense_1/bias/LARSOptimizer.v/dense_1/bias/LARSOptimizer/Initializer/zeros*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

!v/dense_1/bias/LARSOptimizer/readIdentityv/dense_1/bias/LARSOptimizer*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
b
LARSOptimizer_1/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o:
]
LARSOptimizer_1/momentumConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ź
.LARSOptimizer_1/update_v/dense/kernel/norm/mulMulv/dense/kernel/readv/dense/kernel/read*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
¤
0LARSOptimizer_1/update_v/dense/kernel/norm/ConstConst*!
_class
loc:@v/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:

.LARSOptimizer_1/update_v/dense/kernel/norm/SumSum.LARSOptimizer_1/update_v/dense/kernel/norm/mul0LARSOptimizer_1/update_v/dense/kernel/norm/Const*
_output_shapes

:*
	keep_dims(*

Tidx0*
T0*!
_class
loc:@v/dense/kernel
ł
/LARSOptimizer_1/update_v/dense/kernel/norm/SqrtSqrt.LARSOptimizer_1/update_v/dense/kernel/norm/Sum*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:
Ć
2LARSOptimizer_1/update_v/dense/kernel/norm/SqueezeSqueeze/LARSOptimizer_1/update_v/dense/kernel/norm/Sqrt*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
squeeze_dims
 

0LARSOptimizer_1/update_v/dense/kernel/norm_1/mulMul
Reshape_20
Reshape_20*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
Ś
2LARSOptimizer_1/update_v/dense/kernel/norm_1/ConstConst*!
_class
loc:@v/dense/kernel*
valueB"       *
dtype0*
_output_shapes
:

0LARSOptimizer_1/update_v/dense/kernel/norm_1/SumSum0LARSOptimizer_1/update_v/dense/kernel/norm_1/mul2LARSOptimizer_1/update_v/dense/kernel/norm_1/Const*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:*
	keep_dims(*

Tidx0
ˇ
1LARSOptimizer_1/update_v/dense/kernel/norm_1/SqrtSqrt0LARSOptimizer_1/update_v/dense/kernel/norm_1/Sum*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:
Ę
4LARSOptimizer_1/update_v/dense/kernel/norm_1/SqueezeSqueeze1LARSOptimizer_1/update_v/dense/kernel/norm_1/Sqrt*
squeeze_dims
 *
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

/LARSOptimizer_1/update_v/dense/kernel/Greater/yConst*!
_class
loc:@v/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
á
-LARSOptimizer_1/update_v/dense/kernel/GreaterGreater2LARSOptimizer_1/update_v/dense/kernel/norm/Squeeze/LARSOptimizer_1/update_v/dense/kernel/Greater/y*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

1LARSOptimizer_1/update_v/dense/kernel/Greater_1/yConst*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
valueB
 *    *
dtype0
ç
/LARSOptimizer_1/update_v/dense/kernel/Greater_1Greater4LARSOptimizer_1/update_v/dense/kernel/norm_1/Squeeze1LARSOptimizer_1/update_v/dense/kernel/Greater_1/y*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

+LARSOptimizer_1/update_v/dense/kernel/mul/xConst*!
_class
loc:@v/dense/kernel*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ő
)LARSOptimizer_1/update_v/dense/kernel/mulMul+LARSOptimizer_1/update_v/dense/kernel/mul/x2LARSOptimizer_1/update_v/dense/kernel/norm/Squeeze*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

-LARSOptimizer_1/update_v/dense/kernel/mul_1/xConst*!
_class
loc:@v/dense/kernel*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
Ů
+LARSOptimizer_1/update_v/dense/kernel/mul_1Mul-LARSOptimizer_1/update_v/dense/kernel/mul_1/x2LARSOptimizer_1/update_v/dense/kernel/norm/Squeeze*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
×
)LARSOptimizer_1/update_v/dense/kernel/addAdd4LARSOptimizer_1/update_v/dense/kernel/norm_1/Squeeze+LARSOptimizer_1/update_v/dense/kernel/mul_1*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

-LARSOptimizer_1/update_v/dense/kernel/add_1/yConst*!
_class
loc:@v/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Đ
+LARSOptimizer_1/update_v/dense/kernel/add_1Add)LARSOptimizer_1/update_v/dense/kernel/add-LARSOptimizer_1/update_v/dense/kernel/add_1/y*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
Ô
-LARSOptimizer_1/update_v/dense/kernel/truedivRealDiv)LARSOptimizer_1/update_v/dense/kernel/mul+LARSOptimizer_1/update_v/dense/kernel/add_1*
_output_shapes
: *
T0*!
_class
loc:@v/dense/kernel

.LARSOptimizer_1/update_v/dense/kernel/Select/eConst*!
_class
loc:@v/dense/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

,LARSOptimizer_1/update_v/dense/kernel/SelectSelect/LARSOptimizer_1/update_v/dense/kernel/Greater_1-LARSOptimizer_1/update_v/dense/kernel/truediv.LARSOptimizer_1/update_v/dense/kernel/Select/e*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

0LARSOptimizer_1/update_v/dense/kernel/Select_1/eConst*!
_class
loc:@v/dense/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.LARSOptimizer_1/update_v/dense/kernel/Select_1Select-LARSOptimizer_1/update_v/dense/kernel/Greater,LARSOptimizer_1/update_v/dense/kernel/Select0LARSOptimizer_1/update_v/dense/kernel/Select_1/e*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 

-LARSOptimizer_1/update_v/dense/kernel/mul_2/xConst*!
_class
loc:@v/dense/kernel*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ő
+LARSOptimizer_1/update_v/dense/kernel/mul_2Mul-LARSOptimizer_1/update_v/dense/kernel/mul_2/x.LARSOptimizer_1/update_v/dense/kernel/Select_1*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
T0
¤
<LARSOptimizer_1/update_v/dense/kernel/ApplyMomentum/momentumConst*
dtype0*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
valueB
 *fff?
Ý
3LARSOptimizer_1/update_v/dense/kernel/ApplyMomentumApplyMomentumv/dense/kernelv/dense/kernel/LARSOptimizer+LARSOptimizer_1/update_v/dense/kernel/mul_2
Reshape_20<LARSOptimizer_1/update_v/dense/kernel/ApplyMomentum/momentum*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
use_nesterov( *
_output_shapes
:	 

,LARSOptimizer_1/update_v/dense/bias/norm/mulMulv/dense/bias/readv/dense/bias/read*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias

.LARSOptimizer_1/update_v/dense/bias/norm/ConstConst*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:
ô
,LARSOptimizer_1/update_v/dense/bias/norm/SumSum,LARSOptimizer_1/update_v/dense/bias/norm/mul.LARSOptimizer_1/update_v/dense/bias/norm/Const*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:*
	keep_dims(*

Tidx0
Š
-LARSOptimizer_1/update_v/dense/bias/norm/SqrtSqrt,LARSOptimizer_1/update_v/dense/bias/norm/Sum*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:
Ŕ
0LARSOptimizer_1/update_v/dense/bias/norm/SqueezeSqueeze-LARSOptimizer_1/update_v/dense/bias/norm/Sqrt*
_output_shapes
: *
squeeze_dims
 *
T0*
_class
loc:@v/dense/bias

.LARSOptimizer_1/update_v/dense/bias/norm_1/mulMul
Reshape_21
Reshape_21*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

0LARSOptimizer_1/update_v/dense/bias/norm_1/ConstConst*
_class
loc:@v/dense/bias*
valueB: *
dtype0*
_output_shapes
:
ú
.LARSOptimizer_1/update_v/dense/bias/norm_1/SumSum.LARSOptimizer_1/update_v/dense/bias/norm_1/mul0LARSOptimizer_1/update_v/dense/bias/norm_1/Const*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:*
	keep_dims(*

Tidx0
­
/LARSOptimizer_1/update_v/dense/bias/norm_1/SqrtSqrt.LARSOptimizer_1/update_v/dense/bias/norm_1/Sum*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:
Ä
2LARSOptimizer_1/update_v/dense/bias/norm_1/SqueezeSqueeze/LARSOptimizer_1/update_v/dense/bias/norm_1/Sqrt*
squeeze_dims
 *
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

-LARSOptimizer_1/update_v/dense/bias/Greater/yConst*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *    *
dtype0
Ů
+LARSOptimizer_1/update_v/dense/bias/GreaterGreater0LARSOptimizer_1/update_v/dense/bias/norm/Squeeze-LARSOptimizer_1/update_v/dense/bias/Greater/y*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

/LARSOptimizer_1/update_v/dense/bias/Greater_1/yConst*
_class
loc:@v/dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
ß
-LARSOptimizer_1/update_v/dense/bias/Greater_1Greater2LARSOptimizer_1/update_v/dense/bias/norm_1/Squeeze/LARSOptimizer_1/update_v/dense/bias/Greater_1/y*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

)LARSOptimizer_1/update_v/dense/bias/mul/xConst*
_class
loc:@v/dense/bias*
valueB
 *o:*
dtype0*
_output_shapes
: 
Í
'LARSOptimizer_1/update_v/dense/bias/mulMul)LARSOptimizer_1/update_v/dense/bias/mul/x0LARSOptimizer_1/update_v/dense/bias/norm/Squeeze*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

+LARSOptimizer_1/update_v/dense/bias/mul_1/xConst*
_class
loc:@v/dense/bias*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
Ń
)LARSOptimizer_1/update_v/dense/bias/mul_1Mul+LARSOptimizer_1/update_v/dense/bias/mul_1/x0LARSOptimizer_1/update_v/dense/bias/norm/Squeeze*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Ď
'LARSOptimizer_1/update_v/dense/bias/addAdd2LARSOptimizer_1/update_v/dense/bias/norm_1/Squeeze)LARSOptimizer_1/update_v/dense/bias/mul_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

+LARSOptimizer_1/update_v/dense/bias/add_1/yConst*
dtype0*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *    
Č
)LARSOptimizer_1/update_v/dense/bias/add_1Add'LARSOptimizer_1/update_v/dense/bias/add+LARSOptimizer_1/update_v/dense/bias/add_1/y*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
Ě
+LARSOptimizer_1/update_v/dense/bias/truedivRealDiv'LARSOptimizer_1/update_v/dense/bias/mul)LARSOptimizer_1/update_v/dense/bias/add_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

,LARSOptimizer_1/update_v/dense/bias/Select/eConst*
dtype0*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *  ?

*LARSOptimizer_1/update_v/dense/bias/SelectSelect-LARSOptimizer_1/update_v/dense/bias/Greater_1+LARSOptimizer_1/update_v/dense/bias/truediv,LARSOptimizer_1/update_v/dense/bias/Select/e*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias

.LARSOptimizer_1/update_v/dense/bias/Select_1/eConst*
_class
loc:@v/dense/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

,LARSOptimizer_1/update_v/dense/bias/Select_1Select+LARSOptimizer_1/update_v/dense/bias/Greater*LARSOptimizer_1/update_v/dense/bias/Select.LARSOptimizer_1/update_v/dense/bias/Select_1/e*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

+LARSOptimizer_1/update_v/dense/bias/mul_2/xConst*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *o:*
dtype0
Í
)LARSOptimizer_1/update_v/dense/bias/mul_2Mul+LARSOptimizer_1/update_v/dense/bias/mul_2/x,LARSOptimizer_1/update_v/dense/bias/Select_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
 
:LARSOptimizer_1/update_v/dense/bias/ApplyMomentum/momentumConst*
dtype0*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *fff?
Ě
1LARSOptimizer_1/update_v/dense/bias/ApplyMomentumApplyMomentumv/dense/biasv/dense/bias/LARSOptimizer)LARSOptimizer_1/update_v/dense/bias/mul_2
Reshape_21:LARSOptimizer_1/update_v/dense/bias/ApplyMomentum/momentum*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias
ł
0LARSOptimizer_1/update_v/dense_1/kernel/norm/mulMulv/dense_1/kernel/readv/dense_1/kernel/read*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
¨
2LARSOptimizer_1/update_v/dense_1/kernel/norm/ConstConst*#
_class
loc:@v/dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:

0LARSOptimizer_1/update_v/dense_1/kernel/norm/SumSum0LARSOptimizer_1/update_v/dense_1/kernel/norm/mul2LARSOptimizer_1/update_v/dense_1/kernel/norm/Const*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:*
	keep_dims(*

Tidx0
š
1LARSOptimizer_1/update_v/dense_1/kernel/norm/SqrtSqrt0LARSOptimizer_1/update_v/dense_1/kernel/norm/Sum*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:
Ě
4LARSOptimizer_1/update_v/dense_1/kernel/norm/SqueezeSqueeze1LARSOptimizer_1/update_v/dense_1/kernel/norm/Sqrt*
_output_shapes
: *
squeeze_dims
 *
T0*#
_class
loc:@v/dense_1/kernel

2LARSOptimizer_1/update_v/dense_1/kernel/norm_1/mulMul
Reshape_22
Reshape_22*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
Ş
4LARSOptimizer_1/update_v/dense_1/kernel/norm_1/ConstConst*#
_class
loc:@v/dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:

2LARSOptimizer_1/update_v/dense_1/kernel/norm_1/SumSum2LARSOptimizer_1/update_v/dense_1/kernel/norm_1/mul4LARSOptimizer_1/update_v/dense_1/kernel/norm_1/Const*
_output_shapes

:*
	keep_dims(*

Tidx0*
T0*#
_class
loc:@v/dense_1/kernel
˝
3LARSOptimizer_1/update_v/dense_1/kernel/norm_1/SqrtSqrt2LARSOptimizer_1/update_v/dense_1/kernel/norm_1/Sum*
_output_shapes

:*
T0*#
_class
loc:@v/dense_1/kernel
Đ
6LARSOptimizer_1/update_v/dense_1/kernel/norm_1/SqueezeSqueeze3LARSOptimizer_1/update_v/dense_1/kernel/norm_1/Sqrt*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: *
squeeze_dims
 

1LARSOptimizer_1/update_v/dense_1/kernel/Greater/yConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
é
/LARSOptimizer_1/update_v/dense_1/kernel/GreaterGreater4LARSOptimizer_1/update_v/dense_1/kernel/norm/Squeeze1LARSOptimizer_1/update_v/dense_1/kernel/Greater/y*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel

3LARSOptimizer_1/update_v/dense_1/kernel/Greater_1/yConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ď
1LARSOptimizer_1/update_v/dense_1/kernel/Greater_1Greater6LARSOptimizer_1/update_v/dense_1/kernel/norm_1/Squeeze3LARSOptimizer_1/update_v/dense_1/kernel/Greater_1/y*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 

-LARSOptimizer_1/update_v/dense_1/kernel/mul/xConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ý
+LARSOptimizer_1/update_v/dense_1/kernel/mulMul-LARSOptimizer_1/update_v/dense_1/kernel/mul/x4LARSOptimizer_1/update_v/dense_1/kernel/norm/Squeeze*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 

/LARSOptimizer_1/update_v/dense_1/kernel/mul_1/xConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
á
-LARSOptimizer_1/update_v/dense_1/kernel/mul_1Mul/LARSOptimizer_1/update_v/dense_1/kernel/mul_1/x4LARSOptimizer_1/update_v/dense_1/kernel/norm/Squeeze*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
ß
+LARSOptimizer_1/update_v/dense_1/kernel/addAdd6LARSOptimizer_1/update_v/dense_1/kernel/norm_1/Squeeze-LARSOptimizer_1/update_v/dense_1/kernel/mul_1*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 

/LARSOptimizer_1/update_v/dense_1/kernel/add_1/yConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *    
Ř
-LARSOptimizer_1/update_v/dense_1/kernel/add_1Add+LARSOptimizer_1/update_v/dense_1/kernel/add/LARSOptimizer_1/update_v/dense_1/kernel/add_1/y*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
Ü
/LARSOptimizer_1/update_v/dense_1/kernel/truedivRealDiv+LARSOptimizer_1/update_v/dense_1/kernel/mul-LARSOptimizer_1/update_v/dense_1/kernel/add_1*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: *
T0

0LARSOptimizer_1/update_v/dense_1/kernel/Select/eConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.LARSOptimizer_1/update_v/dense_1/kernel/SelectSelect1LARSOptimizer_1/update_v/dense_1/kernel/Greater_1/LARSOptimizer_1/update_v/dense_1/kernel/truediv0LARSOptimizer_1/update_v/dense_1/kernel/Select/e*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 

2LARSOptimizer_1/update_v/dense_1/kernel/Select_1/eConst*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *  ?*
dtype0

0LARSOptimizer_1/update_v/dense_1/kernel/Select_1Select/LARSOptimizer_1/update_v/dense_1/kernel/Greater.LARSOptimizer_1/update_v/dense_1/kernel/Select2LARSOptimizer_1/update_v/dense_1/kernel/Select_1/e*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 

/LARSOptimizer_1/update_v/dense_1/kernel/mul_2/xConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ý
-LARSOptimizer_1/update_v/dense_1/kernel/mul_2Mul/LARSOptimizer_1/update_v/dense_1/kernel/mul_2/x0LARSOptimizer_1/update_v/dense_1/kernel/Select_1*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
¨
>LARSOptimizer_1/update_v/dense_1/kernel/ApplyMomentum/momentumConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *fff?*
dtype0*
_output_shapes
: 
č
5LARSOptimizer_1/update_v/dense_1/kernel/ApplyMomentumApplyMomentumv/dense_1/kernelv/dense_1/kernel/LARSOptimizer-LARSOptimizer_1/update_v/dense_1/kernel/mul_2
Reshape_22>LARSOptimizer_1/update_v/dense_1/kernel/ApplyMomentum/momentum*
T0*#
_class
loc:@v/dense_1/kernel*
use_nesterov( *
_output_shapes

: *
use_locking( 
§
.LARSOptimizer_1/update_v/dense_1/bias/norm/mulMulv/dense_1/bias/readv/dense_1/bias/read*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:

0LARSOptimizer_1/update_v/dense_1/bias/norm/ConstConst*!
_class
loc:@v/dense_1/bias*
valueB: *
dtype0*
_output_shapes
:
ü
.LARSOptimizer_1/update_v/dense_1/bias/norm/SumSum.LARSOptimizer_1/update_v/dense_1/bias/norm/mul0LARSOptimizer_1/update_v/dense_1/bias/norm/Const*
	keep_dims(*

Tidx0*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
Ż
/LARSOptimizer_1/update_v/dense_1/bias/norm/SqrtSqrt.LARSOptimizer_1/update_v/dense_1/bias/norm/Sum*!
_class
loc:@v/dense_1/bias*
_output_shapes
:*
T0
Ć
2LARSOptimizer_1/update_v/dense_1/bias/norm/SqueezeSqueeze/LARSOptimizer_1/update_v/dense_1/bias/norm/Sqrt*
squeeze_dims
 *
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
: 

0LARSOptimizer_1/update_v/dense_1/bias/norm_1/mulMul
Reshape_23
Reshape_23*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias

2LARSOptimizer_1/update_v/dense_1/bias/norm_1/ConstConst*!
_class
loc:@v/dense_1/bias*
valueB: *
dtype0*
_output_shapes
:

0LARSOptimizer_1/update_v/dense_1/bias/norm_1/SumSum0LARSOptimizer_1/update_v/dense_1/bias/norm_1/mul2LARSOptimizer_1/update_v/dense_1/bias/norm_1/Const*
_output_shapes
:*
	keep_dims(*

Tidx0*
T0*!
_class
loc:@v/dense_1/bias
ł
1LARSOptimizer_1/update_v/dense_1/bias/norm_1/SqrtSqrt0LARSOptimizer_1/update_v/dense_1/bias/norm_1/Sum*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
Ę
4LARSOptimizer_1/update_v/dense_1/bias/norm_1/SqueezeSqueeze1LARSOptimizer_1/update_v/dense_1/bias/norm_1/Sqrt*!
_class
loc:@v/dense_1/bias*
_output_shapes
: *
squeeze_dims
 *
T0

/LARSOptimizer_1/update_v/dense_1/bias/Greater/yConst*!
_class
loc:@v/dense_1/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
á
-LARSOptimizer_1/update_v/dense_1/bias/GreaterGreater2LARSOptimizer_1/update_v/dense_1/bias/norm/Squeeze/LARSOptimizer_1/update_v/dense_1/bias/Greater/y*
_output_shapes
: *
T0*!
_class
loc:@v/dense_1/bias

1LARSOptimizer_1/update_v/dense_1/bias/Greater_1/yConst*!
_class
loc:@v/dense_1/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
ç
/LARSOptimizer_1/update_v/dense_1/bias/Greater_1Greater4LARSOptimizer_1/update_v/dense_1/bias/norm_1/Squeeze1LARSOptimizer_1/update_v/dense_1/bias/Greater_1/y*
_output_shapes
: *
T0*!
_class
loc:@v/dense_1/bias

+LARSOptimizer_1/update_v/dense_1/bias/mul/xConst*
_output_shapes
: *!
_class
loc:@v/dense_1/bias*
valueB
 *o:*
dtype0
Ő
)LARSOptimizer_1/update_v/dense_1/bias/mulMul+LARSOptimizer_1/update_v/dense_1/bias/mul/x2LARSOptimizer_1/update_v/dense_1/bias/norm/Squeeze*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
: 

-LARSOptimizer_1/update_v/dense_1/bias/mul_1/xConst*!
_class
loc:@v/dense_1/bias*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
Ů
+LARSOptimizer_1/update_v/dense_1/bias/mul_1Mul-LARSOptimizer_1/update_v/dense_1/bias/mul_1/x2LARSOptimizer_1/update_v/dense_1/bias/norm/Squeeze*
_output_shapes
: *
T0*!
_class
loc:@v/dense_1/bias
×
)LARSOptimizer_1/update_v/dense_1/bias/addAdd4LARSOptimizer_1/update_v/dense_1/bias/norm_1/Squeeze+LARSOptimizer_1/update_v/dense_1/bias/mul_1*
_output_shapes
: *
T0*!
_class
loc:@v/dense_1/bias

-LARSOptimizer_1/update_v/dense_1/bias/add_1/yConst*
_output_shapes
: *!
_class
loc:@v/dense_1/bias*
valueB
 *    *
dtype0
Đ
+LARSOptimizer_1/update_v/dense_1/bias/add_1Add)LARSOptimizer_1/update_v/dense_1/bias/add-LARSOptimizer_1/update_v/dense_1/bias/add_1/y*
_output_shapes
: *
T0*!
_class
loc:@v/dense_1/bias
Ô
-LARSOptimizer_1/update_v/dense_1/bias/truedivRealDiv)LARSOptimizer_1/update_v/dense_1/bias/mul+LARSOptimizer_1/update_v/dense_1/bias/add_1*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
: 

.LARSOptimizer_1/update_v/dense_1/bias/Select/eConst*
dtype0*
_output_shapes
: *!
_class
loc:@v/dense_1/bias*
valueB
 *  ?

,LARSOptimizer_1/update_v/dense_1/bias/SelectSelect/LARSOptimizer_1/update_v/dense_1/bias/Greater_1-LARSOptimizer_1/update_v/dense_1/bias/truediv.LARSOptimizer_1/update_v/dense_1/bias/Select/e*!
_class
loc:@v/dense_1/bias*
_output_shapes
: *
T0

0LARSOptimizer_1/update_v/dense_1/bias/Select_1/eConst*
dtype0*
_output_shapes
: *!
_class
loc:@v/dense_1/bias*
valueB
 *  ?

.LARSOptimizer_1/update_v/dense_1/bias/Select_1Select-LARSOptimizer_1/update_v/dense_1/bias/Greater,LARSOptimizer_1/update_v/dense_1/bias/Select0LARSOptimizer_1/update_v/dense_1/bias/Select_1/e*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
: 

-LARSOptimizer_1/update_v/dense_1/bias/mul_2/xConst*!
_class
loc:@v/dense_1/bias*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ő
+LARSOptimizer_1/update_v/dense_1/bias/mul_2Mul-LARSOptimizer_1/update_v/dense_1/bias/mul_2/x.LARSOptimizer_1/update_v/dense_1/bias/Select_1*!
_class
loc:@v/dense_1/bias*
_output_shapes
: *
T0
¤
<LARSOptimizer_1/update_v/dense_1/bias/ApplyMomentum/momentumConst*!
_class
loc:@v/dense_1/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ř
3LARSOptimizer_1/update_v/dense_1/bias/ApplyMomentumApplyMomentumv/dense_1/biasv/dense_1/bias/LARSOptimizer+LARSOptimizer_1/update_v/dense_1/bias/mul_2
Reshape_23<LARSOptimizer_1/update_v/dense_1/bias/ApplyMomentum/momentum*!
_class
loc:@v/dense_1/bias*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0
ď
LARSOptimizer_1NoOp2^LARSOptimizer_1/update_v/dense/bias/ApplyMomentum4^LARSOptimizer_1/update_v/dense/kernel/ApplyMomentum4^LARSOptimizer_1/update_v/dense_1/bias/ApplyMomentum6^LARSOptimizer_1/update_v/dense_1/kernel/ApplyMomentum
u
Reshape_24/shapeConst^LARSOptimizer_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_24Reshapev/dense/kernel/readReshape_24/shape*
T0*
Tshape0*
_output_shapes	
: 
u
Reshape_25/shapeConst^LARSOptimizer_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m

Reshape_25Reshapev/dense/bias/readReshape_25/shape*
T0*
Tshape0*
_output_shapes
: 
u
Reshape_26/shapeConst^LARSOptimizer_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q

Reshape_26Reshapev/dense_1/kernel/readReshape_26/shape*
_output_shapes
: *
T0*
Tshape0
u
Reshape_27/shapeConst^LARSOptimizer_1*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o

Reshape_27Reshapev/dense_1/bias/readReshape_27/shape*
T0*
Tshape0*
_output_shapes
:
a
concat_3/axisConst^LARSOptimizer_1*
dtype0*
_output_shapes
: *
value	B : 

concat_3ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27concat_3/axis*
T0*
N*
_output_shapes	
:Á *

Tidx0
h
PyFunc_3PyFuncconcat_3*
Tout
2*
token
pyfunc_3*
Tin
2*
_output_shapes
:
r
Const_7Const^LARSOptimizer_1*
dtype0*
_output_shapes
:*%
valueB"              
e
split_3/split_dimConst^LARSOptimizer_1*
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
s
Reshape_28/shapeConst^LARSOptimizer_1*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_28Reshapesplit_3Reshape_28/shape*
_output_shapes
:	 *
T0*
Tshape0
l
Reshape_29/shapeConst^LARSOptimizer_1*
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
s
Reshape_30/shapeConst^LARSOptimizer_1*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_30Reshape	split_3:2Reshape_30/shape*
T0*
Tshape0*
_output_shapes

: 
l
Reshape_31/shapeConst^LARSOptimizer_1*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_31Reshape	split_3:3Reshape_31/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_29*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
§
Assign_6Assignv/dense_1/kernel
Reshape_30*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

Assign_7Assignv/dense_1/bias
Reshape_31*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
R
group_deps_2NoOp	^Assign_4	^Assign_5	^Assign_6	^Assign_7^LARSOptimizer_1
5
group_deps_3NoOp^LARSOptimizer_1^group_deps_2

initNoOp^pi/dense/bias/Assign#^pi/dense/bias/LARSOptimizer/Assign^pi/dense/kernel/Assign%^pi/dense/kernel/LARSOptimizer/Assign^pi/dense_1/bias/Assign%^pi/dense_1/bias/LARSOptimizer/Assign^pi/dense_1/kernel/Assign'^pi/dense_1/kernel/LARSOptimizer/Assign^v/dense/bias/Assign"^v/dense/bias/LARSOptimizer/Assign^v/dense/kernel/Assign$^v/dense/kernel/LARSOptimizer/Assign^v/dense_1/bias/Assign$^v/dense_1/bias/LARSOptimizer/Assign^v/dense_1/kernel/Assign&^v/dense_1/kernel/LARSOptimizer/Assign
c
Reshape_32/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
q

Reshape_32Reshapepi/dense/kernel/readReshape_32/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_33/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
n

Reshape_33Reshapepi/dense/bias/readReshape_33/shape*
T0*
Tshape0*
_output_shapes
: 
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
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
p

Reshape_35Reshapepi/dense_1/bias/readReshape_35/shape*
_output_shapes
:*
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

Reshape_38Reshapev/dense_1/kernel/readReshape_38/shape*
Tshape0*
_output_shapes
: *
T0
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
c
Reshape_40/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_40Reshape"pi/dense/kernel/LARSOptimizer/readReshape_40/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_41/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
|

Reshape_41Reshape pi/dense/bias/LARSOptimizer/readReshape_41/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_42/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_42Reshape$pi/dense_1/kernel/LARSOptimizer/readReshape_42/shape*
T0*
Tshape0*
_output_shapes	
:Ŕ
c
Reshape_43/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
~

Reshape_43Reshape"pi/dense_1/bias/LARSOptimizer/readReshape_43/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_44/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
~

Reshape_44Reshape!v/dense/kernel/LARSOptimizer/readReshape_44/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_45/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
{

Reshape_45Reshapev/dense/bias/LARSOptimizer/readReshape_45/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_46/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:


Reshape_46Reshape#v/dense_1/kernel/LARSOptimizer/readReshape_46/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_47/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
}

Reshape_47Reshape!v/dense_1/bias/LARSOptimizer/readReshape_47/shape*
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

concat_4ConcatV2
Reshape_32
Reshape_33
Reshape_34
Reshape_35
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
Reshape_47concat_4/axis*
T0*
N*
_output_shapes

:ć*

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

Const_8Const*U
valueLBJ"@       @                          @                   *
dtype0*
_output_shapes
:
S
split_4/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
ł
split_4SplitVPyFunc_4Const_8split_4/split_dim*
T0*

Tlen0*
	num_split*T
_output_shapesB
@::::::::::::::::
a
Reshape_48/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
h

Reshape_48Reshapesplit_4Reshape_48/shape*
T0*
Tshape0*
_output_shapes
:	 
Z
Reshape_49/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_49Reshape	split_4:1Reshape_49/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_50/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_50Reshape	split_4:2Reshape_50/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_51/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_51Reshape	split_4:3Reshape_51/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_52/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_52Reshape	split_4:4Reshape_52/shape*
_output_shapes
:	 *
T0*
Tshape0
Z
Reshape_53/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_53Reshape	split_4:5Reshape_53/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_54/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_54Reshape	split_4:6Reshape_54/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_55/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_55Reshape	split_4:7Reshape_55/shape*
_output_shapes
:*
T0*
Tshape0
a
Reshape_56/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_56Reshape	split_4:8Reshape_56/shape*
_output_shapes
:	 *
T0*
Tshape0
Z
Reshape_57/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_57Reshape	split_4:9Reshape_57/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_58/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
j

Reshape_58Reshape
split_4:10Reshape_58/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_59/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_59Reshape
split_4:11Reshape_59/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_60/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
k

Reshape_60Reshape
split_4:12Reshape_60/shape*
T0*
Tshape0*
_output_shapes
:	 
Z
Reshape_61/shapeConst*
valueB: *
dtype0*
_output_shapes
:
f

Reshape_61Reshape
split_4:13Reshape_61/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_62/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_62Reshape
split_4:14Reshape_62/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_63/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_63Reshape
split_4:15Reshape_63/shape*
T0*
Tshape0*
_output_shapes
:
Ś
Assign_8Assignpi/dense/kernel
Reshape_48*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 

Assign_9Assignpi/dense/bias
Reshape_49*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Ş
	Assign_10Assignpi/dense_1/kernel
Reshape_50*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
˘
	Assign_11Assignpi/dense_1/bias
Reshape_51*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
Ľ
	Assign_12Assignv/dense/kernel
Reshape_52*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*!
_class
loc:@v/dense/kernel

	Assign_13Assignv/dense/bias
Reshape_53*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
¨
	Assign_14Assignv/dense_1/kernel
Reshape_54*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
 
	Assign_15Assignv/dense_1/bias
Reshape_55*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
ľ
	Assign_16Assignpi/dense/kernel/LARSOptimizer
Reshape_56*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
Ź
	Assign_17Assignpi/dense/bias/LARSOptimizer
Reshape_57*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
¸
	Assign_18Assignpi/dense_1/kernel/LARSOptimizer
Reshape_58*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
°
	Assign_19Assignpi/dense_1/bias/LARSOptimizer
Reshape_59*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
ł
	Assign_20Assignv/dense/kernel/LARSOptimizer
Reshape_60*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 
Ş
	Assign_21Assignv/dense/bias/LARSOptimizer
Reshape_61*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
ś
	Assign_22Assignv/dense_1/kernel/LARSOptimizer
Reshape_62*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
Ž
	Assign_23Assignv/dense_1/bias/LARSOptimizer
Reshape_63*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
Ň
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
^Assign_23	^Assign_8	^Assign_9
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
value3B1 B+_temp_96369cc1df5a4bdfaec6c6720aebe852/part*
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
Ú
save/SaveV2/tensor_namesConst*
valueBBpi/dense/biasBpi/dense/bias/LARSOptimizerBpi/dense/kernelBpi/dense/kernel/LARSOptimizerBpi/dense_1/biasBpi/dense_1/bias/LARSOptimizerBpi/dense_1/kernelBpi/dense_1/kernel/LARSOptimizerBv/dense/biasBv/dense/bias/LARSOptimizerBv/dense/kernelBv/dense/kernel/LARSOptimizerBv/dense_1/biasBv/dense_1/bias/LARSOptimizerBv/dense_1/kernelBv/dense_1/kernel/LARSOptimizer*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ű
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/LARSOptimizerpi/dense/kernelpi/dense/kernel/LARSOptimizerpi/dense_1/biaspi/dense_1/bias/LARSOptimizerpi/dense_1/kernelpi/dense_1/kernel/LARSOptimizerv/dense/biasv/dense/bias/LARSOptimizerv/dense/kernelv/dense/kernel/LARSOptimizerv/dense_1/biasv/dense_1/bias/LARSOptimizerv/dense_1/kernelv/dense_1/kernel/LARSOptimizer*
dtypes
2
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
Ý
save/RestoreV2/tensor_namesConst*
valueBBpi/dense/biasBpi/dense/bias/LARSOptimizerBpi/dense/kernelBpi/dense/kernel/LARSOptimizerBpi/dense_1/biasBpi/dense_1/bias/LARSOptimizerBpi/dense_1/kernelBpi/dense_1/kernel/LARSOptimizerBv/dense/biasBv/dense/bias/LARSOptimizerBv/dense/kernelBv/dense/kernel/LARSOptimizerBv/dense_1/biasBv/dense_1/bias/LARSOptimizerBv/dense_1/kernelBv/dense_1/kernel/LARSOptimizer*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ű
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*T
_output_shapesB
@::::::::::::::::
¤
save/AssignAssignpi/dense/biassave/RestoreV2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
ś
save/Assign_1Assignpi/dense/bias/LARSOptimizersave/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
ą
save/Assign_2Assignpi/dense/kernelsave/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
ż
save/Assign_3Assignpi/dense/kernel/LARSOptimizersave/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
Ź
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
ş
save/Assign_5Assignpi/dense_1/bias/LARSOptimizersave/RestoreV2:5*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
´
save/Assign_6Assignpi/dense_1/kernelsave/RestoreV2:6*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
Â
save/Assign_7Assignpi/dense_1/kernel/LARSOptimizersave/RestoreV2:7*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Ś
save/Assign_8Assignv/dense/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
´
save/Assign_9Assignv/dense/bias/LARSOptimizersave/RestoreV2:9*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
ą
save/Assign_10Assignv/dense/kernelsave/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 
ż
save/Assign_11Assignv/dense/kernel/LARSOptimizersave/RestoreV2:11*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
Ź
save/Assign_12Assignv/dense_1/biassave/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
ş
save/Assign_13Assignv/dense_1/bias/LARSOptimizersave/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
´
save/Assign_14Assignv/dense_1/kernelsave/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Â
save/Assign_15Assignv/dense_1/kernel/LARSOptimizersave/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
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
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_a897b0f0c15b443b93f3f9ef27f78883/part*
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
Ü
save_1/SaveV2/tensor_namesConst*
valueBBpi/dense/biasBpi/dense/bias/LARSOptimizerBpi/dense/kernelBpi/dense/kernel/LARSOptimizerBpi/dense_1/biasBpi/dense_1/bias/LARSOptimizerBpi/dense_1/kernelBpi/dense_1/kernel/LARSOptimizerBv/dense/biasBv/dense/bias/LARSOptimizerBv/dense/kernelBv/dense/kernel/LARSOptimizerBv/dense_1/biasBv/dense_1/bias/LARSOptimizerBv/dense_1/kernelBv/dense_1/kernel/LARSOptimizer*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/LARSOptimizerpi/dense/kernelpi/dense/kernel/LARSOptimizerpi/dense_1/biaspi/dense_1/bias/LARSOptimizerpi/dense_1/kernelpi/dense_1/kernel/LARSOptimizerv/dense/biasv/dense/bias/LARSOptimizerv/dense/kernelv/dense/kernel/LARSOptimizerv/dense_1/biasv/dense_1/bias/LARSOptimizerv/dense_1/kernelv/dense_1/kernel/LARSOptimizer*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
N*
_output_shapes
:*
T0

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
ß
save_1/RestoreV2/tensor_namesConst*
valueBBpi/dense/biasBpi/dense/bias/LARSOptimizerBpi/dense/kernelBpi/dense/kernel/LARSOptimizerBpi/dense_1/biasBpi/dense_1/bias/LARSOptimizerBpi/dense_1/kernelBpi/dense_1/kernel/LARSOptimizerBv/dense/biasBv/dense/bias/LARSOptimizerBv/dense/kernelBv/dense/kernel/LARSOptimizerBv/dense_1/biasBv/dense_1/bias/LARSOptimizerBv/dense_1/kernelBv/dense_1/kernel/LARSOptimizer*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*3
value*B(B B B B B B B B B B B B B B B B *
dtype0
ă
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*T
_output_shapesB
@::::::::::::::::*
dtypes
2
¨
save_1/AssignAssignpi/dense/biassave_1/RestoreV2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ş
save_1/Assign_1Assignpi/dense/bias/LARSOptimizersave_1/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
ľ
save_1/Assign_2Assignpi/dense/kernelsave_1/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
Ă
save_1/Assign_3Assignpi/dense/kernel/LARSOptimizersave_1/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
°
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
ž
save_1/Assign_5Assignpi/dense_1/bias/LARSOptimizersave_1/RestoreV2:5*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
¸
save_1/Assign_6Assignpi/dense_1/kernelsave_1/RestoreV2:6*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ć
save_1/Assign_7Assignpi/dense_1/kernel/LARSOptimizersave_1/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ş
save_1/Assign_8Assignv/dense/biassave_1/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
¸
save_1/Assign_9Assignv/dense/bias/LARSOptimizersave_1/RestoreV2:9*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
ľ
save_1/Assign_10Assignv/dense/kernelsave_1/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
Ă
save_1/Assign_11Assignv/dense/kernel/LARSOptimizersave_1/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 
°
save_1/Assign_12Assignv/dense_1/biassave_1/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
ž
save_1/Assign_13Assignv/dense_1/bias/LARSOptimizersave_1/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
¸
save_1/Assign_14Assignv/dense_1/kernelsave_1/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ć
save_1/Assign_15Assignv/dense_1/kernel/LARSOptimizersave_1/RestoreV2:15*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
Ŕ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
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
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08".
train_op"
 
LARSOptimizer
LARSOptimizer_1"
	variables˙ü
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
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
 
pi/dense/kernel/LARSOptimizer:0$pi/dense/kernel/LARSOptimizer/Assign$pi/dense/kernel/LARSOptimizer/read:021pi/dense/kernel/LARSOptimizer/Initializer/zeros:0

pi/dense/bias/LARSOptimizer:0"pi/dense/bias/LARSOptimizer/Assign"pi/dense/bias/LARSOptimizer/read:02/pi/dense/bias/LARSOptimizer/Initializer/zeros:0
¨
!pi/dense_1/kernel/LARSOptimizer:0&pi/dense_1/kernel/LARSOptimizer/Assign&pi/dense_1/kernel/LARSOptimizer/read:023pi/dense_1/kernel/LARSOptimizer/Initializer/zeros:0
 
pi/dense_1/bias/LARSOptimizer:0$pi/dense_1/bias/LARSOptimizer/Assign$pi/dense_1/bias/LARSOptimizer/read:021pi/dense_1/bias/LARSOptimizer/Initializer/zeros:0

v/dense/kernel/LARSOptimizer:0#v/dense/kernel/LARSOptimizer/Assign#v/dense/kernel/LARSOptimizer/read:020v/dense/kernel/LARSOptimizer/Initializer/zeros:0

v/dense/bias/LARSOptimizer:0!v/dense/bias/LARSOptimizer/Assign!v/dense/bias/LARSOptimizer/read:02.v/dense/bias/LARSOptimizer/Initializer/zeros:0
¤
 v/dense_1/kernel/LARSOptimizer:0%v/dense_1/kernel/LARSOptimizer/Assign%v/dense_1/kernel/LARSOptimizer/read:022v/dense_1/kernel/LARSOptimizer/Initializer/zeros:0

v/dense_1/bias/LARSOptimizer:0#v/dense_1/bias/LARSOptimizer/Assign#v/dense_1/bias/LARSOptimizer/read:020v/dense_1/bias/LARSOptimizer/Initializer/zeros:0*¨
serving_default
*
x%
Placeholder:0˙˙˙˙˙˙˙˙˙#
v
v/Squeeze:0˙˙˙˙˙˙˙˙˙%
pi
pi/Squeeze:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict