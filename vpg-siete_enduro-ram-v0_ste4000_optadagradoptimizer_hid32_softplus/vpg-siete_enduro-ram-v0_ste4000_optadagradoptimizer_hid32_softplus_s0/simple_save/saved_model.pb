яд
д$ $
:
Add
x"T
y"T
z"T"
Ttype:
2	
 
ApplyAdagrad
var"T
accum"T
lr"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
update_slotsbool(
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
Ј
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
axisintџџџџџџџџџ"	
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
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8' 
p
PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*(
_output_shapes
:џџџџџџџџџ
h
Placeholder_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0
h
Placeholder_2Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
Ѕ
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
 *јKFО*
dtype0*
_output_shapes
: 

.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *јKF>*
dtype0*
_output_shapes
: 
я
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2*
dtype0*
_output_shapes
:	 
к
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
э
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	 *
T0*"
_class
loc:@pi/dense/kernel
п
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 
Љ
pi/dense/kernel
VariableV2*
	container *
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name *"
_class
loc:@pi/dense/kernel
д
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 

pi/dense/kernel/readIdentitypi/dense/kernel*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 *
T0
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
О
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
:џџџџџџџџџ *
transpose_b( *
T0

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
a
pi/dense/SoftplusSoftpluspi/dense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
Љ
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"    	   *
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *нУО*
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
 *нУ>*
dtype0
є
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: 	*

seed *
T0*$
_class
loc:@pi/dense_1/kernel*
seed2
т
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
є
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

: 	*
T0*$
_class
loc:@pi/dense_1/kernel
ц
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 	
Ћ
pi/dense_1/kernel
VariableV2*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: 	*
dtype0*
_output_shapes

: 	*
shared_name 
л
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 	*
T0

!pi/dense_1/bias/Initializer/zerosConst*
_output_shapes
:	*"
_class
loc:@pi/dense_1/bias*
valueB	*    *
dtype0

pi/dense_1/bias
VariableV2*"
_class
loc:@pi/dense_1/bias*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name 
Ц
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
_output_shapes
:	*
T0*"
_class
loc:@pi/dense_1/bias

pi/dense_1/MatMulMatMulpi/dense/Softpluspi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ	*
transpose_b( *
T0

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ	
a
pi/LogSoftmax
LogSoftmaxpi/dense_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ	
h
&pi/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
pi/multinomial/MultinomialMultinomialpi/dense_1/BiasAdd&pi/multinomial/Multinomial/num_samples*
T0*
seed2'*'
_output_shapes
:џџџџџџџџџ*

seed *
output_dtype0	
v

pi/SqueezeSqueezepi/multinomial/Multinomial*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

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
value	B :	*
dtype0*
_output_shapes
: 
Б

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*'
_output_shapes
:џџџџџџџџџ	*
T0*
TI0*
axisџџџџџџџџџ
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*
T0*'
_output_shapes
:џџџџџџџџџ	
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
z
pi/SumSumpi/mulpi/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
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
pi/one_hot_1/depthConst*
value	B :	*
dtype0*
_output_shapes
: 
Ж
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
T0*
TI0	*
axisџџџџџџџџџ*'
_output_shapes
:џџџџџџџџџ	
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*'
_output_shapes
:џџџџџџџџџ	*
T0
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
Ѓ
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
 *јKFО*
dtype0*
_output_shapes
: 

-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *јKF>*
dtype0*
_output_shapes
: 
ь
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	 *

seed *
T0*!
_class
loc:@v/dense/kernel*
seed2;
ж
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@v/dense/kernel
щ
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
л
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
Ї
v/dense/kernel
VariableV2*!
_class
loc:@v/dense/kernel*
	container *
shape:	 *
dtype0*
_output_shapes
:	 *
shared_name 
а
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 
|
v/dense/kernel/readIdentityv/dense/kernel*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
:	 
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
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
К
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
q
v/dense/bias/readIdentityv/dense/bias*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ *
transpose_b( *
T0

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
_
v/dense/SoftplusSoftplusv/dense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
Ї
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
 *JQкО*
dtype0*
_output_shapes
: 

/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *JQк>*
dtype0*
_output_shapes
: 
ё
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed *
T0*#
_class
loc:@v/dense_1/kernel*
seed2L
о
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
№
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
т
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
Љ
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
з
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(

v/dense_1/kernel/readIdentityv/dense_1/kernel*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: *
T0
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
Т
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
w
v/dense_1/bias/readIdentityv/dense_1/bias*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:

v/dense_1/MatMulMatMulv/dense/Softplusv/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0

v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
l
	v/SqueezeSqueezev/dense_1/BiasAdd*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
O
mulMulpi/SumPlaceholder_2*
T0*#
_output_shapes
:џџџџџџџџџ
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
NegNegMean*
_output_shapes
: *
T0
R
subSubPlaceholder_3	v/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ*
T0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
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
:џџџџџџџџџ
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
:џџџџџџџџџ*
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
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
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
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
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
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

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

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
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
Д
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
w
gradients/mul_grad/MulMulgradients/Mean_grad/truedivPlaceholder_2*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
r
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ѕ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
ж
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
м
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
a
gradients/pi/Sum_grad/ShapeShapepi/mul*
T0*
out_type0*
_output_shapes
:

gradients/pi/Sum_grad/SizeConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ї
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
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
!gradients/pi/Sum_grad/range/deltaConst*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0
о
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
Ц
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
У
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
Л
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
У
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ѕ
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ	
e
gradients/pi/mul_grad/ShapeShape
pi/one_hot*
_output_shapes
:*
T0*
out_type0
j
gradients/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
T0*
out_type0*
_output_shapes
:
Н
+gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_grad/Shapegradients/pi/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
}
gradients/pi/mul_grad/MulMulgradients/pi/Sum_grad/Tilepi/LogSoftmax*'
_output_shapes
:џџџџџџџџџ	*
T0
Ј
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
:џџџџџџџџџ	
|
gradients/pi/mul_grad/Mul_1Mul
pi/one_hotgradients/pi/Sum_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ	
Ў
gradients/pi/mul_grad/Sum_1Sumgradients/pi/mul_grad/Mul_1-gradients/pi/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
І
gradients/pi/mul_grad/Reshape_1Reshapegradients/pi/mul_grad/Sum_1gradients/pi/mul_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ	*
T0*
Tshape0
p
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Reshape ^gradients/pi/mul_grad/Reshape_1
ц
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Reshape'^gradients/pi/mul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ	
ь
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Reshape_1'^gradients/pi/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ	
h
 gradients/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:џџџџџџџџџ	
}
2gradients/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
м
 gradients/pi/LogSoftmax_grad/SumSum0gradients/pi/mul_grad/tuple/control_dependency_12gradients/pi/LogSoftmax_grad/Sum/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims(

 gradients/pi/LogSoftmax_grad/mulMul gradients/pi/LogSoftmax_grad/Sum gradients/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:џџџџџџџџџ	
­
 gradients/pi/LogSoftmax_grad/subSub0gradients/pi/mul_grad/tuple/control_dependency_1 gradients/pi/LogSoftmax_grad/mul*'
_output_shapes
:џџџџџџџџџ	*
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
:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity gradients/pi/LogSoftmax_grad/sub3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ	*
T0*3
_class)
'%loc:@gradients/pi/LogSoftmax_grad/sub

<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:	*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad
н
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ *
transpose_b(*
T0
б
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Softplus:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

: 	*
transpose_b( 

1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1

9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ 

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

: 	*
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1
М
-gradients/pi/dense/Softplus_grad/SoftplusGradSoftplusGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/BiasAdd*'
_output_shapes
:џџџџџџџџџ *
T0
Ѕ
+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/pi/dense/Softplus_grad/SoftplusGrad*
_output_shapes
: *
T0*
data_formatNHWC

0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad.^gradients/pi/dense/Softplus_grad/SoftplusGrad

8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/pi/dense/Softplus_grad/SoftplusGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ *
T0*@
_class6
42loc:@gradients/pi/dense/Softplus_grad/SoftplusGrad

:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
и
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ш
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	 *
transpose_b( *
T0

/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1

7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
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
valueB:
џџџџџџџџџ*
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
џџџџџџџџџ*
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
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
: 
b
Reshape_3/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:	
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3concat/axis*
T0*
N*
_output_shapes	
:Щ"*

Tidx0
g
PyFuncPyFuncconcat*
Tout
2*
token
pyfunc_0*
Tin
2*
_output_shapes	
:Щ"
`
Const_4Const*%
valueB"          	   *
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
: : : :	*
T0
`
Reshape_4/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
d
	Reshape_4ReshapesplitReshape_4/shape*
Tshape0*
_output_shapes
:	 *
T0
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
valueB"    	   *
dtype0*
_output_shapes
:
e
	Reshape_6Reshapesplit:2Reshape_6/shape*
T0*
Tshape0*
_output_shapes

: 	
Y
Reshape_7/shapeConst*
_output_shapes
:*
valueB:	*
dtype0
a
	Reshape_7Reshapesplit:3Reshape_7/shape*
_output_shapes
:	*
T0*
Tshape0
Є
)pi/dense/kernel/Adagrad/Initializer/ConstConst*
valueB	 *ЭЬЬ=*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:	 
Б
pi/dense/kernel/Adagrad
VariableV2*
dtype0*
_output_shapes
:	 *
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape:	 
у
pi/dense/kernel/Adagrad/AssignAssignpi/dense/kernel/Adagrad)pi/dense/kernel/Adagrad/Initializer/Const*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 

pi/dense/kernel/Adagrad/readIdentitypi/dense/kernel/Adagrad*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	 

'pi/dense/bias/Adagrad/Initializer/ConstConst*
valueB *ЭЬЬ=* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
: 
Ѓ
pi/dense/bias/Adagrad
VariableV2*
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: 
ж
pi/dense/bias/Adagrad/AssignAssignpi/dense/bias/Adagrad'pi/dense/bias/Adagrad/Initializer/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias

pi/dense/bias/Adagrad/readIdentitypi/dense/bias/Adagrad*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
І
+pi/dense_1/kernel/Adagrad/Initializer/ConstConst*
valueB 	*ЭЬЬ=*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

: 	
Г
pi/dense_1/kernel/Adagrad
VariableV2*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: 	*
dtype0*
_output_shapes

: 	*
shared_name 
ъ
 pi/dense_1/kernel/Adagrad/AssignAssignpi/dense_1/kernel/Adagrad+pi/dense_1/kernel/Adagrad/Initializer/Const*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	*
use_locking(

pi/dense_1/kernel/Adagrad/readIdentitypi/dense_1/kernel/Adagrad*
_output_shapes

: 	*
T0*$
_class
loc:@pi/dense_1/kernel

)pi/dense_1/bias/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes
:	*
valueB	*ЭЬЬ=*"
_class
loc:@pi/dense_1/bias
Ї
pi/dense_1/bias/Adagrad
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:	
о
pi/dense_1/bias/Adagrad/AssignAssignpi/dense_1/bias/Adagrad)pi/dense_1/bias/Adagrad/Initializer/Const*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	

pi/dense_1/bias/Adagrad/readIdentitypi/dense_1/bias/Adagrad*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:	*
T0
Z
Adagrad/learning_rateConst*
valueB
 *RI9*
dtype0*
_output_shapes
: 
ќ
+Adagrad/update_pi/dense/kernel/ApplyAdagradApplyAdagradpi/dense/kernelpi/dense/kernel/AdagradAdagrad/learning_rate	Reshape_4*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
update_slots(*
_output_shapes
:	 
я
)Adagrad/update_pi/dense/bias/ApplyAdagradApplyAdagradpi/dense/biaspi/dense/bias/AdagradAdagrad/learning_rate	Reshape_5*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
update_slots(*
_output_shapes
: 

-Adagrad/update_pi/dense_1/kernel/ApplyAdagradApplyAdagradpi/dense_1/kernelpi/dense_1/kernel/AdagradAdagrad/learning_rate	Reshape_6*
update_slots(*
_output_shapes

: 	*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel
ї
+Adagrad/update_pi/dense_1/bias/ApplyAdagradApplyAdagradpi/dense_1/biaspi/dense_1/bias/AdagradAdagrad/learning_rate	Reshape_7*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
update_slots(*
_output_shapes
:	
Ч
AdagradNoOp*^Adagrad/update_pi/dense/bias/ApplyAdagrad,^Adagrad/update_pi/dense/kernel/ApplyAdagrad,^Adagrad/update_pi/dense_1/bias/ApplyAdagrad.^Adagrad/update_pi/dense_1/kernel/ApplyAdagrad
l
Reshape_8/shapeConst^Adagrad*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
o
	Reshape_8Reshapepi/dense/kernel/readReshape_8/shape*
T0*
Tshape0*
_output_shapes	
: 
l
Reshape_9/shapeConst^Adagrad*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
l
	Reshape_9Reshapepi/dense/bias/readReshape_9/shape*
T0*
Tshape0*
_output_shapes
: 
m
Reshape_10/shapeConst^Adagrad*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
s

Reshape_10Reshapepi/dense_1/kernel/readReshape_10/shape*
Tshape0*
_output_shapes	
: *
T0
m
Reshape_11/shapeConst^Adagrad*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
p

Reshape_11Reshapepi/dense_1/bias/readReshape_11/shape*
T0*
Tshape0*
_output_shapes
:	
Y
concat_1/axisConst^Adagrad*
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
:Щ"
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
j
Const_5Const^Adagrad*%
valueB"          	   *
dtype0*
_output_shapes
:
]
split_1/split_dimConst^Adagrad*
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
k
Reshape_12/shapeConst^Adagrad*
dtype0*
_output_shapes
:*
valueB"       
h

Reshape_12Reshapesplit_1Reshape_12/shape*
_output_shapes
:	 *
T0*
Tshape0
d
Reshape_13/shapeConst^Adagrad*
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
k
Reshape_14/shapeConst^Adagrad*
_output_shapes
:*
valueB"    	   *
dtype0
i

Reshape_14Reshape	split_1:2Reshape_14/shape*
_output_shapes

: 	*
T0*
Tshape0
d
Reshape_15/shapeConst^Adagrad*
valueB:	*
dtype0*
_output_shapes
:
e

Reshape_15Reshape	split_1:3Reshape_15/shape*
T0*
Tshape0*
_output_shapes
:	
Є
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
Љ
Assign_2Assignpi/dense_1/kernel
Reshape_14*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	
Ё
Assign_3Assignpi/dense_1/bias
Reshape_15*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
F

group_depsNoOp^Adagrad^Assign	^Assign_1	^Assign_2	^Assign_3
+
group_deps_1NoOp^Adagrad^group_deps
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
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*

index_type0*
_output_shapes
: *
T0
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
gradients_1/Mean_1_grad/ShapeShapepow*
_output_shapes
:*
T0*
out_type0
Є
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ
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
Ђ
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
І
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
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
]
gradients_1/pow_grad/ShapeShapesub*
T0*
out_type0*
_output_shapes
:
_
gradients_1/pow_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
К
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:џџџџџџџџџ
_
gradients_1/pow_grad/sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
_output_shapes
: *
T0
l
gradients_1/pow_grad/PowPowsubgradients_1/pow_grad/sub*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
Ї
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
:џџџџџџџџџ
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
:џџџџџџџџџ
g
$gradients_1/pow_grad/ones_like/ShapeShapesub*
out_type0*
_output_shapes
:*
T0
i
$gradients_1/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
В
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersubgradients_1/pow_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*
T0*#
_output_shapes
:џџџџџџџџџ
_
gradients_1/pow_grad/zeros_like	ZerosLikesub*#
_output_shapes
:џџџџџџџџџ*
T0
Ў
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*
T0*#
_output_shapes
:џџџџџџџџџ
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
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
о
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
з
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1*
_output_shapes
: *
T0
g
gradients_1/sub_grad/ShapeShapePlaceholder_3*
out_type0*
_output_shapes
:*
T0
e
gradients_1/sub_grad/Shape_1Shape	v/Squeeze*
out_type0*
_output_shapes
:*
T0
К
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
К
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
:џџџџџџџџџ
О
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
:џџџџџџџџџ*
T0*
Tshape0
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
о
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape
ф
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_1/BiasAdd*
_output_shapes
:*
T0*
out_type0
Р
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
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
:џџџџџџџџџ

=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad
о
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ *
transpose_b(
в
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Softplus;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

: 

2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1

:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ *
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul

<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: 
Н
.gradients_1/v/dense/Softplus_grad/SoftplusGradSoftplusGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
Ї
,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients_1/v/dense/Softplus_grad/SoftplusGrad*
data_formatNHWC*
_output_shapes
: *
T0

1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad/^gradients_1/v/dense/Softplus_grad/SoftplusGrad

9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity.gradients_1/v/dense/Softplus_grad/SoftplusGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense/Softplus_grad/SoftplusGrad*'
_output_shapes
:џџџџџџџџџ 

;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
: *
T0*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad
й
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0
Ъ
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
:џџџџџџџџџ

:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes
:	 
c
Reshape_16/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_16Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_16/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_17/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_17Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_17/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_18/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0


Reshape_18Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_19/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_19Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_19/shape*
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

concat_2ConcatV2
Reshape_16
Reshape_17
Reshape_18
Reshape_19concat_2/axis*
T0*
N*
_output_shapes	
:С *

Tidx0
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:С *
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
split_2/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
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

Reshape_21Reshape	split_2:1Reshape_21/shape*
T0*
Tshape0*
_output_shapes
: 
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

Reshape_23Reshape	split_2:3Reshape_23/shape*
_output_shapes
:*
T0*
Tshape0
Ђ
(v/dense/kernel/Adagrad/Initializer/ConstConst*
valueB	 *ЭЬЬ=*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:	 
Џ
v/dense/kernel/Adagrad
VariableV2*
dtype0*
_output_shapes
:	 *
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape:	 
п
v/dense/kernel/Adagrad/AssignAssignv/dense/kernel/Adagrad(v/dense/kernel/Adagrad/Initializer/Const*
_output_shapes
:	 *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(

v/dense/kernel/Adagrad/readIdentityv/dense/kernel/Adagrad*
_output_shapes
:	 *
T0*!
_class
loc:@v/dense/kernel

&v/dense/bias/Adagrad/Initializer/ConstConst*
valueB *ЭЬЬ=*
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
Ё
v/dense/bias/Adagrad
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
в
v/dense/bias/Adagrad/AssignAssignv/dense/bias/Adagrad&v/dense/bias/Adagrad/Initializer/Const*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 

v/dense/bias/Adagrad/readIdentityv/dense/bias/Adagrad*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Є
*v/dense_1/kernel/Adagrad/Initializer/ConstConst*
valueB *ЭЬЬ=*#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes

: 
Б
v/dense_1/kernel/Adagrad
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
ц
v/dense_1/kernel/Adagrad/AssignAssignv/dense_1/kernel/Adagrad*v/dense_1/kernel/Adagrad/Initializer/Const*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(

v/dense_1/kernel/Adagrad/readIdentityv/dense_1/kernel/Adagrad*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 

(v/dense_1/bias/Adagrad/Initializer/ConstConst*
valueB*ЭЬЬ=*!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:
Ѕ
v/dense_1/bias/Adagrad
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:
к
v/dense_1/bias/Adagrad/AssignAssignv/dense_1/bias/Adagrad(v/dense_1/bias/Adagrad/Initializer/Const*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias

v/dense_1/bias/Adagrad/readIdentityv/dense_1/bias/Adagrad*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias
\
Adagrad_1/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
§
,Adagrad_1/update_v/dense/kernel/ApplyAdagradApplyAdagradv/dense/kernelv/dense/kernel/AdagradAdagrad_1/learning_rate
Reshape_20*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
update_slots(*
_output_shapes
:	 
№
*Adagrad_1/update_v/dense/bias/ApplyAdagradApplyAdagradv/dense/biasv/dense/bias/AdagradAdagrad_1/learning_rate
Reshape_21*
use_locking( *
T0*
_class
loc:@v/dense/bias*
update_slots(*
_output_shapes
: 

.Adagrad_1/update_v/dense_1/kernel/ApplyAdagradApplyAdagradv/dense_1/kernelv/dense_1/kernel/AdagradAdagrad_1/learning_rate
Reshape_22*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
update_slots(*
_output_shapes

: 
ј
,Adagrad_1/update_v/dense_1/bias/ApplyAdagradApplyAdagradv/dense_1/biasv/dense_1/bias/AdagradAdagrad_1/learning_rate
Reshape_23*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias*
update_slots(*
_output_shapes
:
Э
	Adagrad_1NoOp+^Adagrad_1/update_v/dense/bias/ApplyAdagrad-^Adagrad_1/update_v/dense/kernel/ApplyAdagrad-^Adagrad_1/update_v/dense_1/bias/ApplyAdagrad/^Adagrad_1/update_v/dense_1/kernel/ApplyAdagrad
o
Reshape_24/shapeConst
^Adagrad_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
p

Reshape_24Reshapev/dense/kernel/readReshape_24/shape*
_output_shapes	
: *
T0*
Tshape0
o
Reshape_25/shapeConst
^Adagrad_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
m

Reshape_25Reshapev/dense/bias/readReshape_25/shape*
T0*
Tshape0*
_output_shapes
: 
o
Reshape_26/shapeConst
^Adagrad_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
q

Reshape_26Reshapev/dense_1/kernel/readReshape_26/shape*
T0*
Tshape0*
_output_shapes
: 
o
Reshape_27/shapeConst
^Adagrad_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
o

Reshape_27Reshapev/dense_1/bias/readReshape_27/shape*
T0*
Tshape0*
_output_shapes
:
[
concat_3/axisConst
^Adagrad_1*
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
N*
_output_shapes	
:С *

Tidx0*
T0
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
l
Const_7Const
^Adagrad_1*
dtype0*
_output_shapes
:*%
valueB"              
_
split_3/split_dimConst
^Adagrad_1*
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
m
Reshape_28/shapeConst
^Adagrad_1*
_output_shapes
:*
valueB"       *
dtype0
h

Reshape_28Reshapesplit_3Reshape_28/shape*
T0*
Tshape0*
_output_shapes
:	 
f
Reshape_29/shapeConst
^Adagrad_1*
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
m
Reshape_30/shapeConst
^Adagrad_1*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_30Reshape	split_3:2Reshape_30/shape*
_output_shapes

: *
T0*
Tshape0
f
Reshape_31/shapeConst
^Adagrad_1*
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
Є
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
Ї
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
Reshape_31*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
L
group_deps_2NoOp
^Adagrad_1	^Assign_4	^Assign_5	^Assign_6	^Assign_7
/
group_deps_3NoOp
^Adagrad_1^group_deps_2
д
initNoOp^pi/dense/bias/Adagrad/Assign^pi/dense/bias/Assign^pi/dense/kernel/Adagrad/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Adagrad/Assign^pi/dense_1/bias/Assign!^pi/dense_1/kernel/Adagrad/Assign^pi/dense_1/kernel/Assign^v/dense/bias/Adagrad/Assign^v/dense/bias/Assign^v/dense/kernel/Adagrad/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adagrad/Assign^v/dense_1/bias/Assign ^v/dense_1/kernel/Adagrad/Assign^v/dense_1/kernel/Assign
c
Reshape_32/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
q

Reshape_32Reshapepi/dense/kernel/readReshape_32/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_33/shapeConst*
valueB:
џџџџџџџџџ*
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
s

Reshape_34Reshapepi/dense_1/kernel/readReshape_34/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_35/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
p

Reshape_35Reshapepi/dense_1/bias/readReshape_35/shape*
T0*
Tshape0*
_output_shapes
:	
c
Reshape_36/shapeConst*
valueB:
џџџџџџџџџ*
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
џџџџџџџџџ*
dtype0*
_output_shapes
:
m

Reshape_37Reshapev/dense/bias/readReshape_37/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_38/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
q

Reshape_38Reshapev/dense_1/kernel/readReshape_38/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_39/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
o

Reshape_39Reshapev/dense_1/bias/readReshape_39/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_40/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y

Reshape_40Reshapepi/dense/kernel/Adagrad/readReshape_40/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_41/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_41Reshapepi/dense/bias/Adagrad/readReshape_41/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_42/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
{

Reshape_42Reshapepi/dense_1/kernel/Adagrad/readReshape_42/shape*
Tshape0*
_output_shapes	
: *
T0
c
Reshape_43/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x

Reshape_43Reshapepi/dense_1/bias/Adagrad/readReshape_43/shape*
Tshape0*
_output_shapes
:	*
T0
c
Reshape_44/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x

Reshape_44Reshapev/dense/kernel/Adagrad/readReshape_44/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_45/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_45Reshapev/dense/bias/Adagrad/readReshape_45/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_46/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y

Reshape_46Reshapev/dense_1/kernel/Adagrad/readReshape_46/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_47/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
w

Reshape_47Reshapev/dense_1/bias/Adagrad/readReshape_47/shape*
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
Reshape_47concat_4/axis*

Tidx0*
T0*
N*
_output_shapes

:
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
valueLBJ"@          	                           	                 *
dtype0*
_output_shapes
:
S
split_4/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
Г
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
Reshape_49/shapeConst*
_output_shapes
:*
valueB: *
dtype0
e

Reshape_49Reshape	split_4:1Reshape_49/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_50/shapeConst*
_output_shapes
:*
valueB"    	   *
dtype0
i

Reshape_50Reshape	split_4:2Reshape_50/shape*
T0*
Tshape0*
_output_shapes

: 	
Z
Reshape_51/shapeConst*
valueB:	*
dtype0*
_output_shapes
:
e

Reshape_51Reshape	split_4:3Reshape_51/shape*
_output_shapes
:	*
T0*
Tshape0
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

Reshape_53Reshape	split_4:5Reshape_53/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_54/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
i

Reshape_54Reshape	split_4:6Reshape_54/shape*
Tshape0*
_output_shapes

: *
T0
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
Reshape_56/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
j

Reshape_56Reshape	split_4:8Reshape_56/shape*
T0*
Tshape0*
_output_shapes
:	 
Z
Reshape_57/shapeConst*
_output_shapes
:*
valueB: *
dtype0
e

Reshape_57Reshape	split_4:9Reshape_57/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_58/shapeConst*
valueB"    	   *
dtype0*
_output_shapes
:
j

Reshape_58Reshape
split_4:10Reshape_58/shape*
T0*
Tshape0*
_output_shapes

: 	
Z
Reshape_59/shapeConst*
valueB:	*
dtype0*
_output_shapes
:
f

Reshape_59Reshape
split_4:11Reshape_59/shape*
_output_shapes
:	*
T0*
Tshape0
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
Reshape_62/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
j

Reshape_62Reshape
split_4:14Reshape_62/shape*
Tshape0*
_output_shapes

: *
T0
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
І
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
Reshape_49*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Њ
	Assign_10Assignpi/dense_1/kernel
Reshape_50*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	
Ђ
	Assign_11Assignpi/dense_1/bias
Reshape_51*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
Ѕ
	Assign_12Assignv/dense/kernel
Reshape_52*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 

	Assign_13Assignv/dense/bias
Reshape_53*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ј
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
Reshape_55*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Џ
	Assign_16Assignpi/dense/kernel/Adagrad
Reshape_56*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
І
	Assign_17Assignpi/dense/bias/Adagrad
Reshape_57*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
В
	Assign_18Assignpi/dense_1/kernel/Adagrad
Reshape_58*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	*
use_locking(
Њ
	Assign_19Assignpi/dense_1/bias/Adagrad
Reshape_59*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	*
use_locking(
­
	Assign_20Assignv/dense/kernel/Adagrad
Reshape_60*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 
Є
	Assign_21Assignv/dense/bias/Adagrad
Reshape_61*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
А
	Assign_22Assignv/dense_1/kernel/Adagrad
Reshape_62*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
Ј
	Assign_23Assignv/dense_1/bias/Adagrad
Reshape_63*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
в
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
value3B1 B+_temp_9561c6c1df9b4f38bdefb71455561eff/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
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
Њ
save/SaveV2/tensor_namesConst*н
valueгBаBpi/dense/biasBpi/dense/bias/AdagradBpi/dense/kernelBpi/dense/kernel/AdagradBpi/dense_1/biasBpi/dense_1/bias/AdagradBpi/dense_1/kernelBpi/dense_1/kernel/AdagradBv/dense/biasBv/dense/bias/AdagradBv/dense/kernelBv/dense/kernel/AdagradBv/dense_1/biasBv/dense_1/bias/AdagradBv/dense_1/kernelBv/dense_1/kernel/Adagrad*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ы
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/Adagradpi/dense/kernelpi/dense/kernel/Adagradpi/dense_1/biaspi/dense_1/bias/Adagradpi/dense_1/kernelpi/dense_1/kernel/Adagradv/dense/biasv/dense/bias/Adagradv/dense/kernelv/dense/kernel/Adagradv/dense_1/biasv/dense_1/bias/Adagradv/dense_1/kernelv/dense_1/kernel/Adagrad*
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
­
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*н
valueгBаBpi/dense/biasBpi/dense/bias/AdagradBpi/dense/kernelBpi/dense/kernel/AdagradBpi/dense_1/biasBpi/dense_1/bias/AdagradBpi/dense_1/kernelBpi/dense_1/kernel/AdagradBv/dense/biasBv/dense/bias/AdagradBv/dense/kernelBv/dense/kernel/AdagradBv/dense_1/biasBv/dense_1/bias/AdagradBv/dense_1/kernelBv/dense_1/kernel/Adagrad

save/RestoreV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
л
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*T
_output_shapesB
@::::::::::::::::*
dtypes
2
Є
save/AssignAssignpi/dense/biassave/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
А
save/Assign_1Assignpi/dense/bias/Adagradsave/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Б
save/Assign_2Assignpi/dense/kernelsave/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
Й
save/Assign_3Assignpi/dense/kernel/Adagradsave/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
Ќ
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
Д
save/Assign_5Assignpi/dense_1/bias/Adagradsave/RestoreV2:5*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
Д
save/Assign_6Assignpi/dense_1/kernelsave/RestoreV2:6*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	
М
save/Assign_7Assignpi/dense_1/kernel/Adagradsave/RestoreV2:7*
validate_shape(*
_output_shapes

: 	*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
І
save/Assign_8Assignv/dense/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
Ў
save/Assign_9Assignv/dense/bias/Adagradsave/RestoreV2:9*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Б
save/Assign_10Assignv/dense/kernelsave/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 
Й
save/Assign_11Assignv/dense/kernel/Adagradsave/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes
:	 
Ќ
save/Assign_12Assignv/dense_1/biassave/RestoreV2:12*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
Д
save/Assign_13Assignv/dense_1/bias/Adagradsave/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
Д
save/Assign_14Assignv/dense_1/kernelsave/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
М
save/Assign_15Assignv/dense_1/kernel/Adagradsave/RestoreV2:15*
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

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_51ad4626f87341b08c537019a2ed0fee/part*
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
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ќ
save_1/SaveV2/tensor_namesConst*н
valueгBаBpi/dense/biasBpi/dense/bias/AdagradBpi/dense/kernelBpi/dense/kernel/AdagradBpi/dense_1/biasBpi/dense_1/bias/AdagradBpi/dense_1/kernelBpi/dense_1/kernel/AdagradBv/dense/biasBv/dense/bias/AdagradBv/dense/kernelBv/dense/kernel/AdagradBv/dense_1/biasBv/dense_1/bias/AdagradBv/dense_1/kernelBv/dense_1/kernel/Adagrad*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
г
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicespi/dense/biaspi/dense/bias/Adagradpi/dense/kernelpi/dense/kernel/Adagradpi/dense_1/biaspi/dense_1/bias/Adagradpi/dense_1/kernelpi/dense_1/kernel/Adagradv/dense/biasv/dense/bias/Adagradv/dense/kernelv/dense/kernel/Adagradv/dense_1/biasv/dense_1/bias/Adagradv/dense_1/kernelv/dense_1/kernel/Adagrad*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
Ѓ
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
Џ
save_1/RestoreV2/tensor_namesConst*н
valueгBаBpi/dense/biasBpi/dense/bias/AdagradBpi/dense/kernelBpi/dense/kernel/AdagradBpi/dense_1/biasBpi/dense_1/bias/AdagradBpi/dense_1/kernelBpi/dense_1/kernel/AdagradBv/dense/biasBv/dense/bias/AdagradBv/dense/kernelBv/dense/kernel/AdagradBv/dense_1/biasBv/dense_1/bias/AdagradBv/dense_1/kernelBv/dense_1/kernel/Adagrad*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
у
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*T
_output_shapesB
@::::::::::::::::*
dtypes
2
Ј
save_1/AssignAssignpi/dense/biassave_1/RestoreV2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Д
save_1/Assign_1Assignpi/dense/bias/Adagradsave_1/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
Е
save_1/Assign_2Assignpi/dense/kernelsave_1/RestoreV2:2*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
Н
save_1/Assign_3Assignpi/dense/kernel/Adagradsave_1/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	 
А
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
И
save_1/Assign_5Assignpi/dense_1/bias/Adagradsave_1/RestoreV2:5*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:	
И
save_1/Assign_6Assignpi/dense_1/kernelsave_1/RestoreV2:6*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	
Р
save_1/Assign_7Assignpi/dense_1/kernel/Adagradsave_1/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 	
Њ
save_1/Assign_8Assignv/dense/biassave_1/RestoreV2:8*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
В
save_1/Assign_9Assignv/dense/bias/Adagradsave_1/RestoreV2:9*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Е
save_1/Assign_10Assignv/dense/kernelsave_1/RestoreV2:10*
_output_shapes
:	 *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
Н
save_1/Assign_11Assignv/dense/kernel/Adagradsave_1/RestoreV2:11*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
А
save_1/Assign_12Assignv/dense_1/biassave_1/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
И
save_1/Assign_13Assignv/dense_1/bias/Adagradsave_1/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
И
save_1/Assign_14Assignv/dense_1/kernelsave_1/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Р
save_1/Assign_15Assignv/dense_1/kernel/Adagradsave_1/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Р
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
trainable_variablesїє
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
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08""
train_op

Adagrad
	Adagrad_1"Ь
	variablesОЛ
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

pi/dense/kernel/Adagrad:0pi/dense/kernel/Adagrad/Assignpi/dense/kernel/Adagrad/read:02+pi/dense/kernel/Adagrad/Initializer/Const:0

pi/dense/bias/Adagrad:0pi/dense/bias/Adagrad/Assignpi/dense/bias/Adagrad/read:02)pi/dense/bias/Adagrad/Initializer/Const:0

pi/dense_1/kernel/Adagrad:0 pi/dense_1/kernel/Adagrad/Assign pi/dense_1/kernel/Adagrad/read:02-pi/dense_1/kernel/Adagrad/Initializer/Const:0

pi/dense_1/bias/Adagrad:0pi/dense_1/bias/Adagrad/Assignpi/dense_1/bias/Adagrad/read:02+pi/dense_1/bias/Adagrad/Initializer/Const:0

v/dense/kernel/Adagrad:0v/dense/kernel/Adagrad/Assignv/dense/kernel/Adagrad/read:02*v/dense/kernel/Adagrad/Initializer/Const:0
|
v/dense/bias/Adagrad:0v/dense/bias/Adagrad/Assignv/dense/bias/Adagrad/read:02(v/dense/bias/Adagrad/Initializer/Const:0

v/dense_1/kernel/Adagrad:0v/dense_1/kernel/Adagrad/Assignv/dense_1/kernel/Adagrad/read:02,v/dense_1/kernel/Adagrad/Initializer/Const:0

v/dense_1/bias/Adagrad:0v/dense_1/bias/Adagrad/Assignv/dense_1/bias/Adagrad/read:02*v/dense_1/bias/Adagrad/Initializer/Const:0*Ј
serving_default
*
x%
Placeholder:0џџџџџџџџџ#
v
v/Squeeze:0џџџџџџџџџ%
pi
pi/Squeeze:0	џџџџџџџџџtensorflow/serving/predict