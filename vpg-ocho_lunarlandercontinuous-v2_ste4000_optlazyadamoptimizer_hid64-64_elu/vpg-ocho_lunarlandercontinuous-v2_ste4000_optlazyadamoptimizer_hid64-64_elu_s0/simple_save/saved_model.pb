Не
§#╔#
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
1.13.0-rc02b'v1.13.0-rc0-0-g6ce86799c8'╩╦

n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:         *
shape:         
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:         *
shape:         
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
h
Placeholder_4Placeholder*#
_output_shapes
:         *
shape:         *
dtype0
Ц
0pi/dense/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@pi/dense/kernel*
valueB"   @   *
dtype0*
_output_shapes
:
Ќ
.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *:═ЊЙ*
dtype0*
_output_shapes
: 
Ќ
.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *:═Њ>*
dtype0*
_output_shapes
: 
Ь
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@pi/dense/kernel*
seed2*
dtype0*
_output_shapes

:@*

seed 
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

:@
я
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
Д
pi/dense/kernel
VariableV2*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *"
_class
loc:@pi/dense/kernel
М
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
ј
pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Џ
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
Й
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
t
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
ћ
pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b( 
Ѕ
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
W
pi/dense/EluElupi/dense/BiasAdd*
T0*'
_output_shapes
:         @
Е
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Џ
0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *О│]Й*
dtype0*
_output_shapes
: 
Џ
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *О│]>*
dtype0*
_output_shapes
: 
З
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@@*

seed *
T0*$
_class
loc:@pi/dense_1/kernel*
seed2
Р
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
З
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Т
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0
Ф
pi/dense_1/kernel
VariableV2*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name *$
_class
loc:@pi/dense_1/kernel
█
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ё
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
њ
!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ъ
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
к
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
Ў
pi/dense_1/MatMulMatMulpi/dense/Elupi/dense_1/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         @
Ј
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:         @*
T0
[
pi/dense_1/EluElupi/dense_1/BiasAdd*
T0*'
_output_shapes
:         @
Е
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*$
_class
loc:@pi/dense_2/kernel*
valueB"@      *
dtype0
Џ
0pi/dense_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *▓_џЙ*
dtype0*
_output_shapes
: 
Џ
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *▓_џ>*
dtype0*
_output_shapes
: 
З
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*$
_class
loc:@pi/dense_2/kernel*
seed2*
Р
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: *
T0
З
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Т
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Ф
pi/dense_2/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
█
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
ё
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
њ
!pi/dense_2/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Ъ
pi/dense_2/bias
VariableV2*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
к
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
Џ
pi/dense_2/MatMulMatMulpi/dense_1/Elupi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b( *
T0
Ј
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:         *
T0
i
pi/log_std/initial_valueConst*
valueB"   ┐   ┐*
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
«
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
pi/log_std*
_output_shapes
:*
T0*
_class
loc:@pi/log_std
C
pi/ExpExppi/log_std/read*
_output_shapes
:*
T0
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
 *  ђ?*
dtype0*
_output_shapes
: 
Ъ
%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*
seed2?*'
_output_shapes
:         *

seed *
T0*
dtype0
Ї
pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*
T0*'
_output_shapes
:         
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*
T0*'
_output_shapes
:         
Y
pi/mulMulpi/random_normalpi/Exp*'
_output_shapes
:         *
T0
[
pi/addAddpi/dense_2/BiasAddpi/mul*'
_output_shapes
:         *
T0
b
pi/subSubPlaceholder_1pi/dense_2/BiasAdd*
T0*'
_output_shapes
:         
E
pi/Exp_1Exppi/log_std/read*
_output_shapes
:*
T0
O

pi/add_1/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
J
pi/add_1Addpi/Exp_1
pi/add_1/y*
_output_shapes
:*
T0
Y

pi/truedivRealDivpi/subpi/add_1*
T0*'
_output_shapes
:         
M
pi/pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
U
pi/powPow
pi/truedivpi/pow/y*'
_output_shapes
:         *
T0
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
:*
T0
S
pi/add_2Addpi/powpi/mul_1*
T0*'
_output_shapes
:         
O

pi/add_3/yConst*
valueB
 *ј?в?*
dtype0*
_output_shapes
: 
W
pi/add_3Addpi/add_2
pi/add_3/y*'
_output_shapes
:         *
T0
O

pi/mul_2/xConst*
valueB
 *   ┐*
dtype0*
_output_shapes
: 
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*
T0*'
_output_shapes
:         
Z
pi/Sum/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*#
_output_shapes
:         *

Tidx0*
	keep_dims( *
T0
]
pi/sub_1Subpi/addpi/dense_2/BiasAdd*
T0*'
_output_shapes
:         
E
pi/Exp_2Exppi/log_std/read*
_output_shapes
:*
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
:
]
pi/truediv_1RealDivpi/sub_1pi/add_4*
T0*'
_output_shapes
:         
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
:         *
T0
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
:
U
pi/add_5Addpi/pow_1pi/mul_3*'
_output_shapes
:         *
T0
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
:         
O

pi/mul_4/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ┐
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*
T0*'
_output_shapes
:         
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*
T0*#
_output_shapes
:         *

Tidx0*
	keep_dims( 
Б
/v/dense/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@v/dense/kernel*
valueB"   @   *
dtype0*
_output_shapes
:
Ћ
-v/dense/kernel/Initializer/random_uniform/minConst*!
_class
loc:@v/dense/kernel*
valueB
 *:═ЊЙ*
dtype0*
_output_shapes
: 
Ћ
-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *:═Њ>*
dtype0*
_output_shapes
: 
в
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*!
_class
loc:@v/dense/kernel*
seed2g
о
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
T0
У
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
┌
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
Ц
v/dense/kernel
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
¤
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
{
v/dense/kernel/readIdentityv/dense/kernel*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
ї
v/dense/bias/Initializer/zerosConst*
_output_shapes
:@*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0
Ў
v/dense/bias
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
║
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
q
v/dense/bias/readIdentityv/dense/bias*
_output_shapes
:@*
T0*
_class
loc:@v/dense/bias
њ
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b( 
є
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
data_formatNHWC*'
_output_shapes
:         @*
T0
U
v/dense/EluEluv/dense/BiasAdd*
T0*'
_output_shapes
:         @
Д
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Ў
/v/dense_1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *О│]Й*
dtype0*
_output_shapes
: 
Ў
/v/dense_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *О│]>*
dtype0*
_output_shapes
: 
ы
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@@*

seed *
T0*#
_class
loc:@v/dense_1/kernel*
seed2x
я
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: *
T0
­
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Р
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Е
v/dense_1/kernel
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
О
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Ђ
v/dense_1/kernel/readIdentityv/dense_1/kernel*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
љ
 v/dense_1/bias/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ю
v/dense_1/bias
VariableV2*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@*
dtype0
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
v/dense_1/bias/readIdentityv/dense_1/bias*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
ќ
v/dense_1/MatMulMatMulv/dense/Eluv/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:         @*
transpose_b( *
T0
ї
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
Y
v/dense_1/EluEluv/dense_1/BiasAdd*
T0*'
_output_shapes
:         @
Д
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Ў
/v/dense_2/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_2/kernel*
valueB
 *ѕјЏЙ*
dtype0*
_output_shapes
: 
Ў
/v/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel*
valueB
 *ѕјЏ>*
dtype0
Ы
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@v/dense_2/kernel*
seed2Ѕ*
dtype0*
_output_shapes

:@*

seed 
я
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 
­
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
Р
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Е
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
О
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Ђ
v/dense_2/kernel/readIdentityv/dense_2/kernel*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
љ
 v/dense_2/bias/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Ю
v/dense_2/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_2/bias
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
ў
v/dense_2/MatMulMatMulv/dense_1/Eluv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         *
transpose_b( 
ї
v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
l
	v/SqueezeSqueezev/dense_2/BiasAdd*#
_output_shapes
:         *
squeeze_dims
*
T0
O
mulMulpi/SumPlaceholder_2*#
_output_shapes
:         *
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
subSubPlaceholder_3	v/Squeeze*#
_output_shapes
:         *
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
:         *
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
:         
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
Neg_1Negpi/Sum*#
_output_shapes
:         *
T0
Q
Const_3Const*
_output_shapes
:*
valueB: *
dtype0
\
Mean_3MeanNeg_1Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
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
ћ
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
ў
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
Ъ
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Њ
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
r
gradients/mul_grad/Mul_1Mulpi/Sumgradients/Mean_grad/truediv*
T0*#
_output_shapes
:         
Ц
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
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
gradients/pi/Sum_grad/ShapeShapepi/mul_2*
T0*
out_type0*
_output_shapes
:
ї
gradients/pi/Sum_grad/SizeConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Д
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
Г
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
љ
gradients/pi/Sum_grad/Shape_1Const*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
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
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
њ
 gradients/pi/Sum_grad/Fill/valueConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
к
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*

index_type0*
_output_shapes
: 
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
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*
T0
╗
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
_output_shapes
:*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
├
gradients/pi/Sum_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:                  
Ц
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*'
_output_shapes
:         *

Tmultiples0*
T0
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
gradients/pi/mul_2_grad/MulMulgradients/pi/Sum_grad/Tilepi/add_3*'
_output_shapes
:         *
T0
«
gradients/pi/mul_2_grad/SumSumgradients/pi/mul_2_grad/Mul-gradients/pi/mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ћ
gradients/pi/mul_2_grad/ReshapeReshapegradients/pi/mul_2_grad/Sumgradients/pi/mul_2_grad/Shape*
_output_shapes
: *
T0*
Tshape0
~
gradients/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients/pi/Sum_grad/Tile*'
_output_shapes
:         *
T0
┤
gradients/pi/mul_2_grad/Sum_1Sumgradients/pi/mul_2_grad/Mul_1/gradients/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
г
!gradients/pi/mul_2_grad/Reshape_1Reshapegradients/pi/mul_2_grad/Sum_1gradients/pi/mul_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
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
2gradients/pi/mul_2_grad/tuple/control_dependency_1Identity!gradients/pi/mul_2_grad/Reshape_1)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_2_grad/Reshape_1*'
_output_shapes
:         
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
├
-gradients/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_3_grad/Shapegradients/pi/add_3_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┼
gradients/pi/add_3_grad/SumSum2gradients/pi/mul_2_grad/tuple/control_dependency_1-gradients/pi/add_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
д
gradients/pi/add_3_grad/ReshapeReshapegradients/pi/add_3_grad/Sumgradients/pi/add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
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
0gradients/pi/add_3_grad/tuple/control_dependencyIdentitygradients/pi/add_3_grad/Reshape)^gradients/pi/add_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_3_grad/Reshape*'
_output_shapes
:         
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
valueB:*
dtype0*
_output_shapes
:
├
-gradients/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_2_grad/Shapegradients/pi/add_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
gradients/pi/add_2_grad/SumSum0gradients/pi/add_3_grad/tuple/control_dependency-gradients/pi/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
д
gradients/pi/add_2_grad/ReshapeReshapegradients/pi/add_2_grad/Sumgradients/pi/add_2_grad/Shape*'
_output_shapes
:         *
T0*
Tshape0
К
gradients/pi/add_2_grad/Sum_1Sum0gradients/pi/add_3_grad/tuple/control_dependency/gradients/pi/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ъ
!gradients/pi/add_2_grad/Reshape_1Reshapegradients/pi/add_2_grad/Sum_1gradients/pi/add_2_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
v
(gradients/pi/add_2_grad/tuple/group_depsNoOp ^gradients/pi/add_2_grad/Reshape"^gradients/pi/add_2_grad/Reshape_1
Ь
0gradients/pi/add_2_grad/tuple/control_dependencyIdentitygradients/pi/add_2_grad/Reshape)^gradients/pi/add_2_grad/tuple/group_deps*'
_output_shapes
:         *
T0*2
_class(
&$loc:@gradients/pi/add_2_grad/Reshape
у
2gradients/pi/add_2_grad/tuple/control_dependency_1Identity!gradients/pi/add_2_grad/Reshape_1)^gradients/pi/add_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_2_grad/Reshape_1*
_output_shapes
:
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
+gradients/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/pow_grad/Shapegradients/pi/pow_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ј
gradients/pi/pow_grad/mulMul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow/y*
T0*'
_output_shapes
:         
`
gradients/pi/pow_grad/sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
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
:         
і
gradients/pi/pow_grad/mul_1Mulgradients/pi/pow_grad/mulgradients/pi/pow_grad/Pow*
T0*'
_output_shapes
:         
ф
gradients/pi/pow_grad/SumSumgradients/pi/pow_grad/mul_1+gradients/pi/pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
а
gradients/pi/pow_grad/ReshapeReshapegradients/pi/pow_grad/Sumgradients/pi/pow_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
d
gradients/pi/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
gradients/pi/pow_grad/GreaterGreater
pi/truedivgradients/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:         
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
 *  ђ?*
dtype0*
_output_shapes
: 
╣
gradients/pi/pow_grad/ones_likeFill%gradients/pi/pow_grad/ones_like/Shape%gradients/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:         
ц
gradients/pi/pow_grad/SelectSelectgradients/pi/pow_grad/Greater
pi/truedivgradients/pi/pow_grad/ones_like*'
_output_shapes
:         *
T0
p
gradients/pi/pow_grad/LogLoggradients/pi/pow_grad/Select*'
_output_shapes
:         *
T0
k
 gradients/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*
T0*'
_output_shapes
:         
Х
gradients/pi/pow_grad/Select_1Selectgradients/pi/pow_grad/Greatergradients/pi/pow_grad/Log gradients/pi/pow_grad/zeros_like*
T0*'
_output_shapes
:         
ј
gradients/pi/pow_grad/mul_2Mul0gradients/pi/add_2_grad/tuple/control_dependencypi/pow*'
_output_shapes
:         *
T0
Љ
gradients/pi/pow_grad/mul_3Mulgradients/pi/pow_grad/mul_2gradients/pi/pow_grad/Select_1*
T0*'
_output_shapes
:         
«
gradients/pi/pow_grad/Sum_1Sumgradients/pi/pow_grad/mul_3-gradients/pi/pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ћ
gradients/pi/pow_grad/Reshape_1Reshapegradients/pi/pow_grad/Sum_1gradients/pi/pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
p
&gradients/pi/pow_grad/tuple/group_depsNoOp^gradients/pi/pow_grad/Reshape ^gradients/pi/pow_grad/Reshape_1
Т
.gradients/pi/pow_grad/tuple/control_dependencyIdentitygradients/pi/pow_grad/Reshape'^gradients/pi/pow_grad/tuple/group_deps*0
_class&
$"loc:@gradients/pi/pow_grad/Reshape*'
_output_shapes
:         *
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
valueB:*
dtype0*
_output_shapes
:
├
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ї
gradients/pi/mul_1_grad/MulMul2gradients/pi/add_2_grad/tuple/control_dependency_1pi/log_std/read*
T0*
_output_shapes
:
г
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Ћ
gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ѕ
gradients/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x2gradients/pi/add_2_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
Х
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ъ
!gradients/pi/mul_1_grad/Reshape_1Reshapegradients/pi/mul_1_grad/Sum_1gradients/pi/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/mul_1_grad/tuple/group_depsNoOp ^gradients/pi/mul_1_grad/Reshape"^gradients/pi/mul_1_grad/Reshape_1
П
0gradients/pi/mul_1_grad/tuple/control_dependencyIdentitygradients/pi/mul_1_grad/Reshape)^gradients/pi/mul_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_1_grad/Reshape*
_output_shapes
: 
у
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
╔
/gradients/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/truediv_grad/Shape!gradients/pi/truediv_grad/Shape_1*2
_output_shapes 
:         :         *
T0
ў
!gradients/pi/truediv_grad/RealDivRealDiv.gradients/pi/pow_grad/tuple/control_dependencypi/add_1*
T0*'
_output_shapes
:         
И
gradients/pi/truediv_grad/SumSum!gradients/pi/truediv_grad/RealDiv/gradients/pi/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
г
!gradients/pi/truediv_grad/ReshapeReshapegradients/pi/truediv_grad/Sumgradients/pi/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
^
gradients/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:         *
T0
Ѕ
#gradients/pi/truediv_grad/RealDiv_1RealDivgradients/pi/truediv_grad/Negpi/add_1*
T0*'
_output_shapes
:         
Ј
#gradients/pi/truediv_grad/RealDiv_2RealDiv#gradients/pi/truediv_grad/RealDiv_1pi/add_1*
T0*'
_output_shapes
:         
Ф
gradients/pi/truediv_grad/mulMul.gradients/pi/pow_grad/tuple/control_dependency#gradients/pi/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:         
И
gradients/pi/truediv_grad/Sum_1Sumgradients/pi/truediv_grad/mul1gradients/pi/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ц
#gradients/pi/truediv_grad/Reshape_1Reshapegradients/pi/truediv_grad/Sum_1!gradients/pi/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients/pi/truediv_grad/tuple/group_depsNoOp"^gradients/pi/truediv_grad/Reshape$^gradients/pi/truediv_grad/Reshape_1
Ш
2gradients/pi/truediv_grad/tuple/control_dependencyIdentity!gradients/pi/truediv_grad/Reshape+^gradients/pi/truediv_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/truediv_grad/Reshape*'
_output_shapes
:         
№
4gradients/pi/truediv_grad/tuple/control_dependency_1Identity#gradients/pi/truediv_grad/Reshape_1+^gradients/pi/truediv_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_grad/Reshape_1*
_output_shapes
:
h
gradients/pi/sub_grad/ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
o
gradients/pi/sub_grad/Shape_1Shapepi/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
й
+gradients/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_grad/Shapegradients/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
gradients/pi/sub_grad/SumSum2gradients/pi/truediv_grad/tuple/control_dependency+gradients/pi/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
а
gradients/pi/sub_grad/ReshapeReshapegradients/pi/sub_grad/Sumgradients/pi/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
┼
gradients/pi/sub_grad/Sum_1Sum2gradients/pi/truediv_grad/tuple/control_dependency-gradients/pi/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
`
gradients/pi/sub_grad/NegNeggradients/pi/sub_grad/Sum_1*
_output_shapes
:*
T0
ц
gradients/pi/sub_grad/Reshape_1Reshapegradients/pi/sub_grad/Neggradients/pi/sub_grad/Shape_1*'
_output_shapes
:         *
T0*
Tshape0
p
&gradients/pi/sub_grad/tuple/group_depsNoOp^gradients/pi/sub_grad/Reshape ^gradients/pi/sub_grad/Reshape_1
Т
.gradients/pi/sub_grad/tuple/control_dependencyIdentitygradients/pi/sub_grad/Reshape'^gradients/pi/sub_grad/tuple/group_deps*'
_output_shapes
:         *
T0*0
_class&
$"loc:@gradients/pi/sub_grad/Reshape
В
0gradients/pi/sub_grad/tuple/control_dependency_1Identitygradients/pi/sub_grad/Reshape_1'^gradients/pi/sub_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:         
g
gradients/pi/add_1_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
b
gradients/pi/add_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
├
-gradients/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_1_grad/Shapegradients/pi/add_1_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╔
gradients/pi/add_1_grad/SumSum4gradients/pi/truediv_grad/tuple/control_dependency_1-gradients/pi/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ў
gradients/pi/add_1_grad/ReshapeReshapegradients/pi/add_1_grad/Sumgradients/pi/add_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
╔
gradients/pi/add_1_grad/Sum_1Sum4gradients/pi/truediv_grad/tuple/control_dependency_1/gradients/pi/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Џ
!gradients/pi/add_1_grad/Reshape_1Reshapegradients/pi/add_1_grad/Sum_1gradients/pi/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/pi/add_1_grad/tuple/group_depsNoOp ^gradients/pi/add_1_grad/Reshape"^gradients/pi/add_1_grad/Reshape_1
р
0gradients/pi/add_1_grad/tuple/control_dependencyIdentitygradients/pi/add_1_grad/Reshape)^gradients/pi/add_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_1_grad/Reshape*
_output_shapes
:
с
2gradients/pi/add_1_grad/tuple/control_dependency_1Identity!gradients/pi/add_1_grad/Reshape_1)^gradients/pi/add_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_1_grad/Reshape_1*
_output_shapes
: 
ф
-gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients/pi/sub_grad/tuple/control_dependency_1*
data_formatNHWC*
_output_shapes
:*
T0
Ю
2gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad1^gradients/pi/sub_grad/tuple/control_dependency_1
Њ
:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity0gradients/pi/sub_grad/tuple/control_dependency_13^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*'
_output_shapes
:         
Њ
<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*@
_class6
42loc:@gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
Ѓ
gradients/pi/Exp_1_grad/mulMul0gradients/pi/add_1_grad/tuple/control_dependencypi/Exp_1*
T0*
_output_shapes
:
П
'gradients/pi/dense_2/MatMul_grad/MatMulMatMul:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencypi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:         @*
transpose_b(*
T0
╬
)gradients/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Elu:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0
Ј
1gradients/pi/dense_2/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_2/MatMul_grad/MatMul*^gradients/pi/dense_2/MatMul_grad/MatMul_1
љ
9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_2/MatMul_grad/MatMul2^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:         @
Ї
;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_2/MatMul_grad/MatMul_12^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@
╦
gradients/AddNAddN2gradients/pi/mul_1_grad/tuple/control_dependency_1gradients/pi/Exp_1_grad/mul*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
N*
_output_shapes
:
Г
%gradients/pi/dense_1/Elu_grad/EluGradEluGrad9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencypi/dense_1/Elu*
T0*'
_output_shapes
:         @
Ъ
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/pi/dense_1/Elu_grad/EluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
њ
2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad&^gradients/pi/dense_1/Elu_grad/EluGrad
ј
:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/pi/dense_1/Elu_grad/EluGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense_1/Elu_grad/EluGrad*'
_output_shapes
:         @
Њ
<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad
П
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:         @*
transpose_b(*
T0
╠
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Elu:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@@*
transpose_b( *
T0
Ј
1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1
љ
9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:         @
Ї
;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@*
T0
Е
#gradients/pi/dense/Elu_grad/EluGradEluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Elu*
T0*'
_output_shapes
:         @
Џ
+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/pi/dense/Elu_grad/EluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
ї
0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad$^gradients/pi/dense/Elu_grad/EluGrad
є
8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity#gradients/pi/dense/Elu_grad/EluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         @*
T0*6
_class,
*(loc:@gradients/pi/dense/Elu_grad/EluGrad
І
:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
О
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b(*
T0
К
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
Ѕ
/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1
ѕ
7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul*'
_output_shapes
:         
Ё
9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1
`
Reshape/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
љ
ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:ђ
b
Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ћ
	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_2/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ќ
	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
b
Reshape_3/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ќ
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
ќ
	Reshape_4Reshape;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
T0*
Tshape0*
_output_shapes	
:ђ
b
Reshape_5/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
ќ
	Reshape_5Reshape<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_6/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
h
	Reshape_6Reshapegradients/AddNReshape_6/shape*
T0*
Tshape0*
_output_shapes
:
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ц
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6concat/axis*
T0*
N*
_output_shapes	
:ё&*

Tidx0
g
PyFuncPyFuncconcat*
Tin
2*
_output_shapes	
:ё&*
Tout
2*
token
pyfunc_0
l
Const_4Const*1
value(B&"   @      @   ђ         *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
џ
splitSplitVPyFuncConst_4split/split_dim*
T0*

Tlen0*
	num_split*A
_output_shapes/
-:ђ:@:ђ :@:ђ::
`
Reshape_7/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
c
	Reshape_7ReshapesplitReshape_7/shape*
Tshape0*
_output_shapes

:@*
T0
Y
Reshape_8/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
a
	Reshape_8Reshapesplit:1Reshape_8/shape*
Tshape0*
_output_shapes
:@*
T0
`
Reshape_9/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
e
	Reshape_9Reshapesplit:2Reshape_9/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_10/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
c

Reshape_10Reshapesplit:3Reshape_10/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_11/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
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

Reshape_12Reshapesplit:5Reshape_12/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_13/shapeConst*
dtype0*
_output_shapes
:*
valueB:
c

Reshape_13Reshapesplit:6Reshape_13/shape*
T0*
Tshape0*
_output_shapes
:
ђ
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *fff?
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
beta1_power/readIdentitybeta1_power*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
ђ
beta2_power/initial_valueConst*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *wЙ?*
dtype0
Љ
beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias
░
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
l
beta2_power/readIdentitybeta2_power*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
Б
*pi/dense/kernel/LazyAdam/Initializer/zerosConst*
dtype0*
_output_shapes

:@*
valueB@*    *"
_class
loc:@pi/dense/kernel
░
pi/dense/kernel/LazyAdam
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
т
pi/dense/kernel/LazyAdam/AssignAssignpi/dense/kernel/LazyAdam*pi/dense/kernel/LazyAdam/Initializer/zeros*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
љ
pi/dense/kernel/LazyAdam/readIdentitypi/dense/kernel/LazyAdam*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
Ц
,pi/dense/kernel/LazyAdam_1/Initializer/zerosConst*
valueB@*    *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

:@
▓
pi/dense/kernel/LazyAdam_1
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
в
!pi/dense/kernel/LazyAdam_1/AssignAssignpi/dense/kernel/LazyAdam_1,pi/dense/kernel/LazyAdam_1/Initializer/zeros*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
ћ
pi/dense/kernel/LazyAdam_1/readIdentitypi/dense/kernel/LazyAdam_1*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel
Ќ
(pi/dense/bias/LazyAdam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@pi/dense/bias
ц
pi/dense/bias/LazyAdam
VariableV2* 
_class
loc:@pi/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
┘
pi/dense/bias/LazyAdam/AssignAssignpi/dense/bias/LazyAdam(pi/dense/bias/LazyAdam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
є
pi/dense/bias/LazyAdam/readIdentitypi/dense/bias/LazyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
Ў
*pi/dense/bias/LazyAdam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@pi/dense/bias
д
pi/dense/bias/LazyAdam_1
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
▀
pi/dense/bias/LazyAdam_1/AssignAssignpi/dense/bias/LazyAdam_1*pi/dense/bias/LazyAdam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
і
pi/dense/bias/LazyAdam_1/readIdentitypi/dense/bias/LazyAdam_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
│
<pi/dense_1/kernel/LazyAdam/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:
Ю
2pi/dense_1/kernel/LazyAdam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0
Є
,pi/dense_1/kernel/LazyAdam/Initializer/zerosFill<pi/dense_1/kernel/LazyAdam/Initializer/zeros/shape_as_tensor2pi/dense_1/kernel/LazyAdam/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
┤
pi/dense_1/kernel/LazyAdam
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
ь
!pi/dense_1/kernel/LazyAdam/AssignAssignpi/dense_1/kernel/LazyAdam,pi/dense_1/kernel/LazyAdam/Initializer/zeros*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
ќ
pi/dense_1/kernel/LazyAdam/readIdentitypi/dense_1/kernel/LazyAdam*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
х
>pi/dense_1/kernel/LazyAdam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:
Ъ
4pi/dense_1/kernel/LazyAdam_1/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
Ї
.pi/dense_1/kernel/LazyAdam_1/Initializer/zerosFill>pi/dense_1/kernel/LazyAdam_1/Initializer/zeros/shape_as_tensor4pi/dense_1/kernel/LazyAdam_1/Initializer/zeros/Const*
_output_shapes

:@@*
T0*

index_type0*$
_class
loc:@pi/dense_1/kernel
Х
pi/dense_1/kernel/LazyAdam_1
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
з
#pi/dense_1/kernel/LazyAdam_1/AssignAssignpi/dense_1/kernel/LazyAdam_1.pi/dense_1/kernel/LazyAdam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
џ
!pi/dense_1/kernel/LazyAdam_1/readIdentitypi/dense_1/kernel/LazyAdam_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Џ
*pi/dense_1/bias/LazyAdam/Initializer/zerosConst*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:@
е
pi/dense_1/bias/LazyAdam
VariableV2*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
р
pi/dense_1/bias/LazyAdam/AssignAssignpi/dense_1/bias/LazyAdam*pi/dense_1/bias/LazyAdam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
ї
pi/dense_1/bias/LazyAdam/readIdentitypi/dense_1/bias/LazyAdam*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
Ю
,pi/dense_1/bias/LazyAdam_1/Initializer/zerosConst*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:@
ф
pi/dense_1/bias/LazyAdam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:@
у
!pi/dense_1/bias/LazyAdam_1/AssignAssignpi/dense_1/bias/LazyAdam_1,pi/dense_1/bias/LazyAdam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
љ
pi/dense_1/bias/LazyAdam_1/readIdentitypi/dense_1/bias/LazyAdam_1*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias
Д
,pi/dense_2/kernel/LazyAdam/Initializer/zerosConst*
valueB@*    *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:@
┤
pi/dense_2/kernel/LazyAdam
VariableV2*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
ь
!pi/dense_2/kernel/LazyAdam/AssignAssignpi/dense_2/kernel/LazyAdam,pi/dense_2/kernel/LazyAdam/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
ќ
pi/dense_2/kernel/LazyAdam/readIdentitypi/dense_2/kernel/LazyAdam*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0
Е
.pi/dense_2/kernel/LazyAdam_1/Initializer/zerosConst*
valueB@*    *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:@
Х
pi/dense_2/kernel/LazyAdam_1
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
з
#pi/dense_2/kernel/LazyAdam_1/AssignAssignpi/dense_2/kernel/LazyAdam_1.pi/dense_2/kernel/LazyAdam_1/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
џ
!pi/dense_2/kernel/LazyAdam_1/readIdentitypi/dense_2/kernel/LazyAdam_1*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Џ
*pi/dense_2/bias/LazyAdam/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0
е
pi/dense_2/bias/LazyAdam
VariableV2*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
р
pi/dense_2/bias/LazyAdam/AssignAssignpi/dense_2/bias/LazyAdam*pi/dense_2/bias/LazyAdam/Initializer/zeros*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
ї
pi/dense_2/bias/LazyAdam/readIdentitypi/dense_2/bias/LazyAdam*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
Ю
,pi/dense_2/bias/LazyAdam_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0
ф
pi/dense_2/bias/LazyAdam_1
VariableV2*"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
у
!pi/dense_2/bias/LazyAdam_1/AssignAssignpi/dense_2/bias/LazyAdam_1,pi/dense_2/bias/LazyAdam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
љ
pi/dense_2/bias/LazyAdam_1/readIdentitypi/dense_2/bias/LazyAdam_1*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
Љ
%pi/log_std/LazyAdam/Initializer/zerosConst*
valueB*    *
_class
loc:@pi/log_std*
dtype0*
_output_shapes
:
ъ
pi/log_std/LazyAdam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std*
	container *
shape:
═
pi/log_std/LazyAdam/AssignAssignpi/log_std/LazyAdam%pi/log_std/LazyAdam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
}
pi/log_std/LazyAdam/readIdentitypi/log_std/LazyAdam*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
Њ
'pi/log_std/LazyAdam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@pi/log_std*
dtype0*
_output_shapes
:
а
pi/log_std/LazyAdam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@pi/log_std
М
pi/log_std/LazyAdam_1/AssignAssignpi/log_std/LazyAdam_1'pi/log_std/LazyAdam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
Ђ
pi/log_std/LazyAdam_1/readIdentitypi/log_std/LazyAdam_1*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
[
LazyAdam/learning_rateConst*
valueB
 *RIЮ9*
dtype0*
_output_shapes
: 
S
LazyAdam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
S
LazyAdam/beta2Const*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
U
LazyAdam/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
Ж
)LazyAdam/update_pi/dense/kernel/ApplyAdam	ApplyAdampi/dense/kernelpi/dense/kernel/LazyAdampi/dense/kernel/LazyAdam_1beta1_power/readbeta2_power/readLazyAdam/learning_rateLazyAdam/beta1LazyAdam/beta2LazyAdam/epsilon	Reshape_7*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
use_nesterov( *
_output_shapes

:@
▄
'LazyAdam/update_pi/dense/bias/ApplyAdam	ApplyAdampi/dense/biaspi/dense/bias/LazyAdampi/dense/bias/LazyAdam_1beta1_power/readbeta2_power/readLazyAdam/learning_rateLazyAdam/beta1LazyAdam/beta2LazyAdam/epsilon	Reshape_8*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
_output_shapes
:@
З
+LazyAdam/update_pi/dense_1/kernel/ApplyAdam	ApplyAdampi/dense_1/kernelpi/dense_1/kernel/LazyAdampi/dense_1/kernel/LazyAdam_1beta1_power/readbeta2_power/readLazyAdam/learning_rateLazyAdam/beta1LazyAdam/beta2LazyAdam/epsilon	Reshape_9*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( *
_output_shapes

:@@
у
)LazyAdam/update_pi/dense_1/bias/ApplyAdam	ApplyAdampi/dense_1/biaspi/dense_1/bias/LazyAdampi/dense_1/bias/LazyAdam_1beta1_power/readbeta2_power/readLazyAdam/learning_rateLazyAdam/beta1LazyAdam/beta2LazyAdam/epsilon
Reshape_10*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias
ш
+LazyAdam/update_pi/dense_2/kernel/ApplyAdam	ApplyAdampi/dense_2/kernelpi/dense_2/kernel/LazyAdampi/dense_2/kernel/LazyAdam_1beta1_power/readbeta2_power/readLazyAdam/learning_rateLazyAdam/beta1LazyAdam/beta2LazyAdam/epsilon
Reshape_11*
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel*
use_nesterov( *
_output_shapes

:@
у
)LazyAdam/update_pi/dense_2/bias/ApplyAdam	ApplyAdampi/dense_2/biaspi/dense_2/bias/LazyAdampi/dense_2/bias/LazyAdam_1beta1_power/readbeta2_power/readLazyAdam/learning_rateLazyAdam/beta1LazyAdam/beta2LazyAdam/epsilon
Reshape_12*
use_locking( *
T0*"
_class
loc:@pi/dense_2/bias*
use_nesterov( *
_output_shapes
:
╬
$LazyAdam/update_pi/log_std/ApplyAdam	ApplyAdam
pi/log_stdpi/log_std/LazyAdampi/log_std/LazyAdam_1beta1_power/readbeta2_power/readLazyAdam/learning_rateLazyAdam/beta1LazyAdam/beta2LazyAdam/epsilon
Reshape_13*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@pi/log_std*
use_nesterov( 
Е
LazyAdam/mulMulbeta1_power/readLazyAdam/beta1(^LazyAdam/update_pi/dense/bias/ApplyAdam*^LazyAdam/update_pi/dense/kernel/ApplyAdam*^LazyAdam/update_pi/dense_1/bias/ApplyAdam,^LazyAdam/update_pi/dense_1/kernel/ApplyAdam*^LazyAdam/update_pi/dense_2/bias/ApplyAdam,^LazyAdam/update_pi/dense_2/kernel/ApplyAdam%^LazyAdam/update_pi/log_std/ApplyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
а
LazyAdam/AssignAssignbeta1_powerLazyAdam/mul*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
Ф
LazyAdam/mul_1Mulbeta2_power/readLazyAdam/beta2(^LazyAdam/update_pi/dense/bias/ApplyAdam*^LazyAdam/update_pi/dense/kernel/ApplyAdam*^LazyAdam/update_pi/dense_1/bias/ApplyAdam,^LazyAdam/update_pi/dense_1/kernel/ApplyAdam*^LazyAdam/update_pi/dense_2/bias/ApplyAdam,^LazyAdam/update_pi/dense_2/kernel/ApplyAdam%^LazyAdam/update_pi/log_std/ApplyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
ц
LazyAdam/Assign_1Assignbeta2_powerLazyAdam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@pi/dense/bias
у
LazyAdamNoOp^LazyAdam/Assign^LazyAdam/Assign_1(^LazyAdam/update_pi/dense/bias/ApplyAdam*^LazyAdam/update_pi/dense/kernel/ApplyAdam*^LazyAdam/update_pi/dense_1/bias/ApplyAdam,^LazyAdam/update_pi/dense_1/kernel/ApplyAdam*^LazyAdam/update_pi/dense_2/bias/ApplyAdam,^LazyAdam/update_pi/dense_2/kernel/ApplyAdam%^LazyAdam/update_pi/log_std/ApplyAdam
n
Reshape_14/shapeConst	^LazyAdam*
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
:ђ
n
Reshape_15/shapeConst	^LazyAdam*
dtype0*
_output_shapes
:*
valueB:
         
n

Reshape_15Reshapepi/dense/bias/readReshape_15/shape*
_output_shapes
:@*
T0*
Tshape0
n
Reshape_16/shapeConst	^LazyAdam*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_16Reshapepi/dense_1/kernel/readReshape_16/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
n
Reshape_17/shapeConst	^LazyAdam*
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
n
Reshape_18/shapeConst	^LazyAdam*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_18Reshapepi/dense_2/kernel/readReshape_18/shape*
Tshape0*
_output_shapes	
:ђ*
T0
n
Reshape_19/shapeConst	^LazyAdam*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_19Reshapepi/dense_2/bias/readReshape_19/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_20/shapeConst	^LazyAdam*
dtype0*
_output_shapes
:*
valueB:
         
k

Reshape_20Reshapepi/log_std/readReshape_20/shape*
_output_shapes
:*
T0*
Tshape0
Z
concat_1/axisConst	^LazyAdam*
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
Reshape_20concat_1/axis*

Tidx0*
T0*
N*
_output_shapes	
:ё&
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
w
Const_5Const	^LazyAdam*1
value(B&"   @      @   ђ         *
dtype0*
_output_shapes
:
^
split_1/split_dimConst	^LazyAdam*
value	B : *
dtype0*
_output_shapes
: 
Ј
split_1SplitVPyFunc_1Const_5split_1/split_dim*

Tlen0*
	num_split*0
_output_shapes
:::::::*
T0
l
Reshape_21/shapeConst	^LazyAdam*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_21Reshapesplit_1Reshape_21/shape*
_output_shapes

:@*
T0*
Tshape0
e
Reshape_22/shapeConst	^LazyAdam*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_22Reshape	split_1:1Reshape_22/shape*
T0*
Tshape0*
_output_shapes
:@
l
Reshape_23/shapeConst	^LazyAdam*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_23Reshape	split_1:2Reshape_23/shape*
T0*
Tshape0*
_output_shapes

:@@
e
Reshape_24/shapeConst	^LazyAdam*
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
l
Reshape_25/shapeConst	^LazyAdam*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_25Reshape	split_1:4Reshape_25/shape*
T0*
Tshape0*
_output_shapes

:@
e
Reshape_26/shapeConst	^LazyAdam*
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
e
Reshape_27/shapeConst	^LazyAdam*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_27Reshape	split_1:6Reshape_27/shape*
T0*
Tshape0*
_output_shapes
:
Б
AssignAssignpi/dense/kernel
Reshape_21*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
Ю
Assign_1Assignpi/dense/bias
Reshape_22*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
Е
Assign_2Assignpi/dense_1/kernel
Reshape_23*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
А
Assign_3Assignpi/dense_1/bias
Reshape_24*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Е
Assign_4Assignpi/dense_2/kernel
Reshape_25*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel
А
Assign_5Assignpi/dense_2/bias
Reshape_26*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Ќ
Assign_6Assign
pi/log_std
Reshape_27*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
h

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^LazyAdam
,
group_deps_1NoOp	^LazyAdam^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
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
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*
T0*#
_output_shapes
:         *

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
б
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
i
gradients_1/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
д
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
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*#
_output_shapes
:         *
T0
]
gradients_1/pow_grad/ShapeShapesub*
_output_shapes
:*
T0*
out_type0
_
gradients_1/pow_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
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
gradients_1/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ђ?*
dtype0
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
_output_shapes
: *
T0
l
gradients_1/pow_grad/PowPowsubgradients_1/pow_grad/sub*#
_output_shapes
:         *
T0
Ѓ
gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*
T0*#
_output_shapes
:         
Д
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
Tshape0*#
_output_shapes
:         *
T0
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
$gradients_1/pow_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
▓
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*#
_output_shapes
:         *
T0*

index_type0
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
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:         
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
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
я
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:         *
T0
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
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*#
_output_shapes
:         *
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
└
"gradients_1/v/Squeeze_grad/ReshapeReshape/gradients_1/sub_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
Ю
.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
Љ
3gradients_1/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad
і
;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape*'
_output_shapes
:         *
T0
Ќ
=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
я
(gradients_1/v/dense_2/MatMul_grad/MatMulMatMul;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b(
¤
*gradients_1/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Elu;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
њ
2gradients_1/v/dense_2/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_2/MatMul_grad/MatMul+^gradients_1/v/dense_2/MatMul_grad/MatMul_1
ћ
:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/MatMul_grad/MatMul3^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_2/MatMul_grad/MatMul*'
_output_shapes
:         @
Љ
<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_2/MatMul_grad/MatMul_13^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*=
_class3
1/loc:@gradients_1/v/dense_2/MatMul_grad/MatMul_1
«
&gradients_1/v/dense_1/Elu_grad/EluGradEluGrad:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyv/dense_1/Elu*'
_output_shapes
:         @*
T0
А
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients_1/v/dense_1/Elu_grad/EluGrad*
data_formatNHWC*
_output_shapes
:@*
T0
Ћ
3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad'^gradients_1/v/dense_1/Elu_grad/EluGrad
њ
;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients_1/v/dense_1/Elu_grad/EluGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         @*
T0*9
_class/
-+loc:@gradients_1/v/dense_1/Elu_grad/EluGrad
Ќ
=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad
я
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:         @*
transpose_b(
═
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Elu;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@@*
transpose_b( 
њ
2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1
ћ
:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:         @
Љ
<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@*
T0
ф
$gradients_1/v/dense/Elu_grad/EluGradEluGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Elu*
T0*'
_output_shapes
:         @
Ю
,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients_1/v/dense/Elu_grad/EluGrad*
data_formatNHWC*
_output_shapes
:@*
T0
Ј
1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad%^gradients_1/v/dense/Elu_grad/EluGrad
і
9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients_1/v/dense/Elu_grad/EluGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         @*
T0*7
_class-
+)loc:@gradients_1/v/dense/Elu_grad/EluGrad
Ј
;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
п
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
transpose_a( *'
_output_shapes
:         *
transpose_b(*
T0
╔
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
ї
0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1
ї
8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:         *
T0*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul
Ѕ
:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
c
Reshape_28/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ќ

Reshape_28Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_28/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_29/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
Ќ

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
Ў

Reshape_30Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_30/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_31/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ў

Reshape_31Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_31/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_32/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ў

Reshape_32Reshape<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_32/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_33/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
Ў

Reshape_33Reshape=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_33/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
д
concat_2ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31
Reshape_32
Reshape_33concat_2/axis*
_output_shapes	
:┴%*

Tidx0*
T0*
N
k
PyFunc_2PyFuncconcat_2*
Tin
2*
_output_shapes	
:┴%*
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
Ў
split_2SplitVPyFunc_2Const_6split_2/split_dim*

Tlen0*
	num_split*:
_output_shapes(
&:ђ:@:ђ :@:@:*
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

Reshape_37Reshape	split_2:3Reshape_37/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_38/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_38Reshape	split_2:4Reshape_38/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_39/shapeConst*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_39Reshape	split_2:5Reshape_39/shape*
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
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
х
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
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
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
х
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
o
beta2_power_1/readIdentitybeta2_power_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
А
)v/dense/kernel/LazyAdam/Initializer/zerosConst*
dtype0*
_output_shapes

:@*
valueB@*    *!
_class
loc:@v/dense/kernel
«
v/dense/kernel/LazyAdam
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
р
v/dense/kernel/LazyAdam/AssignAssignv/dense/kernel/LazyAdam)v/dense/kernel/LazyAdam/Initializer/zeros*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
Ї
v/dense/kernel/LazyAdam/readIdentityv/dense/kernel/LazyAdam*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
Б
+v/dense/kernel/LazyAdam_1/Initializer/zerosConst*
valueB@*    *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes

:@
░
v/dense/kernel/LazyAdam_1
VariableV2*!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
у
 v/dense/kernel/LazyAdam_1/AssignAssignv/dense/kernel/LazyAdam_1+v/dense/kernel/LazyAdam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Љ
v/dense/kernel/LazyAdam_1/readIdentityv/dense/kernel/LazyAdam_1*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
Ћ
'v/dense/bias/LazyAdam/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@
б
v/dense/bias/LazyAdam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container 
Н
v/dense/bias/LazyAdam/AssignAssignv/dense/bias/LazyAdam'v/dense/bias/LazyAdam/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
Ѓ
v/dense/bias/LazyAdam/readIdentityv/dense/bias/LazyAdam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
Ќ
)v/dense/bias/LazyAdam_1/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0
ц
v/dense/bias/LazyAdam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias
█
v/dense/bias/LazyAdam_1/AssignAssignv/dense/bias/LazyAdam_1)v/dense/bias/LazyAdam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
Є
v/dense/bias/LazyAdam_1/readIdentityv/dense/bias/LazyAdam_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
▒
;v/dense_1/kernel/LazyAdam/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:
Џ
1v/dense_1/kernel/LazyAdam/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
Ѓ
+v/dense_1/kernel/LazyAdam/Initializer/zerosFill;v/dense_1/kernel/LazyAdam/Initializer/zeros/shape_as_tensor1v/dense_1/kernel/LazyAdam/Initializer/zeros/Const*
_output_shapes

:@@*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel
▓
v/dense_1/kernel/LazyAdam
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
ж
 v/dense_1/kernel/LazyAdam/AssignAssignv/dense_1/kernel/LazyAdam+v/dense_1/kernel/LazyAdam/Initializer/zeros*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
Њ
v/dense_1/kernel/LazyAdam/readIdentityv/dense_1/kernel/LazyAdam*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
│
=v/dense_1/kernel/LazyAdam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:
Ю
3v/dense_1/kernel/LazyAdam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
Ѕ
-v/dense_1/kernel/LazyAdam_1/Initializer/zerosFill=v/dense_1/kernel/LazyAdam_1/Initializer/zeros/shape_as_tensor3v/dense_1/kernel/LazyAdam_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
┤
v/dense_1/kernel/LazyAdam_1
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
№
"v/dense_1/kernel/LazyAdam_1/AssignAssignv/dense_1/kernel/LazyAdam_1-v/dense_1/kernel/LazyAdam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Ќ
 v/dense_1/kernel/LazyAdam_1/readIdentityv/dense_1/kernel/LazyAdam_1*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Ў
)v/dense_1/bias/LazyAdam/Initializer/zerosConst*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:@
д
v/dense_1/bias/LazyAdam
VariableV2*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
П
v/dense_1/bias/LazyAdam/AssignAssignv/dense_1/bias/LazyAdam)v/dense_1/bias/LazyAdam/Initializer/zeros*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ѕ
v/dense_1/bias/LazyAdam/readIdentityv/dense_1/bias/LazyAdam*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias
Џ
+v/dense_1/bias/LazyAdam_1/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0
е
v/dense_1/bias/LazyAdam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias
с
 v/dense_1/bias/LazyAdam_1/AssignAssignv/dense_1/bias/LazyAdam_1+v/dense_1/bias/LazyAdam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
Ї
v/dense_1/bias/LazyAdam_1/readIdentityv/dense_1/bias/LazyAdam_1*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
Ц
+v/dense_2/kernel/LazyAdam/Initializer/zerosConst*
dtype0*
_output_shapes

:@*
valueB@*    *#
_class
loc:@v/dense_2/kernel
▓
v/dense_2/kernel/LazyAdam
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
ж
 v/dense_2/kernel/LazyAdam/AssignAssignv/dense_2/kernel/LazyAdam+v/dense_2/kernel/LazyAdam/Initializer/zeros*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
Њ
v/dense_2/kernel/LazyAdam/readIdentityv/dense_2/kernel/LazyAdam*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
Д
-v/dense_2/kernel/LazyAdam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:@*
valueB@*    *#
_class
loc:@v/dense_2/kernel
┤
v/dense_2/kernel/LazyAdam_1
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
№
"v/dense_2/kernel/LazyAdam_1/AssignAssignv/dense_2/kernel/LazyAdam_1-v/dense_2/kernel/LazyAdam_1/Initializer/zeros*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
Ќ
 v/dense_2/kernel/LazyAdam_1/readIdentityv/dense_2/kernel/LazyAdam_1*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Ў
)v/dense_2/bias/LazyAdam/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
д
v/dense_2/bias/LazyAdam
VariableV2*!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
П
v/dense_2/bias/LazyAdam/AssignAssignv/dense_2/bias/LazyAdam)v/dense_2/bias/LazyAdam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
Ѕ
v/dense_2/bias/LazyAdam/readIdentityv/dense_2/bias/LazyAdam*
_output_shapes
:*
T0*!
_class
loc:@v/dense_2/bias
Џ
+v/dense_2/bias/LazyAdam_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
е
v/dense_2/bias/LazyAdam_1
VariableV2*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
с
 v/dense_2/bias/LazyAdam_1/AssignAssignv/dense_2/bias/LazyAdam_1+v/dense_2/bias/LazyAdam_1/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ї
v/dense_2/bias/LazyAdam_1/readIdentityv/dense_2/bias/LazyAdam_1*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
]
LazyAdam_1/learning_rateConst*
valueB
 *oЃ:*
dtype0*
_output_shapes
: 
U
LazyAdam_1/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
U
LazyAdam_1/beta2Const*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
W
LazyAdam_1/epsilonConst*
_output_shapes
: *
valueB
 *w╠+2*
dtype0
З
*LazyAdam_1/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/LazyAdamv/dense/kernel/LazyAdam_1beta1_power_1/readbeta2_power_1/readLazyAdam_1/learning_rateLazyAdam_1/beta1LazyAdam_1/beta2LazyAdam_1/epsilon
Reshape_34*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
use_nesterov( *
_output_shapes

:@
Т
(LazyAdam_1/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/LazyAdamv/dense/bias/LazyAdam_1beta1_power_1/readbeta2_power_1/readLazyAdam_1/learning_rateLazyAdam_1/beta1LazyAdam_1/beta2LazyAdam_1/epsilon
Reshape_35*
_class
loc:@v/dense/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0
■
,LazyAdam_1/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/LazyAdamv/dense_1/kernel/LazyAdam_1beta1_power_1/readbeta2_power_1/readLazyAdam_1/learning_rateLazyAdam_1/beta1LazyAdam_1/beta2LazyAdam_1/epsilon
Reshape_36*
use_nesterov( *
_output_shapes

:@@*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel
­
*LazyAdam_1/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/LazyAdamv/dense_1/bias/LazyAdam_1beta1_power_1/readbeta2_power_1/readLazyAdam_1/learning_rateLazyAdam_1/beta1LazyAdam_1/beta2LazyAdam_1/epsilon
Reshape_37*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias*
use_nesterov( *
_output_shapes
:@
■
,LazyAdam_1/update_v/dense_2/kernel/ApplyAdam	ApplyAdamv/dense_2/kernelv/dense_2/kernel/LazyAdamv/dense_2/kernel/LazyAdam_1beta1_power_1/readbeta2_power_1/readLazyAdam_1/learning_rateLazyAdam_1/beta1LazyAdam_1/beta2LazyAdam_1/epsilon
Reshape_38*
use_nesterov( *
_output_shapes

:@*
use_locking( *
T0*#
_class
loc:@v/dense_2/kernel
­
*LazyAdam_1/update_v/dense_2/bias/ApplyAdam	ApplyAdamv/dense_2/biasv/dense_2/bias/LazyAdamv/dense_2/bias/LazyAdam_1beta1_power_1/readbeta2_power_1/readLazyAdam_1/learning_rateLazyAdam_1/beta1LazyAdam_1/beta2LazyAdam_1/epsilon
Reshape_39*
use_locking( *
T0*!
_class
loc:@v/dense_2/bias*
use_nesterov( *
_output_shapes
:
Ї
LazyAdam_1/mulMulbeta1_power_1/readLazyAdam_1/beta1)^LazyAdam_1/update_v/dense/bias/ApplyAdam+^LazyAdam_1/update_v/dense/kernel/ApplyAdam+^LazyAdam_1/update_v/dense_1/bias/ApplyAdam-^LazyAdam_1/update_v/dense_1/kernel/ApplyAdam+^LazyAdam_1/update_v/dense_2/bias/ApplyAdam-^LazyAdam_1/update_v/dense_2/kernel/ApplyAdam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Ц
LazyAdam_1/AssignAssignbeta1_power_1LazyAdam_1/mul*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
Ј
LazyAdam_1/mul_1Mulbeta2_power_1/readLazyAdam_1/beta2)^LazyAdam_1/update_v/dense/bias/ApplyAdam+^LazyAdam_1/update_v/dense/kernel/ApplyAdam+^LazyAdam_1/update_v/dense_1/bias/ApplyAdam-^LazyAdam_1/update_v/dense_1/kernel/ApplyAdam+^LazyAdam_1/update_v/dense_2/bias/ApplyAdam-^LazyAdam_1/update_v/dense_2/kernel/ApplyAdam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Е
LazyAdam_1/Assign_1Assignbeta2_power_1LazyAdam_1/mul_1*
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
╠

LazyAdam_1NoOp^LazyAdam_1/Assign^LazyAdam_1/Assign_1)^LazyAdam_1/update_v/dense/bias/ApplyAdam+^LazyAdam_1/update_v/dense/kernel/ApplyAdam+^LazyAdam_1/update_v/dense_1/bias/ApplyAdam-^LazyAdam_1/update_v/dense_1/kernel/ApplyAdam+^LazyAdam_1/update_v/dense_2/bias/ApplyAdam-^LazyAdam_1/update_v/dense_2/kernel/ApplyAdam
p
Reshape_40/shapeConst^LazyAdam_1*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_40Reshapev/dense/kernel/readReshape_40/shape*
_output_shapes	
:ђ*
T0*
Tshape0
p
Reshape_41/shapeConst^LazyAdam_1*
valueB:
         *
dtype0*
_output_shapes
:
m

Reshape_41Reshapev/dense/bias/readReshape_41/shape*
T0*
Tshape0*
_output_shapes
:@
p
Reshape_42/shapeConst^LazyAdam_1*
dtype0*
_output_shapes
:*
valueB:
         
r

Reshape_42Reshapev/dense_1/kernel/readReshape_42/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
p
Reshape_43/shapeConst^LazyAdam_1*
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
p
Reshape_44/shapeConst^LazyAdam_1*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_44Reshapev/dense_2/kernel/readReshape_44/shape*
_output_shapes
:@*
T0*
Tshape0
p
Reshape_45/shapeConst^LazyAdam_1*
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
\
concat_3/axisConst^LazyAdam_1*
value	B : *
dtype0*
_output_shapes
: 
д
concat_3ConcatV2
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45concat_3/axis*
_output_shapes	
:┴%*

Tidx0*
T0*
N
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
u
Const_7Const^LazyAdam_1*-
value$B""   @      @   @      *
dtype0*
_output_shapes
:
`
split_3/split_dimConst^LazyAdam_1*
value	B : *
dtype0*
_output_shapes
: 
І
split_3SplitVPyFunc_3Const_7split_3/split_dim*
T0*

Tlen0*
	num_split*,
_output_shapes
::::::
n
Reshape_46/shapeConst^LazyAdam_1*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_46Reshapesplit_3Reshape_46/shape*
_output_shapes

:@*
T0*
Tshape0
g
Reshape_47/shapeConst^LazyAdam_1*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_47Reshape	split_3:1Reshape_47/shape*
Tshape0*
_output_shapes
:@*
T0
n
Reshape_48/shapeConst^LazyAdam_1*
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
g
Reshape_49/shapeConst^LazyAdam_1*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_49Reshape	split_3:3Reshape_49/shape*
Tshape0*
_output_shapes
:@*
T0
n
Reshape_50/shapeConst^LazyAdam_1*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_50Reshape	split_3:4Reshape_50/shape*
T0*
Tshape0*
_output_shapes

:@
g
Reshape_51/shapeConst^LazyAdam_1*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_51Reshape	split_3:5Reshape_51/shape*
T0*
Tshape0*
_output_shapes
:
Б
Assign_7Assignv/dense/kernel
Reshape_46*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Џ
Assign_8Assignv/dense/bias
Reshape_47*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
Д
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
Reshape_49*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
е
	Assign_11Assignv/dense_2/kernel
Reshape_50*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
а
	Assign_12Assignv/dense_2/bias
Reshape_51*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
f
group_deps_2NoOp
^Assign_10
^Assign_11
^Assign_12	^Assign_7	^Assign_8	^Assign_9^LazyAdam_1
0
group_deps_3NoOp^LazyAdam_1^group_deps_2
б

initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta2_power/Assign^beta2_power_1/Assign^pi/dense/bias/Assign^pi/dense/bias/LazyAdam/Assign ^pi/dense/bias/LazyAdam_1/Assign^pi/dense/kernel/Assign ^pi/dense/kernel/LazyAdam/Assign"^pi/dense/kernel/LazyAdam_1/Assign^pi/dense_1/bias/Assign ^pi/dense_1/bias/LazyAdam/Assign"^pi/dense_1/bias/LazyAdam_1/Assign^pi/dense_1/kernel/Assign"^pi/dense_1/kernel/LazyAdam/Assign$^pi/dense_1/kernel/LazyAdam_1/Assign^pi/dense_2/bias/Assign ^pi/dense_2/bias/LazyAdam/Assign"^pi/dense_2/bias/LazyAdam_1/Assign^pi/dense_2/kernel/Assign"^pi/dense_2/kernel/LazyAdam/Assign$^pi/dense_2/kernel/LazyAdam_1/Assign^pi/log_std/Assign^pi/log_std/LazyAdam/Assign^pi/log_std/LazyAdam_1/Assign^v/dense/bias/Assign^v/dense/bias/LazyAdam/Assign^v/dense/bias/LazyAdam_1/Assign^v/dense/kernel/Assign^v/dense/kernel/LazyAdam/Assign!^v/dense/kernel/LazyAdam_1/Assign^v/dense_1/bias/Assign^v/dense_1/bias/LazyAdam/Assign!^v/dense_1/bias/LazyAdam_1/Assign^v/dense_1/kernel/Assign!^v/dense_1/kernel/LazyAdam/Assign#^v/dense_1/kernel/LazyAdam_1/Assign^v/dense_2/bias/Assign^v/dense_2/bias/LazyAdam/Assign!^v/dense_2/bias/LazyAdam_1/Assign^v/dense_2/kernel/Assign!^v/dense_2/kernel/LazyAdam/Assign#^v/dense_2/kernel/LazyAdam_1/Assign
c
Reshape_52/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_52Reshapepi/dense/kernel/readReshape_52/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_53/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
n

Reshape_53Reshapepi/dense/bias/readReshape_53/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_54/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_54Reshapepi/dense_1/kernel/readReshape_54/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_55/shapeConst*
valueB:
         *
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
         *
dtype0*
_output_shapes
:
s

Reshape_56Reshapepi/dense_2/kernel/readReshape_56/shape*
T0*
Tshape0*
_output_shapes	
:ђ
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
:
c
Reshape_58/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
k

Reshape_58Reshapepi/log_std/readReshape_58/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_59/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_59Reshapev/dense/kernel/readReshape_59/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_60/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
m

Reshape_60Reshapev/dense/bias/readReshape_60/shape*
T0*
Tshape0*
_output_shapes
:@
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
:ђ 
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
valueB:
         *
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
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_64Reshapev/dense_2/bias/readReshape_64/shape*
_output_shapes
:*
T0*
Tshape0
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
l

Reshape_66Reshapebeta2_power/readReshape_66/shape*
_output_shapes
:*
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

Reshape_67Reshapepi/dense/kernel/LazyAdam/readReshape_67/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_68/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
|

Reshape_68Reshapepi/dense/kernel/LazyAdam_1/readReshape_68/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_69/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_69Reshapepi/dense/bias/LazyAdam/readReshape_69/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_70/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
y

Reshape_70Reshapepi/dense/bias/LazyAdam_1/readReshape_70/shape*
_output_shapes
:@*
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

Reshape_71Reshapepi/dense_1/kernel/LazyAdam/readReshape_71/shape*
Tshape0*
_output_shapes	
:ђ *
T0
c
Reshape_72/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
~

Reshape_72Reshape!pi/dense_1/kernel/LazyAdam_1/readReshape_72/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_73/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
y

Reshape_73Reshapepi/dense_1/bias/LazyAdam/readReshape_73/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_74/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
{

Reshape_74Reshapepi/dense_1/bias/LazyAdam_1/readReshape_74/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_75/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
|

Reshape_75Reshapepi/dense_2/kernel/LazyAdam/readReshape_75/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_76/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
~

Reshape_76Reshape!pi/dense_2/kernel/LazyAdam_1/readReshape_76/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_77/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
y

Reshape_77Reshapepi/dense_2/bias/LazyAdam/readReshape_77/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_78/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
{

Reshape_78Reshapepi/dense_2/bias/LazyAdam_1/readReshape_78/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_79/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
t

Reshape_79Reshapepi/log_std/LazyAdam/readReshape_79/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_80/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
v

Reshape_80Reshapepi/log_std/LazyAdam_1/readReshape_80/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_81/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_81Reshapebeta1_power_1/readReshape_81/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_82/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_82Reshapebeta2_power_1/readReshape_82/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_83/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_83Reshapev/dense/kernel/LazyAdam/readReshape_83/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_84/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
{

Reshape_84Reshapev/dense/kernel/LazyAdam_1/readReshape_84/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_85/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
v

Reshape_85Reshapev/dense/bias/LazyAdam/readReshape_85/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_86/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
x

Reshape_86Reshapev/dense/bias/LazyAdam_1/readReshape_86/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_87/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
{

Reshape_87Reshapev/dense_1/kernel/LazyAdam/readReshape_87/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_88/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
}

Reshape_88Reshape v/dense_1/kernel/LazyAdam_1/readReshape_88/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_89/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_89Reshapev/dense_1/bias/LazyAdam/readReshape_89/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_90/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
z

Reshape_90Reshapev/dense_1/bias/LazyAdam_1/readReshape_90/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_91/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
z

Reshape_91Reshapev/dense_2/kernel/LazyAdam/readReshape_91/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_92/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
|

Reshape_92Reshape v/dense_2/kernel/LazyAdam_1/readReshape_92/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_93/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_93Reshapev/dense_2/bias/LazyAdam/readReshape_93/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_94/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
z

Reshape_94Reshapev/dense_2/bias/LazyAdam_1/readReshape_94/shape*
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
с
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
Reshape_92
Reshape_93
Reshape_94concat_4/axis*
T0*
N+*
_output_shapes

:МР*

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
ђ
Const_8Const*─
value║Bи+"г   @      @   ђ            @      @   @                  @   @         @   @   ђ   ђ                           @   @         @   @   @   @         *
dtype0*
_output_shapes
:+
S
split_4/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
б
split_4SplitVPyFunc_4Const_8split_4/split_dim*
T0*

Tlen0*
	num_split+*┬
_output_shapes»
г:::::::::::::::::::::::::::::::::::::::::::
a
Reshape_95/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_95Reshapesplit_4Reshape_95/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_96/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_96Reshape	split_4:1Reshape_96/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_97/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_97Reshape	split_4:2Reshape_97/shape*
_output_shapes

:@@*
T0*
Tshape0
Z
Reshape_98/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_98Reshape	split_4:3Reshape_98/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_99/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_99Reshape	split_4:4Reshape_99/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_100/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_100Reshape	split_4:5Reshape_100/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_101/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_101Reshape	split_4:6Reshape_101/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_102/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
k
Reshape_102Reshape	split_4:7Reshape_102/shape*
Tshape0*
_output_shapes

:@*
T0
[
Reshape_103/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
g
Reshape_103Reshape	split_4:8Reshape_103/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_104/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   @   
k
Reshape_104Reshape	split_4:9Reshape_104/shape*
_output_shapes

:@@*
T0*
Tshape0
[
Reshape_105/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_105Reshape
split_4:10Reshape_105/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_106/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_106Reshape
split_4:11Reshape_106/shape*
Tshape0*
_output_shapes

:@*
T0
[
Reshape_107/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_107Reshape
split_4:12Reshape_107/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_108/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_108Reshape
split_4:13Reshape_108/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_109/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_109Reshape
split_4:14Reshape_109/shape*
Tshape0*
_output_shapes
: *
T0
b
Reshape_110/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_110Reshape
split_4:15Reshape_110/shape*
_output_shapes

:@*
T0*
Tshape0
b
Reshape_111/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_111Reshape
split_4:16Reshape_111/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_112/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_112Reshape
split_4:17Reshape_112/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_113/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_113Reshape
split_4:18Reshape_113/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_114/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_114Reshape
split_4:19Reshape_114/shape*
_output_shapes

:@@*
T0*
Tshape0
b
Reshape_115/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_115Reshape
split_4:20Reshape_115/shape*
T0*
Tshape0*
_output_shapes

:@@
[
Reshape_116/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_116Reshape
split_4:21Reshape_116/shape*
_output_shapes
:@*
T0*
Tshape0
[
Reshape_117/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_117Reshape
split_4:22Reshape_117/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_118/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
l
Reshape_118Reshape
split_4:23Reshape_118/shape*
Tshape0*
_output_shapes

:@*
T0
b
Reshape_119/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_119Reshape
split_4:24Reshape_119/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_120/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_120Reshape
split_4:25Reshape_120/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_121/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_121Reshape
split_4:26Reshape_121/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_122/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_122Reshape
split_4:27Reshape_122/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_123/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_123Reshape
split_4:28Reshape_123/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_124/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_124Reshape
split_4:29Reshape_124/shape*
Tshape0*
_output_shapes
: *
T0
T
Reshape_125/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_125Reshape
split_4:30Reshape_125/shape*
Tshape0*
_output_shapes
: *
T0
b
Reshape_126/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_126Reshape
split_4:31Reshape_126/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_127/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
l
Reshape_127Reshape
split_4:32Reshape_127/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_128/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_128Reshape
split_4:33Reshape_128/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_129/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_129Reshape
split_4:34Reshape_129/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_130/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_130Reshape
split_4:35Reshape_130/shape*
_output_shapes

:@@*
T0*
Tshape0
b
Reshape_131/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_131Reshape
split_4:36Reshape_131/shape*
Tshape0*
_output_shapes

:@@*
T0
[
Reshape_132/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_132Reshape
split_4:37Reshape_132/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_133/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_133Reshape
split_4:38Reshape_133/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_134/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_134Reshape
split_4:39Reshape_134/shape*
Tshape0*
_output_shapes

:@*
T0
b
Reshape_135/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_135Reshape
split_4:40Reshape_135/shape*
Tshape0*
_output_shapes

:@*
T0
[
Reshape_136/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_136Reshape
split_4:41Reshape_136/shape*
Tshape0*
_output_shapes
:*
T0
[
Reshape_137/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_137Reshape
split_4:42Reshape_137/shape*
T0*
Tshape0*
_output_shapes
:
д
	Assign_13Assignpi/dense/kernel
Reshape_95*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
ъ
	Assign_14Assignpi/dense/bias
Reshape_96*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
ф
	Assign_15Assignpi/dense_1/kernel
Reshape_97*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
б
	Assign_16Assignpi/dense_1/bias
Reshape_98*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
ф
	Assign_17Assignpi/dense_2/kernel
Reshape_99*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel
Б
	Assign_18Assignpi/dense_2/biasReshape_100*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
Ў
	Assign_19Assign
pi/log_stdReshape_101*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
Ц
	Assign_20Assignv/dense/kernelReshape_102*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
Ю
	Assign_21Assignv/dense/biasReshape_103*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
Е
	Assign_22Assignv/dense_1/kernelReshape_104*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
А
	Assign_23Assignv/dense_1/biasReshape_105*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Е
	Assign_24Assignv/dense_2/kernelReshape_106*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
А
	Assign_25Assignv/dense_2/biasReshape_107*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ў
	Assign_26Assignbeta1_powerReshape_108*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Ў
	Assign_27Assignbeta2_powerReshape_109*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
░
	Assign_28Assignpi/dense/kernel/LazyAdamReshape_110*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
▓
	Assign_29Assignpi/dense/kernel/LazyAdam_1Reshape_111*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
е
	Assign_30Assignpi/dense/bias/LazyAdamReshape_112*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
ф
	Assign_31Assignpi/dense/bias/LazyAdam_1Reshape_113*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
┤
	Assign_32Assignpi/dense_1/kernel/LazyAdamReshape_114*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Х
	Assign_33Assignpi/dense_1/kernel/LazyAdam_1Reshape_115*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
г
	Assign_34Assignpi/dense_1/bias/LazyAdamReshape_116*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
«
	Assign_35Assignpi/dense_1/bias/LazyAdam_1Reshape_117*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
┤
	Assign_36Assignpi/dense_2/kernel/LazyAdamReshape_118*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Х
	Assign_37Assignpi/dense_2/kernel/LazyAdam_1Reshape_119*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
г
	Assign_38Assignpi/dense_2/bias/LazyAdamReshape_120*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
«
	Assign_39Assignpi/dense_2/bias/LazyAdam_1Reshape_121*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
б
	Assign_40Assignpi/log_std/LazyAdamReshape_122*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
ц
	Assign_41Assignpi/log_std/LazyAdam_1Reshape_123*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
џ
	Assign_42Assignbeta1_power_1Reshape_124*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
џ
	Assign_43Assignbeta2_power_1Reshape_125*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
«
	Assign_44Assignv/dense/kernel/LazyAdamReshape_126*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
░
	Assign_45Assignv/dense/kernel/LazyAdam_1Reshape_127*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
д
	Assign_46Assignv/dense/bias/LazyAdamReshape_128*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
е
	Assign_47Assignv/dense/bias/LazyAdam_1Reshape_129*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
▓
	Assign_48Assignv/dense_1/kernel/LazyAdamReshape_130*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
┤
	Assign_49Assignv/dense_1/kernel/LazyAdam_1Reshape_131*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ф
	Assign_50Assignv/dense_1/bias/LazyAdamReshape_132*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
г
	Assign_51Assignv/dense_1/bias/LazyAdam_1Reshape_133*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
▓
	Assign_52Assignv/dense_2/kernel/LazyAdamReshape_134*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
┤
	Assign_53Assignv/dense_2/kernel/LazyAdam_1Reshape_135*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
ф
	Assign_54Assignv/dense_2/bias/LazyAdamReshape_136*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
г
	Assign_55Assignv/dense_2/bias/LazyAdam_1Reshape_137*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
ў
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
^Assign_53
^Assign_54
^Assign_55
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
shape: *
dtype0*
_output_shapes
: 
ё
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_5728b6f50b0540cd882055a1190fcd24/part*
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
а
save/SaveV2/tensor_namesConst*М
value╔Bк+Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/LazyAdamBpi/dense/bias/LazyAdam_1Bpi/dense/kernelBpi/dense/kernel/LazyAdamBpi/dense/kernel/LazyAdam_1Bpi/dense_1/biasBpi/dense_1/bias/LazyAdamBpi/dense_1/bias/LazyAdam_1Bpi/dense_1/kernelBpi/dense_1/kernel/LazyAdamBpi/dense_1/kernel/LazyAdam_1Bpi/dense_2/biasBpi/dense_2/bias/LazyAdamBpi/dense_2/bias/LazyAdam_1Bpi/dense_2/kernelBpi/dense_2/kernel/LazyAdamBpi/dense_2/kernel/LazyAdam_1B
pi/log_stdBpi/log_std/LazyAdamBpi/log_std/LazyAdam_1Bv/dense/biasBv/dense/bias/LazyAdamBv/dense/bias/LazyAdam_1Bv/dense/kernelBv/dense/kernel/LazyAdamBv/dense/kernel/LazyAdam_1Bv/dense_1/biasBv/dense_1/bias/LazyAdamBv/dense_1/bias/LazyAdam_1Bv/dense_1/kernelBv/dense_1/kernel/LazyAdamBv/dense_1/kernel/LazyAdam_1Bv/dense_2/biasBv/dense_2/bias/LazyAdamBv/dense_2/bias/LazyAdam_1Bv/dense_2/kernelBv/dense_2/kernel/LazyAdamBv/dense_2/kernel/LazyAdam_1*
dtype0*
_output_shapes
:+
╣
save/SaveV2/shape_and_slicesConst*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:+
▄
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1pi/dense/biaspi/dense/bias/LazyAdampi/dense/bias/LazyAdam_1pi/dense/kernelpi/dense/kernel/LazyAdampi/dense/kernel/LazyAdam_1pi/dense_1/biaspi/dense_1/bias/LazyAdampi/dense_1/bias/LazyAdam_1pi/dense_1/kernelpi/dense_1/kernel/LazyAdampi/dense_1/kernel/LazyAdam_1pi/dense_2/biaspi/dense_2/bias/LazyAdampi/dense_2/bias/LazyAdam_1pi/dense_2/kernelpi/dense_2/kernel/LazyAdampi/dense_2/kernel/LazyAdam_1
pi/log_stdpi/log_std/LazyAdampi/log_std/LazyAdam_1v/dense/biasv/dense/bias/LazyAdamv/dense/bias/LazyAdam_1v/dense/kernelv/dense/kernel/LazyAdamv/dense/kernel/LazyAdam_1v/dense_1/biasv/dense_1/bias/LazyAdamv/dense_1/bias/LazyAdam_1v/dense_1/kernelv/dense_1/kernel/LazyAdamv/dense_1/kernel/LazyAdam_1v/dense_2/biasv/dense_2/bias/LazyAdamv/dense_2/bias/LazyAdam_1v/dense_2/kernelv/dense_2/kernel/LazyAdamv/dense_2/kernel/LazyAdam_1*9
dtypes/
-2+
Љ
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ю
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
Б
save/RestoreV2/tensor_namesConst*М
value╔Bк+Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/LazyAdamBpi/dense/bias/LazyAdam_1Bpi/dense/kernelBpi/dense/kernel/LazyAdamBpi/dense/kernel/LazyAdam_1Bpi/dense_1/biasBpi/dense_1/bias/LazyAdamBpi/dense_1/bias/LazyAdam_1Bpi/dense_1/kernelBpi/dense_1/kernel/LazyAdamBpi/dense_1/kernel/LazyAdam_1Bpi/dense_2/biasBpi/dense_2/bias/LazyAdamBpi/dense_2/bias/LazyAdam_1Bpi/dense_2/kernelBpi/dense_2/kernel/LazyAdamBpi/dense_2/kernel/LazyAdam_1B
pi/log_stdBpi/log_std/LazyAdamBpi/log_std/LazyAdam_1Bv/dense/biasBv/dense/bias/LazyAdamBv/dense/bias/LazyAdam_1Bv/dense/kernelBv/dense/kernel/LazyAdamBv/dense/kernel/LazyAdam_1Bv/dense_1/biasBv/dense_1/bias/LazyAdamBv/dense_1/bias/LazyAdam_1Bv/dense_1/kernelBv/dense_1/kernel/LazyAdamBv/dense_1/kernel/LazyAdam_1Bv/dense_2/biasBv/dense_2/bias/LazyAdamBv/dense_2/bias/LazyAdam_1Bv/dense_2/kernelBv/dense_2/kernel/LazyAdamBv/dense_2/kernel/LazyAdam_1*
dtype0*
_output_shapes
:+
╝
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:+*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*┬
_output_shapes»
г:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+
ъ
save/AssignAssignbeta1_powersave/RestoreV2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Б
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
б
save/Assign_2Assignbeta2_powersave/RestoreV2:2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
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
:@
▒
save/Assign_5Assignpi/dense/bias/LazyAdamsave/RestoreV2:5*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
│
save/Assign_6Assignpi/dense/bias/LazyAdam_1save/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
░
save/Assign_7Assignpi/dense/kernelsave/RestoreV2:7*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
╣
save/Assign_8Assignpi/dense/kernel/LazyAdamsave/RestoreV2:8*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
╗
save/Assign_9Assignpi/dense/kernel/LazyAdam_1save/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
«
save/Assign_10Assignpi/dense_1/biassave/RestoreV2:10*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
и
save/Assign_11Assignpi/dense_1/bias/LazyAdamsave/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
╣
save/Assign_12Assignpi/dense_1/bias/LazyAdam_1save/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
Х
save/Assign_13Assignpi/dense_1/kernelsave/RestoreV2:13*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
┐
save/Assign_14Assignpi/dense_1/kernel/LazyAdamsave/RestoreV2:14*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
┴
save/Assign_15Assignpi/dense_1/kernel/LazyAdam_1save/RestoreV2:15*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
«
save/Assign_16Assignpi/dense_2/biassave/RestoreV2:16*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
и
save/Assign_17Assignpi/dense_2/bias/LazyAdamsave/RestoreV2:17*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
╣
save/Assign_18Assignpi/dense_2/bias/LazyAdam_1save/RestoreV2:18*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Х
save/Assign_19Assignpi/dense_2/kernelsave/RestoreV2:19*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┐
save/Assign_20Assignpi/dense_2/kernel/LazyAdamsave/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┴
save/Assign_21Assignpi/dense_2/kernel/LazyAdam_1save/RestoreV2:21*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ц
save/Assign_22Assign
pi/log_stdsave/RestoreV2:22*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
Г
save/Assign_23Assignpi/log_std/LazyAdamsave/RestoreV2:23*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
»
save/Assign_24Assignpi/log_std/LazyAdam_1save/RestoreV2:24*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
е
save/Assign_25Assignv/dense/biassave/RestoreV2:25*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
▒
save/Assign_26Assignv/dense/bias/LazyAdamsave/RestoreV2:26*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias
│
save/Assign_27Assignv/dense/bias/LazyAdam_1save/RestoreV2:27*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
░
save/Assign_28Assignv/dense/kernelsave/RestoreV2:28*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
╣
save/Assign_29Assignv/dense/kernel/LazyAdamsave/RestoreV2:29*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
╗
save/Assign_30Assignv/dense/kernel/LazyAdam_1save/RestoreV2:30*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
г
save/Assign_31Assignv/dense_1/biassave/RestoreV2:31*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
х
save/Assign_32Assignv/dense_1/bias/LazyAdamsave/RestoreV2:32*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
и
save/Assign_33Assignv/dense_1/bias/LazyAdam_1save/RestoreV2:33*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
┤
save/Assign_34Assignv/dense_1/kernelsave/RestoreV2:34*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
й
save/Assign_35Assignv/dense_1/kernel/LazyAdamsave/RestoreV2:35*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
┐
save/Assign_36Assignv/dense_1/kernel/LazyAdam_1save/RestoreV2:36*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
г
save/Assign_37Assignv/dense_2/biassave/RestoreV2:37*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
х
save/Assign_38Assignv/dense_2/bias/LazyAdamsave/RestoreV2:38*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
и
save/Assign_39Assignv/dense_2/bias/LazyAdam_1save/RestoreV2:39*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
┤
save/Assign_40Assignv/dense_2/kernelsave/RestoreV2:40*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
й
save/Assign_41Assignv/dense_2/kernel/LazyAdamsave/RestoreV2:41*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┐
save/Assign_42Assignv/dense_2/kernel/LazyAdam_1save/RestoreV2:42*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ж
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
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
shape: *
dtype0*
_output_shapes
: 
є
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_8b7d3826582e4765b1262ac89da96c2b/part*
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
б
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:+*М
value╔Bк+Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/LazyAdamBpi/dense/bias/LazyAdam_1Bpi/dense/kernelBpi/dense/kernel/LazyAdamBpi/dense/kernel/LazyAdam_1Bpi/dense_1/biasBpi/dense_1/bias/LazyAdamBpi/dense_1/bias/LazyAdam_1Bpi/dense_1/kernelBpi/dense_1/kernel/LazyAdamBpi/dense_1/kernel/LazyAdam_1Bpi/dense_2/biasBpi/dense_2/bias/LazyAdamBpi/dense_2/bias/LazyAdam_1Bpi/dense_2/kernelBpi/dense_2/kernel/LazyAdamBpi/dense_2/kernel/LazyAdam_1B
pi/log_stdBpi/log_std/LazyAdamBpi/log_std/LazyAdam_1Bv/dense/biasBv/dense/bias/LazyAdamBv/dense/bias/LazyAdam_1Bv/dense/kernelBv/dense/kernel/LazyAdamBv/dense/kernel/LazyAdam_1Bv/dense_1/biasBv/dense_1/bias/LazyAdamBv/dense_1/bias/LazyAdam_1Bv/dense_1/kernelBv/dense_1/kernel/LazyAdamBv/dense_1/kernel/LazyAdam_1Bv/dense_2/biasBv/dense_2/bias/LazyAdamBv/dense_2/bias/LazyAdam_1Bv/dense_2/kernelBv/dense_2/kernel/LazyAdamBv/dense_2/kernel/LazyAdam_1
╗
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:+*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
С
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1pi/dense/biaspi/dense/bias/LazyAdampi/dense/bias/LazyAdam_1pi/dense/kernelpi/dense/kernel/LazyAdampi/dense/kernel/LazyAdam_1pi/dense_1/biaspi/dense_1/bias/LazyAdampi/dense_1/bias/LazyAdam_1pi/dense_1/kernelpi/dense_1/kernel/LazyAdampi/dense_1/kernel/LazyAdam_1pi/dense_2/biaspi/dense_2/bias/LazyAdampi/dense_2/bias/LazyAdam_1pi/dense_2/kernelpi/dense_2/kernel/LazyAdampi/dense_2/kernel/LazyAdam_1
pi/log_stdpi/log_std/LazyAdampi/log_std/LazyAdam_1v/dense/biasv/dense/bias/LazyAdamv/dense/bias/LazyAdam_1v/dense/kernelv/dense/kernel/LazyAdamv/dense/kernel/LazyAdam_1v/dense_1/biasv/dense_1/bias/LazyAdamv/dense_1/bias/LazyAdam_1v/dense_1/kernelv/dense_1/kernel/LazyAdamv/dense_1/kernel/LazyAdam_1v/dense_2/biasv/dense_2/bias/LazyAdamv/dense_2/bias/LazyAdam_1v/dense_2/kernelv/dense_2/kernel/LazyAdamv/dense_2/kernel/LazyAdam_1*9
dtypes/
-2+
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
Ц
save_1/RestoreV2/tensor_namesConst*М
value╔Bк+Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/LazyAdamBpi/dense/bias/LazyAdam_1Bpi/dense/kernelBpi/dense/kernel/LazyAdamBpi/dense/kernel/LazyAdam_1Bpi/dense_1/biasBpi/dense_1/bias/LazyAdamBpi/dense_1/bias/LazyAdam_1Bpi/dense_1/kernelBpi/dense_1/kernel/LazyAdamBpi/dense_1/kernel/LazyAdam_1Bpi/dense_2/biasBpi/dense_2/bias/LazyAdamBpi/dense_2/bias/LazyAdam_1Bpi/dense_2/kernelBpi/dense_2/kernel/LazyAdamBpi/dense_2/kernel/LazyAdam_1B
pi/log_stdBpi/log_std/LazyAdamBpi/log_std/LazyAdam_1Bv/dense/biasBv/dense/bias/LazyAdamBv/dense/bias/LazyAdam_1Bv/dense/kernelBv/dense/kernel/LazyAdamBv/dense/kernel/LazyAdam_1Bv/dense_1/biasBv/dense_1/bias/LazyAdamBv/dense_1/bias/LazyAdam_1Bv/dense_1/kernelBv/dense_1/kernel/LazyAdamBv/dense_1/kernel/LazyAdam_1Bv/dense_2/biasBv/dense_2/bias/LazyAdamBv/dense_2/bias/LazyAdam_1Bv/dense_2/kernelBv/dense_2/kernel/LazyAdamBv/dense_2/kernel/LazyAdam_1*
dtype0*
_output_shapes
:+
Й
!save_1/RestoreV2/shape_and_slicesConst*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:+
ь
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*┬
_output_shapes»
г:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+
б
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Д
save_1/Assign_1Assignbeta1_power_1save_1/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
д
save_1/Assign_2Assignbeta2_powersave_1/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Д
save_1/Assign_3Assignbeta2_power_1save_1/RestoreV2:3*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
г
save_1/Assign_4Assignpi/dense/biassave_1/RestoreV2:4*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
х
save_1/Assign_5Assignpi/dense/bias/LazyAdamsave_1/RestoreV2:5*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
и
save_1/Assign_6Assignpi/dense/bias/LazyAdam_1save_1/RestoreV2:6*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias
┤
save_1/Assign_7Assignpi/dense/kernelsave_1/RestoreV2:7*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
й
save_1/Assign_8Assignpi/dense/kernel/LazyAdamsave_1/RestoreV2:8*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
┐
save_1/Assign_9Assignpi/dense/kernel/LazyAdam_1save_1/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
▓
save_1/Assign_10Assignpi/dense_1/biassave_1/RestoreV2:10*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╗
save_1/Assign_11Assignpi/dense_1/bias/LazyAdamsave_1/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
й
save_1/Assign_12Assignpi/dense_1/bias/LazyAdam_1save_1/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
║
save_1/Assign_13Assignpi/dense_1/kernelsave_1/RestoreV2:13*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
├
save_1/Assign_14Assignpi/dense_1/kernel/LazyAdamsave_1/RestoreV2:14*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
┼
save_1/Assign_15Assignpi/dense_1/kernel/LazyAdam_1save_1/RestoreV2:15*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(
▓
save_1/Assign_16Assignpi/dense_2/biassave_1/RestoreV2:16*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
╗
save_1/Assign_17Assignpi/dense_2/bias/LazyAdamsave_1/RestoreV2:17*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
й
save_1/Assign_18Assignpi/dense_2/bias/LazyAdam_1save_1/RestoreV2:18*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
║
save_1/Assign_19Assignpi/dense_2/kernelsave_1/RestoreV2:19*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
├
save_1/Assign_20Assignpi/dense_2/kernel/LazyAdamsave_1/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┼
save_1/Assign_21Assignpi/dense_2/kernel/LazyAdam_1save_1/RestoreV2:21*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
е
save_1/Assign_22Assign
pi/log_stdsave_1/RestoreV2:22*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
▒
save_1/Assign_23Assignpi/log_std/LazyAdamsave_1/RestoreV2:23*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:
│
save_1/Assign_24Assignpi/log_std/LazyAdam_1save_1/RestoreV2:24*
T0*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(
г
save_1/Assign_25Assignv/dense/biassave_1/RestoreV2:25*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
х
save_1/Assign_26Assignv/dense/bias/LazyAdamsave_1/RestoreV2:26*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
и
save_1/Assign_27Assignv/dense/bias/LazyAdam_1save_1/RestoreV2:27*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
┤
save_1/Assign_28Assignv/dense/kernelsave_1/RestoreV2:28*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
й
save_1/Assign_29Assignv/dense/kernel/LazyAdamsave_1/RestoreV2:29*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel
┐
save_1/Assign_30Assignv/dense/kernel/LazyAdam_1save_1/RestoreV2:30*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
░
save_1/Assign_31Assignv/dense_1/biassave_1/RestoreV2:31*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╣
save_1/Assign_32Assignv/dense_1/bias/LazyAdamsave_1/RestoreV2:32*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
╗
save_1/Assign_33Assignv/dense_1/bias/LazyAdam_1save_1/RestoreV2:33*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
И
save_1/Assign_34Assignv/dense_1/kernelsave_1/RestoreV2:34*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
┴
save_1/Assign_35Assignv/dense_1/kernel/LazyAdamsave_1/RestoreV2:35*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
├
save_1/Assign_36Assignv/dense_1/kernel/LazyAdam_1save_1/RestoreV2:36*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
░
save_1/Assign_37Assignv/dense_2/biassave_1/RestoreV2:37*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
╣
save_1/Assign_38Assignv/dense_2/bias/LazyAdamsave_1/RestoreV2:38*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
╗
save_1/Assign_39Assignv/dense_2/bias/LazyAdam_1save_1/RestoreV2:39*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
И
save_1/Assign_40Assignv/dense_2/kernelsave_1/RestoreV2:40*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┴
save_1/Assign_41Assignv/dense_2/kernel/LazyAdamsave_1/RestoreV2:41*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
├
save_1/Assign_42Assignv/dense_2/kernel/LazyAdam_1save_1/RestoreV2:42*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
┴
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"Г
trainable_variablesЋњ
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
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08"$
train_op

LazyAdam

LazyAdam_1"└+
	variables▓+»+
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
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
ї
pi/dense/kernel/LazyAdam:0pi/dense/kernel/LazyAdam/Assignpi/dense/kernel/LazyAdam/read:02,pi/dense/kernel/LazyAdam/Initializer/zeros:0
ћ
pi/dense/kernel/LazyAdam_1:0!pi/dense/kernel/LazyAdam_1/Assign!pi/dense/kernel/LazyAdam_1/read:02.pi/dense/kernel/LazyAdam_1/Initializer/zeros:0
ё
pi/dense/bias/LazyAdam:0pi/dense/bias/LazyAdam/Assignpi/dense/bias/LazyAdam/read:02*pi/dense/bias/LazyAdam/Initializer/zeros:0
ї
pi/dense/bias/LazyAdam_1:0pi/dense/bias/LazyAdam_1/Assignpi/dense/bias/LazyAdam_1/read:02,pi/dense/bias/LazyAdam_1/Initializer/zeros:0
ћ
pi/dense_1/kernel/LazyAdam:0!pi/dense_1/kernel/LazyAdam/Assign!pi/dense_1/kernel/LazyAdam/read:02.pi/dense_1/kernel/LazyAdam/Initializer/zeros:0
ю
pi/dense_1/kernel/LazyAdam_1:0#pi/dense_1/kernel/LazyAdam_1/Assign#pi/dense_1/kernel/LazyAdam_1/read:020pi/dense_1/kernel/LazyAdam_1/Initializer/zeros:0
ї
pi/dense_1/bias/LazyAdam:0pi/dense_1/bias/LazyAdam/Assignpi/dense_1/bias/LazyAdam/read:02,pi/dense_1/bias/LazyAdam/Initializer/zeros:0
ћ
pi/dense_1/bias/LazyAdam_1:0!pi/dense_1/bias/LazyAdam_1/Assign!pi/dense_1/bias/LazyAdam_1/read:02.pi/dense_1/bias/LazyAdam_1/Initializer/zeros:0
ћ
pi/dense_2/kernel/LazyAdam:0!pi/dense_2/kernel/LazyAdam/Assign!pi/dense_2/kernel/LazyAdam/read:02.pi/dense_2/kernel/LazyAdam/Initializer/zeros:0
ю
pi/dense_2/kernel/LazyAdam_1:0#pi/dense_2/kernel/LazyAdam_1/Assign#pi/dense_2/kernel/LazyAdam_1/read:020pi/dense_2/kernel/LazyAdam_1/Initializer/zeros:0
ї
pi/dense_2/bias/LazyAdam:0pi/dense_2/bias/LazyAdam/Assignpi/dense_2/bias/LazyAdam/read:02,pi/dense_2/bias/LazyAdam/Initializer/zeros:0
ћ
pi/dense_2/bias/LazyAdam_1:0!pi/dense_2/bias/LazyAdam_1/Assign!pi/dense_2/bias/LazyAdam_1/read:02.pi/dense_2/bias/LazyAdam_1/Initializer/zeros:0
x
pi/log_std/LazyAdam:0pi/log_std/LazyAdam/Assignpi/log_std/LazyAdam/read:02'pi/log_std/LazyAdam/Initializer/zeros:0
ђ
pi/log_std/LazyAdam_1:0pi/log_std/LazyAdam_1/Assignpi/log_std/LazyAdam_1/read:02)pi/log_std/LazyAdam_1/Initializer/zeros:0
\
beta1_power_1:0beta1_power_1/Assignbeta1_power_1/read:02beta1_power_1/initial_value:0
\
beta2_power_1:0beta2_power_1/Assignbeta2_power_1/read:02beta2_power_1/initial_value:0
ѕ
v/dense/kernel/LazyAdam:0v/dense/kernel/LazyAdam/Assignv/dense/kernel/LazyAdam/read:02+v/dense/kernel/LazyAdam/Initializer/zeros:0
љ
v/dense/kernel/LazyAdam_1:0 v/dense/kernel/LazyAdam_1/Assign v/dense/kernel/LazyAdam_1/read:02-v/dense/kernel/LazyAdam_1/Initializer/zeros:0
ђ
v/dense/bias/LazyAdam:0v/dense/bias/LazyAdam/Assignv/dense/bias/LazyAdam/read:02)v/dense/bias/LazyAdam/Initializer/zeros:0
ѕ
v/dense/bias/LazyAdam_1:0v/dense/bias/LazyAdam_1/Assignv/dense/bias/LazyAdam_1/read:02+v/dense/bias/LazyAdam_1/Initializer/zeros:0
љ
v/dense_1/kernel/LazyAdam:0 v/dense_1/kernel/LazyAdam/Assign v/dense_1/kernel/LazyAdam/read:02-v/dense_1/kernel/LazyAdam/Initializer/zeros:0
ў
v/dense_1/kernel/LazyAdam_1:0"v/dense_1/kernel/LazyAdam_1/Assign"v/dense_1/kernel/LazyAdam_1/read:02/v/dense_1/kernel/LazyAdam_1/Initializer/zeros:0
ѕ
v/dense_1/bias/LazyAdam:0v/dense_1/bias/LazyAdam/Assignv/dense_1/bias/LazyAdam/read:02+v/dense_1/bias/LazyAdam/Initializer/zeros:0
љ
v/dense_1/bias/LazyAdam_1:0 v/dense_1/bias/LazyAdam_1/Assign v/dense_1/bias/LazyAdam_1/read:02-v/dense_1/bias/LazyAdam_1/Initializer/zeros:0
љ
v/dense_2/kernel/LazyAdam:0 v/dense_2/kernel/LazyAdam/Assign v/dense_2/kernel/LazyAdam/read:02-v/dense_2/kernel/LazyAdam/Initializer/zeros:0
ў
v/dense_2/kernel/LazyAdam_1:0"v/dense_2/kernel/LazyAdam_1/Assign"v/dense_2/kernel/LazyAdam_1/read:02/v/dense_2/kernel/LazyAdam_1/Initializer/zeros:0
ѕ
v/dense_2/bias/LazyAdam:0v/dense_2/bias/LazyAdam/Assignv/dense_2/bias/LazyAdam/read:02+v/dense_2/bias/LazyAdam/Initializer/zeros:0
љ
v/dense_2/bias/LazyAdam_1:0 v/dense_2/bias/LazyAdam_1/Assign v/dense_2/bias/LazyAdam_1/read:02-v/dense_2/bias/LazyAdam_1/Initializer/zeros:0*Д
serving_defaultЊ
)
x$
Placeholder:0         #
v
v/Squeeze:0         %
pi
pi/add:0         tensorflow/serving/predict