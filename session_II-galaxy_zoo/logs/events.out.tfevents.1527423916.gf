       �K"	   ���Abrain.Event:2�vN!w*      �wa	j����A"�T
\
W/initial_valueConst*
valueB*���>*
dtype0*
_output_shapes
:
m
W
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
�
W/AssignAssignWW/initial_value*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class

loc:@W
P
W/readIdentityW*
T0*
_class

loc:@W*
_output_shapes
:
\
b/initial_valueConst*
dtype0*
_output_shapes
:*
valueB*����
m
b
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
b/AssignAssignbb/initial_value*
_class

loc:@b*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
P
b/readIdentityb*
T0*
_class

loc:@b*
_output_shapes
:
F
xPlaceholder*
shape:*
dtype0*
_output_shapes
:
8
mulMulW/readx*
T0*
_output_shapes
:
:
addAddmulb/read*
T0*
_output_shapes
:
P
PlaceholderPlaceholder*
shape:*
dtype0*
_output_shapes
:
?
subSubaddPlaceholder*
T0*
_output_shapes
:
8
SquareSquaresub*
_output_shapes
:*
T0
5
RankRankSquare*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:���������*

Tidx0
W
SumSumSquarerange*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
F
lossScalarSummary	loss/tagsSum*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
g
gradients/Sum_grad/ShapeShapeSquare*
out_type0*#
_output_shapes
:���������*
T0
�
gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
out_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: *
T0
�
gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*#
_output_shapes
:���������*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
�
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������
�
gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
T0*
out_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:
�
gradients/Sum_grad/range/startConst*
value	B : *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/range/deltaConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������*

Tidx0
�
gradients/Sum_grad/Fill/valueConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������
�
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N*#
_output_shapes
:���������
�
gradients/Sum_grad/Maximum/yConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������*
T0
�
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������
�
gradients/Sum_grad/ReshapeReshapegradients/Fill gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
�
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:
z
gradients/Square_grad/ConstConst^gradients/Sum_grad/Tile*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0*
_output_shapes
:
y
gradients/Square_grad/Mul_1Mulgradients/Sum_grad/Tilegradients/Square_grad/Mul*
_output_shapes
:*
T0
d
gradients/sub_grad/ShapeShapeadd*
T0*
out_type0*#
_output_shapes
:���������
n
gradients/sub_grad/Shape_1ShapePlaceholder*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
_output_shapes
:*
T0
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
_output_shapes
:*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:
d
gradients/add_grad/ShapeShapemul*#
_output_shapes
:���������*
T0*
out_type0
d
gradients/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
_output_shapes
:*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:
b
gradients/mul_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
d
gradients/mul_grad/Shape_1Shapex*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
p
gradients/mul_grad/MulMul+gradients/add_grad/tuple/control_dependencyx*
T0*
_output_shapes
:
�
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
w
gradients/mul_grad/Mul_1MulW/read+gradients/add_grad/tuple/control_dependency*
_output_shapes
:*
T0
�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*
_output_shapes
:
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
_output_shapes
:
b
GradientDescent/learning_rateConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
�
-GradientDescent/update_W/ApplyGradientDescentApplyGradientDescentWGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
use_locking( *
T0*
_class

loc:@W*
_output_shapes
:
�
-GradientDescent/update_b/ApplyGradientDescentApplyGradientDescentbGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class

loc:@b
w
GradientDescentNoOp.^GradientDescent/update_W/ApplyGradientDescent.^GradientDescent/update_b/ApplyGradientDescent
I
Merge/MergeSummaryMergeSummaryloss*
N*
_output_shapes
: 
"
initNoOp	^W/Assign	^b/Assign"��NW�3      ��ol	����AJ�g
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyGradientDescent
var"T�

alpha"T

delta"T
out"T�" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
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
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
.
Identity

input"T
output"T"	
Ttype
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
8
MergeSummary
inputs*N
summary"
Nint(0
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
1
Square
x"T
y"T"
Ttype:

2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
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
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.7.02unknown�T
\
W/initial_valueConst*
valueB*���>*
dtype0*
_output_shapes
:
m
W
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
�
W/AssignAssignWW/initial_value*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class

loc:@W
P
W/readIdentityW*
T0*
_class

loc:@W*
_output_shapes
:
\
b/initial_valueConst*
valueB*����*
dtype0*
_output_shapes
:
m
b
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
b/AssignAssignbb/initial_value*
T0*
_class

loc:@b*
validate_shape(*
_output_shapes
:*
use_locking(
P
b/readIdentityb*
_class

loc:@b*
_output_shapes
:*
T0
F
xPlaceholder*
shape:*
dtype0*
_output_shapes
:
8
mulMulW/readx*
T0*
_output_shapes
:
:
addAddmulb/read*
T0*
_output_shapes
:
P
PlaceholderPlaceholder*
dtype0*
_output_shapes
:*
shape:
?
subSubaddPlaceholder*
_output_shapes
:*
T0
8
SquareSquaresub*
T0*
_output_shapes
:
5
RankRankSquare*
T0*
_output_shapes
: 
M
range/startConst*
dtype0*
_output_shapes
: *
value	B : 
M
range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:���������*

Tidx0
W
SumSumSquarerange*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
N
	loss/tagsConst*
_output_shapes
: *
valueB
 Bloss*
dtype0
F
lossScalarSummary	loss/tagsSum*
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
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
g
gradients/Sum_grad/ShapeShapeSquare*#
_output_shapes
:���������*
T0*
out_type0
�
gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
T0*
out_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
�
gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*#
_output_shapes
:���������*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
�
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������
�
gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
T0*
out_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:
�
gradients/Sum_grad/range/startConst*
value	B : *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/range/deltaConst*
_output_shapes
: *
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0
�
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*#
_output_shapes
:���������*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
�
gradients/Sum_grad/Fill/valueConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������
�
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*#
_output_shapes
:���������*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N
�
gradients/Sum_grad/Maximum/yConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������
�
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:���������
�
gradients/Sum_grad/ReshapeReshapegradients/Fill gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
�
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
_output_shapes
:*

Tmultiples0*
T0
z
gradients/Square_grad/ConstConst^gradients/Sum_grad/Tile*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
_output_shapes
:*
T0
y
gradients/Square_grad/Mul_1Mulgradients/Sum_grad/Tilegradients/Square_grad/Mul*
_output_shapes
:*
T0
d
gradients/sub_grad/ShapeShapeadd*
T0*
out_type0*#
_output_shapes
:���������
n
gradients/sub_grad/Shape_1ShapePlaceholder*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:*
T0
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:*
T0
d
gradients/add_grad/ShapeShapemul*
T0*
out_type0*#
_output_shapes
:���������
d
gradients/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*
_output_shapes
:
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:
b
gradients/mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
d
gradients/mul_grad/Shape_1Shapex*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
p
gradients/mul_grad/MulMul+gradients/add_grad/tuple/control_dependencyx*
T0*
_output_shapes
:
�
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0
w
gradients/mul_grad/Mul_1MulW/read+gradients/add_grad/tuple/control_dependency*
_output_shapes
:*
T0
�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*
_output_shapes
:
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
_output_shapes
:*
T0
b
GradientDescent/learning_rateConst*
_output_shapes
: *
valueB
 *
�#<*
dtype0
�
-GradientDescent/update_W/ApplyGradientDescentApplyGradientDescentWGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
_output_shapes
:*
use_locking( *
T0*
_class

loc:@W
�
-GradientDescent/update_b/ApplyGradientDescentApplyGradientDescentbGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@b*
_output_shapes
:
w
GradientDescentNoOp.^GradientDescent/update_W/ApplyGradientDescent.^GradientDescent/update_b/ApplyGradientDescent
I
Merge/MergeSummaryMergeSummaryloss*
_output_shapes
: *
N
"
initNoOp	^W/Assign	^b/Assign""u
trainable_variables^\
,
W:0W/AssignW/read:02W/initial_value:0
,
b:0b/Assignb/read:02b/initial_value:0"
	summaries


loss:0"
train_op

GradientDescent"k
	variables^\
,
W:0W/AssignW/read:02W/initial_value:0
,
b:0b/Assignb/read:02b/initial_value:0:�I�       �K"	�6	���A*

loss�G�A)�v@       ��-	�D	���A*

loss���@}���       ��-	�P	���A*

loss���?S�bi       ��-	y]	���A*

lossƼ�?E>�*       ��-	bh	���A*

loss�½?�ǈ]       ��-	�r	���A*

loss �?�$^v       ��-	R}	���A*

lossq�?[��       ��-	L�	���A*

loss$$�?�	X�       ��-	�	���A*

lossz�?��K�       ��-	#�	���A	*

losszڧ?��       ��-	�	���A
*

lossrۣ?�&�       ��-	��	���A*

loss���?m��       ��-	��	���A*

loss�%�?C�,:       ��-	�
���A*

loss.n�?�pϯ       ��-	�*
���A*

loss%͔?8�l�       ��-	29
���A*

loss<B�?���       ��-	�Z
���A*

loss�̍?��3e       ��-	Af
���A*

loss�l�?����       ��-	�n
���A*

loss !�?C&v�       ��-	t
���A*

lossj�?���       ��-	Fz
���A*

losspŀ?���       ��-	c�
���A*

loss5i{?|�       ��-	<�
���A*

loss�lu?l�       ��-	��
���A*

loss�o?cF$2       ��-	S�
���A*

loss��i?JgD       ��-	��
���A*

losspOd?O��       ��-	V�
���A*

loss��^?��B�       ��-	��
���A*

loss��Y?���5       ��-	��
���A*

loss�cT?y�N       ��-	�
���A*

lossUO?+{O       ��-	��
���A*

lossfeJ?3k�Y       ��-	ȶ
���A*

lossؓE?S�       ��-	,�
���A *

loss��@?�B�       ��-	��
���A!*

loss!H<?�h��       ��-	*�
���A"*

loss��7?v�i$       ��-	G�
���A#*

loss^l3?sz��       ��-	)�
���A$*

loss�&/?�{�X       ��-	�
���A%*

lossM�*?� ��       ��-	Q�
���A&*

loss2�&?V�$       ��-	��
���A'*

loss��"?2R�"       ��-	��
���A(*

loss�?�J��       ��-	�
���A)*

lossjE?2ת+       ��-	��
���A**

loss�?D�t�       ��-	��
���A+*

lossB�?�!h�       ��-	��
���A,*

losspq?�Q	g       ��-	��
���A-*

loss?{OR�       ��-	)���A.*

loss��	?g0�s       ��-	�
���A/*

loss�^?ۂ-�       ��-	����A0*

loss�+?1*J�       ��-	����A1*

lossV ?�K+       ��-	����A2*

loss���>�)��       ��-	*���A3*

loss�>8���       ��-	�#���A4*

loss�<�>�$�       ��-	�(���A5*

loss���>�F       ��-	�-���A6*

lossA�>���|       ��-	�3���A7*

loss���>�$M�       ��-	a8���A8*

loss�X�>x�d4       ��-	�=���A9*

loss82�>�!&�       ��-	�B���A:*

loss+�>i�;       ��-	^H���A;*

losszB�>�x(V       ��-	#N���A<*

loss�w�>yXg�       ��-	�R���A=*

lossjʿ>4ܴ�       ��-	�W���A>*

lossz9�>�%JN       ��-	�]���A?*

lossbĶ>���\       ��-	�b���A@*

losstj�>�2>%       ��-	8h���AA*

loss+�>�\y       ��-	;n���AB*

loss��>L�k�       ��-	*t���AC*

lossH��>�W�r       ��-	z���AD*

loss��>�;�`       ��-	���AE*

loss5*�>�h�M       ��-	U����AF*

loss8f�>����       ��-	]����AG*

loss1��>sW�       ��-	&����AH*

loss�"�>��@       ��-	����AI*

lossΡ�>D �1       ��-	�����AJ*

lossh6�>�\��       ��-	b����AK*

loss�߈>r��       ��-	�����AL*

loss���>��e;       ��-	6����AM*

loss@o�>`�#X       ��-	F����AN*

loss��~>[�7w       ��-	�����AO*

loss|�x>����       ��-	M����AP*

lossT�r>� �       ��-	a����AQ*

lossB�l>D+       ��-	�����AR*

lossgBg>-*�       ��-	�����AS*

loss��a>�       ��-	����AT*

lossa\>f�_�       ��-	�����AU*

loss�!W>4�L       ��-	�����AV*

loss�R>P1�       ��-	�����AW*

loss�M>x���       ��-	t����AX*

loss.!H>�C	�       ��-	x����AY*

lossn]C>Y�.       ��-	�����AZ*

loss��>>����       ��-	D����A[*

loss[,:>�F��       ��-	����A\*

loss��5>��R�       ��-	)���A]*

lossj1>��`
       ��-	^���A^*

loss�0->��
       ��-	����A_*

loss!)>�|       ��-	���A`*

loss�
%>k��       ��-	O���Aa*

loss�!>���       ��-	W$���Ab*

loss�F>�2�       ��-	=)���Ac*

lossJ�>Q���       ��-	'.���Ad*

loss��>`���       ��-	�3���Ae*

lossO>�}�p       ��-	9���Af*

lossX�>z
��       ��-	%>���Ag*

loss�l>(�:       ��-	5C���Ah*

loss>���       ��-	�H���Ai*

loss��>�&       ��-	O���Aj*

loss��>}��L       ��-	W���Ak*

loss|:�=>ݻ�       ��-	�^���Al*

loss"3�=_XBA       ��-	bi���Am*

lossuP�=f^�B       ��-	�v���An*

loss���=���       ��-	����Ao*

loss���=��3"       ��-	q����Ap*

lossj|�=+R��       ��-	�����Aq*

loss1$�=8EŇ       ��-	
����Ar*

loss���=����       ��-	����As*

loss���=h�Dd       ��-	z����At*

loss���=>��3       ��-	�����Au*

loss|�= ��F       ��-	�����Av*

loss�D�=ձ�       ��-	�����Aw*

loss���=�E�       ��-	�����Ax*

loss� �=��       ��-	�����Ay*

lossj��=39A�       ��-	.����Az*

loss�j�=�(�       ��-	�����A{*

loss�7�=�c7�       ��-	�����A|*

loss�=�J2�       ��-	����A}*

losss�=�q�       ��-	L����A~*

loss65�=�.�       ��-	����A*

loss�d�=�|�       �	����A�*

loss���=����       �	o����A�*

loss	�=H��       �	�����A�*

loss�|�==���       �	�����A�*

loss�=��*       �	����A�*

lossr��=̮��       �	5
���A�*

losslW�=�}�       �	����A�*

loss��=F�ј       �	���A�*

lossN��=";Ⱦ       �	�n���A�*

lossu�{=�zN{       �	w���A�*

loss��u=
W�       �	5}���A�*

loss��o=�}       �	8����A�*

loss!?j=|�!�       �		����A�*

losso�d=QH4       �	ގ���A�*

loss�9_=�ۑ�       �	�����A�*

loss<�Y=ث�       �	�����A�*

loss�T=���e       �	����A�*

loss��O=#f�I       �	�����A�*

loss�J=U��T       �	�8���A�*

losso�E=tYګ       �	�@���A�*

lossZ-A=���       �	H���A�*

loss��<=�t{       �	HO���A�*

loss�8=�8       �	W���A�*

loss��3=���h       �	b���A�*

lossfm/=�G<�       �	[}���A�*

loss/@+=7r�       �	����A�*

lossy,'=.��C       �	΍���A�*

loss�1#=(�A       �	W����A�*

loss�N=�%��       �	����A�*

loss��=1�S       �	ʤ���A�*

loss$�=��-�       �	����A�*

loss�2=ZՅ�       �	����A�*

loss��=�7��       �	�����A�*

loss�9=fr��       �	�����A�*

loss(�	= �4       �	d����A�*

loss�=�'       �	$����A�*

loss�`=��hv       �	�����A�*

loss�? =l�e       �	�����A�*

loss�d�<��^�       �	2����A�*

lossvn�<����       �	����A�*

lossŜ�<j�7        �	<����A�*

lossr��<���       �	/����A�*

loss�b�<�3cI       �	 ���A�*

loss���<��F�       �	����A�*

loss��<��ݣ       �	t���A�*

loss`��<#k�       �	����A�*

loss*~�<��w       �	r���A�*

loss���<�k�,       �	����A�*

loss��<.?�x       �	)!���A�*

loss��<�k&       �	�&���A�*

loss
��<��T       �	w+���A�*

loss&�<���.       �	f0���A�*

losso��<8Hn�       �	�5���A�*

lossGq�<9�$       �	 ;���A�*

lossJ�<u7�       �	O@���A�*

lossJ<�<�!�D       �	�F���A�*

lossG�<�<s       �	�N���A�*

lossj�<��a/       �	TU���A�*

loss���<2"o�       �	S\���A�*

loss��<݌;�       �	�b���A�*

loss�]�<��       �	Dj���A�*

loss�ۏ<��       �	�q���A�*

loss�n�<7ob�       �	pw���A�*

loss
�<qy�_       �	�|���A�*

loss}Ӆ<�       �	M����A�*

lossأ�<�5��       �	Q����A�*

loss^<Ue��       �	�����A�*

loss��x<-��       �	Ց���A�*

loss?s<��!�       �	 ����A�*

loss�Em<o�go       �	����A�*

loss��g<?(��       �	�����A�*

loss�b<��w�       �	a����A�*

loss�\<3�]�       �	�����A�*

loss�xW<u3�M       �	����A�*

lossXWR<+��*       �	����A�*

lossWUM<J��       �	Ӽ���A�*

loss�qH<�*�       �		����A�*

loss>�C<
��       �	T����A�*

loss�?<A�o�       �	>����A�*

lossjw:<`VP�       �	����A�*

loss�6<���V       �	�����A�*

loss|�1<'�+       �	s����A�*

loss�v-<��Q�       �	P����A�*

lossZU)<ac?�       �	����A�*

loss4M%<�za@       �	h����A�*

loss�]!<:g)�       �	�����A�*

loss:�<�փ       �	#����A�*

loss3�<ԟ4       �	�����A�*

loss<��U�       �	����A�*

loss�<����       �	F���A�*

loss�<5�	7       �	����A�*

loss�<�A       �	����A�*

loss�Q<k�K~       �	����A�*

loss<�+�       �	����A�*

loss�<vü       �	�!���A�*

loss���;h���       �	�&���A�*

lossі�;U��       �	I,���A�*

loss±�;h�I�       �	]1���A�*

loss���;�3�D       �	�6���A�*

loss�R�;G_��       �	�<���A�*

loss���;%�>�       �	�A���A�*

loss�|�;>���       �	�F���A�*

loss�B�;)x�V       �	�K���A�*

loss�(�;c���       �	�P���A�*

lossH.�;\D�8       �	�U���A�*

loss�Q�;&��3       �	K\���A�*

loss���;.{�       �	�d���A�*

loss�;Y�"A       �	�j���A�*

lossck�;}GeT       �	�p���A�*

lossR�;A�q�       �	Ov���A�*

loss��;ᷢ�       �	p}���A�*

loss}�;��;       �	&����A�*

loss�a�;fн�       �	�����A�*

loss�_�;��q       �	{����A�*

loss�u�;�x       �	�����A�*

lossȣ�;,/�       �	����A�*

loss�;�t�c       �	�����A�*

loss3E�;�Z�~       �	u����A�*

lossp��;o�3       �	�����A�*

lossV?�;�O�       �	o����A�*

loss]܊;jZP�       �	Y����A�*

loss��;H$�       �	�����A�*

loss�S�;�M��       �	�����A�*

lossU-�;暳       �	}����A�*

loss34|;�1�       �	�����A�*

loss3v;zL��       �	f����A�*

loss�Vp;9=H�       �	�����A�*

loss��j;T{�       �	����A�*

loss�e;4�$>       �	����A�*

lossœ_;	�^       �	����A�*

loss8AZ;�0l       �	����A�*

loss�U; ��x       �	G���A�*

lossL�O;���I       �	�$���A�*

loss�K;W9�       �	�*���A�*

lossm3F;�>K       �	�3���A�*

lossd{A;�^��       �	�:���A�*

loss�<;сn       �	�K���A�*

loss�`8;�d�       �	3T���A�*

loss"�3;�&��       �	�Y���A�*

loss��/;,�s       �	_���A�*

loss2�+;�sf       �	�e���A�*

loss�o';��+       �	k���A�*

loss;s#;]!�       �	Tp���A�*

loss�;��ٰ       �	�u���A�*

loss��;D�
�       �	tz���A�*

lossZ;���Q       �	����A�*

loss�n;���       �	����A�*

loss��;7͠�       �	�����A�*

loss�r;��       �	w���A�*

loss�
;YƃC       �	H���A�*

loss�;"���       �	T���A�*

loss��;�\R       �	�&���A�*

loss�s ;Ei�       �	�,���A�*

loss���:F&�A       �	�2���A�*

loss ��:01?       �	�8���A�*

loss���:��b       �	�?���A�*

loss1L�:pZ�       �	�E���A�*

lossm��:��4�       �	�L���A�*

lossVR�:���h       �	.S���A�*

loss�:%�YV       �	�Y���A�*

loss\��:h�h�       �	�_���A�*

loss#��:P)�4       �	,f���A�*

loss���:����       �	l���A�*

loss!�:��g&       �	�r���A�*

loss�d�:���[       �	Jy���A�*

lossvл:�9       �	����A�*

loss�W�:`A�       �	8����A�*

loss��:����       �	�����A�*

loss(��:�T��       �	h����A�*

lossl��:{�Ψ       �	0����A�*

loss�:mg       �	����A�*

loss2��:3�       �	&����A�*

loss���:&�4�       �	O����A�*

loss��:>��       �	l����A�*

loss�2�:�߈�       �	w����A�*

loss��:�a       �	����A�*

lossr�:���Q       �	~����A�*

lossN��:��v       �	O����A�*

loss N�:Q=�       �	
����A�*

loss,	�:D4�       �	@����A�*

loss>؂:�Aj�       �	~����A�*

lossyu:�N�=       �	�����A�*

loss<`y:��	^       �	�����A�*

loss�ps:j3y       �	,����A�*

loss��m:Rx��       �	�����A�*

losss�g:�p;       �	����A�*

lossLvb:|�JC       �	}	���A�*

loss]:j]2       �	����A�*

loss��W:#LF�       �	�&���A�*

loss��R:��{       �	�/���A�*

lossp�M:"�N       �	D5���A�*

loss �H:�c"�       �	�:���A�*

lossa�C:���       �	h@���A�*

loss�O?:��L@       �	$E���A�*

loss��::U;�       �	�I���A�*

loss�O6:4�O�       �	{O���A�*

lossJ�1:�M��       �	�T���A�*

loss��-:2�H�       �	�Y���A�*

loss):N-        �	�_���A�*

loss<�%:ԳZM       �	�d���A�*

loss5�!:#py       �	�i���A�*

loss.�:��)       �	�n���A�*

loss�:�a~       �	t���A�*

lossY:�9lB       �	dy���A�*

loss��:�1��       �	�~���A�*

lossjF:%T��       �	Ã���A�*

loss"�:�"�x       �	ʈ���A�*

loss��::Kk       �	v����A�*

loss?H:�x�z       �	����A�*

loss:��al       �	 ����A�*

loss��9�)��       �	�����A�*

loss���9��J       �	�����A�*

loss��9�&�       �	r����A�*

loss(O�9wF�       �	�����A�*

loss��9w���       �	[����A�*

loss�0�9�$i       �	k����A�*

loss���9��ƻ       �	<����A�*

lossr��9G��       �	3����A�*

loss\|�9o���       �	�����A�*

loss��9nj7�       �	�����A�*

loss���9�_>6       �	g����A�*

loss���9���       �	����A�*

loss=�9<eh�       �	����A�*

loss���9fO�       �	�����A�*

lossCI�9Ħ+       �	�����A�*

loss���9"��       �	�����A�*

loss¬9��       �	(����A�*

loss���9u}	       �	M����A�*

loss̠�9s��L       �	U����A�*

loss۵�9k�3�       �	 ���A�*

lossN�9zVx       �	1���A�*

loss�%�9Q��       �	$���A�*

loss؀�9�A
:       �	����A�*

loss��9T\��       �	����A�*

loss�w�9��GC       �	����A�*

loss��9FO��       �	����A�*

loss�Ç9ɢ�N       �	�$���A�*

loss���9wX�       �	�)���A�*

loss�`�9�|�       �	�.���A�*

loss��|9o�LD       �	4���A�*

loss��v9�:�       �	i9���A�*

lossڵp9Y��       �	�>���A�*

lossH�j9���       �	�C���A�*

loss�be9�`       �	�H���A�*

loss��_9�PC       �	�M���A�*

loss@�Z9��VR       �	aS���A�*

losstdU97S�       �	�X���A�*

lossZOP9�	�}       �	�]���A�*

lossZK9;:\       �	�c���A�*

loss�F9���       �	�h���A�*

loss��A9	#       �		n���A�*

lossX+=9'���       �	ds���A�*

loss~�89�>�       �	_y���A�*

loss�D49H"�       �	����A�*

lossK�/9jT��       �	�����A�*

loss��+9�0$�       �	�����A�*

loss��'9�dm       �	�����A�*

loss�#9ws8        �	,����A�*

loss��9o�\i       �	�����A�*

loss� 9	}��       �	�����A�*

loss�J9��@       �	����A�*

loss��9p_޸       �	ػ���A�*

loss> 9F8*       �	Y����A�*

lossƫ9�KZ       �	*����A�*

lossL
9���	       �	�����A�*

loss�9��H�       �	����A�*

loss��9��Gs       �	�����A�*

loss/� 9���       �	����A�*

loss�.�8(�Yp       �	�
���A�*

loss4�8���'       �	����A�*

lossD]�8�"��       �	���A�*

loss��8��;       �	���A�*

lossP�8W�G�       �	>#���A�*

loss��8!/<       �	�)���A�*

lossF_�8'轃       �	Z/���A�*

loss41�8Q'�O       �	�4���A�*

loss�$�8��j       �	G:���A�*

lossN5�8[|8       �	@���A�*

lossXe�8�       �	JF���A�*

loss2��87r&       �	�K���A�*

loss��8��)       �	�P���A�*

lossa��8f00v       �	�V���A�*

lossPB�8��       �	l]���A�*

loss���8Zd�       �	�c���A�*

loss�Ҫ8h���       �	�i���A�*

lossa��8T��       �	~o���A�*

loss�ɢ8[+��       �	�����A�*

losst�8���Y       �	bj���A�*

loss� �8t[EX       �	�t���A�*

loss�n�8����       �	�z���A�*

loss�ԓ8R�]O       �	�����A�*

loss�O�8g�H�       �	Q����A�*

loss�ߌ8�wx       �	ʌ���A�*

loss
��8K2�       �	����A�*

loss�>�8���       �	�����A�*

loss��8`�=�       �	I����A�*

loss��8�[�       �	D����A�*

lossA�y8�Z�P       �	����A�*

loss��s8g1       �	�����A�*

lossn8Z���       �	A����A�*

loss.Yh8���       �	�����A�*

lossv�b8��~�       �	�����A�*

loss.i]8�i&       �	d����A�*

loss�$X8�r�}       �	o����A�*

loss��R8��8       �	����A�*

lossp�M8�*J5       �	e����A�*

loss�I8֎u�       �	`����A�*

loss�HD8��S�       �	5����A�*

loss�?8!�       �	Q����A�*

loss�;8��       �	�����A�*

loss�68ⷠ�       �	p���A�*

lossV@28h���       �	����A�*

losst.8l	�3       �	#���A�*

loss<�)8�rcK       �	T���A�*

loss?�%8>�«       �	����A�*

loss��!8�9�       �	[$���A�*

lossp8
��       �	|)���A�*

loss2B8�6�-       �	4/���A�*

loss��8�*       �	a4���A�*

loss 8q[K       �	�9���A�*

lossT�8�2�       �	h>���A�*

lossE88��       �	�C���A�*

loss^�8�F��       �	�H���A�*

loss�}8�<��       �	�M���A�*

lossP8�n�;       �	�R���A�*

loss>n�7����       �	�W���A�*

loss�]�7pS�       �	�\���A�*

losst�7J�c       �	�a���A�*

loss���7�gg       �	�f���A�*

loss�
�7�;Z�       �	al���A�*

loss΋�7�j|y       �	�q���A�*

loss
-�7� (z       �	�v���A�*

lossD��7�ߏx       �	9|���A�*

loss���7�yp$       �	s����A�*

lossF��7�"7'       �	U����A�*

loss���7���6       �	�����A�*

loss&1�7���       �	�����A�*

loss���7.�       �	Օ���A�*

lossa �7)i�E       �	J����A�*

loss<��7!���       �	w����A�*

lossX@�7Q\��       �	�����A�*

loss��7X2l]       �	����A�*

loss��7nU_8       �	�����A�*

loss��7�*�A       �	е���A�*

lossR��71��       �	ܺ���A�*

lossX �7��z       �	�����A�*

loss�b�7���       �	7����A�*

loss���7=��       �	\����A�*

loss�)�7T�!       �	�����A�*

loss��7�+�4       �	�����A�*

loss>I�7��       �	�����A�*

loss���7d~�b       �	�����A�*

loss⺄7D6       �	�����A�*

loss���7����       �	�����A�*

loss��|7#R��       �	=����A�*

loss�v7y��=       �	�����A�*

loss�q7&���       �	n����A�*

lossiUk7p	�       �	�����A�*

loss(�e7`�e�       �	����A�*

lossGC`7<���       �	�
���A�*

loss��Z7���       �	����A�*

lossq�U7���g       �	����A�*

loss��P7����       �	����A�*

loss)�K7<#�       �	 ���A�*

lossQ�F7�	�       �	�#���A�*

loss�B7�~�       �	�(���A�*

loss\s=7	�       �	�-���A�*

loss�87�4��       �	f3���A�*

loss��47���       �	�8���A�*

loss�<07z�Z       �	�=���A�*

loss	,7Z��       �	9C���A�*

loss��'7DRh�       �	kH���A�*

losso�#7�D       �	+M���A�*

lossn 77D!�       �	~R���A�*

lossv<77�5	       �	�W���A�*

loss��7F��       �	:]���A�*

loss�7��;       �	 c���A�*

loss&V7�o��       �	Qh���A�*

loss��7i��       �	�m���A�*

loss
7܋(�       �	�r���A�*

loss�47k	�       �	�x���A�*

loss:�7=a��       �	�~���A�*

loss�� 7�L��       �	ǃ���A�*

lossE��61�t       �	"����A�*

loss��6Q��w       �	?����A�*

loss=��6ɵ�       �	\����A�*

loss���6��y       �	9����A�*

lossvm�6��?       �	(����A�*

losst �6S+&�       �	ˢ���A�*

loss���6�]       �	*����A�*

lossȂ�6�b       �	�����A�*

loss�q�6Ѵ�       �	����A�*

loss���6e��       �	�����A�*

loss��6=<��       �	����A�*

loss��6�'uA       �	"����A�*

loss�e�6��k       �	G����A�*

loss/�6��       �	)����A�*

loss��6lU�!       �	�����A�*

loss*A�6��       �	�����A�*

loss��6n��       �	U����A�*

loss,�6�t�n       �	�����A�*

loss�
�6�H�$       �	2����A�*

loss '�6�e|�       �	�����A�*

lossh_�6w:�b       �	�����A�*

lossx��6lM9       �	8����A�*

lossN�6?��       �	]����A�*

lossH��6e
	       �	����A�*

loss��6�[�       �	J	���A�*

loss¹�6?M��       �	w���A�*

lossyu�6'���       �	���A�*

loss�@�6�~X       �	����A�*

loss� �6E}�       �	`9���A�*

loss3)z6��Z       �	kF���A�*

loss�/t6�l�       �	'N���A�*

loss�[n6��(�       �	&V���A�*

loss°h6 �ƪ       �	�\���A�*

loss�+c6yD*       �	�c���A�*

loss��]6�6�       �	fk���A�*

lossiuX6�h�       �	.q���A�*

lossHPS6��-       �	�v���A�*

loss<HN6�:xJ       �	�|���A�*

loss�_I6Q��       �	����A�*

loss��D6�Ϟ�       �	ߊ���A�*

loss��?6�,k�       �	����A�*

loss�U;6��h       �	ԛ���A�*

loss��66 $�       �	�����A�*

lossH�26��p�       �	�����A�*

lossC.6��nw       �	�����A�*

lossd*6��X       �	�����A�*

loss�&6X��       �	�����A�*

loss�"68�H       �	Ǻ���A�*

loss<C6A�k�       �	�����A�*

loss�|6�       �	 ����A�*

loss��6�Bb�       �	�����A�*

loss�46Ԏ��       �	[����A�*

loss�6״       �	�����A�*

loss�F6���       �	�����A�*

loss��6o��F       �	�����A�*

loss��6��ݑ       �	�����A�*

loss&�61��       �	:����A�*

loss���5sߐ�       �	V����A�*

lossQ��5��3�       �	�����A�*

loss���5:Un�       �	�����A�*

loss���5�h��       �	�����A�*

loss�^�5�(�       �	����A�*

lossN��5�:<�       �	�	���A�*

loss�t�5��S�       �	Z���A�*

loss6�5���       �	Q���A�*

loss[�5)� �       �	]���A�*

lossr�5�03�       �	T���A�*

lossf:�5�m��       �	p#���A�*

loss�n�5e"-=       �	�(���A�*

loss�ʾ5����       �	�-���A�*

lossB?�5����       �	�2���A�*

loss*ӵ5n�       �	�7���A�*

loss�z�5A       �	�<���A�*

lossU@�5k��P       �	�A���A�*

loss�5�       �	�G���A�*

loss��5�G��       �	�M���A�*

loss�*�5��M       �	�R���A�*

loss^T�5�b �       �	�W���A�*

lossْ�5նSN       �	�\���A�*

loss%�5�f}       �	$b���A�*

loss-Y�5�w�|       �	Ig���A�*

loss�5ou3       �	+l���A�*

lossO~�5xtr       �	"q���A�*

loss*+�5�WN�       �	qv���A�*

loss�5bp��       �	�{���A�*

loss��5KJ�       �	����A�*

loss�O}5E�3�       �	�����A�*

loss�Nw5����       �	7����A�*

loss<cq5!(       �	C����A�*

lossƤk5m��       �	����A�*

loss�f5BB�       �	�����A�*

loss͈`5b4I�       �	
����A�*

loss
;[5�s}       �	ߣ���A�*

lossS�U5$�       �	�����A�*

loss:�P57�`       �	ŭ���A�*

loss�K5x��       �	c����A�*

loss~G5*�5       �	�����A�*

loss�OB5��1�       �	�����A�*

loss��=5�o�       �	�����A�*

loss�*95g9{       �	�����A�*

lossZ�45�!�       �	����A�*

lossTx05��       �	�����A�*

loss�?,5��O       �	^����A�*

lossl!(5��E       �	�����A�*

lossR$$5�q&       �	����A�*

lossF< 5���|       �	����A�*

lossZp5}Ҕ�       �	�����A�*

loss�5�`��       �	�����A�*

loss-58�       �	�����A�*

loss�5krY�       �	�����A�*

loss�5�X��       �	����A�*

lossp�
5��J       �	����A�*

loss\5��v,       �	N���A�*

loss�&5I���       �	8���A�*

loss�� 5F�R       �	����A�*

loss���4I�x�       �	2���A�*

loss���4ƺ��       �	%"���A�*

loss��4���       �	�'���A�*

lossiS�4ף��       �	k,���A�*

lossP��4~�}�       �	�1���A�*

loss`V�4h�)�       �	"7���A�*

lossz �4A�*       �	�<���A�*

loss���4�W�       �	�A���A�*

loss���4�Y�       �	�F���A�*

lossD��4���a       �	QL���A�*

loss���4�xY       �	�Q���A�*

lossj7�4޼O9       �	�V���A�*

loss\��4 ߿A       �	u[���A�*

lossp1�4�V{U       �	�`���A�*

loss���4��A       �	<f���A�*

loss���4>�       �	�k���A�*

loss�V�4�V/       �	rp���A�*

loss�I�4�f�1       �	�u���A�*

loss�G�4�g        �	�z���A�*

loss\a�4�1g       �	����A�*

loss뛛4ͲO       �	^����A�*

loss^�4J))B       �	ۊ���A�*

loss=�4=r[�       �	y����A�*

loss:��4\���       �	�����A�*

loss�P�4�a       �	�����A�*

loss�4��VJ       �	����A�*

lossP��4�_�       �	פ���A�*

lossLl�4��vh       �	&����A�*

lossZC�4X���       �	����A�*

loss��z4v�       �	ݳ���A�*

losspt4D1��       �	����A�*

loss�n4SP�7       �	����A�*

loss/�h4<ms�       �	r����A�*

loss�|c4�x�       �	q����A�*

loss�^4�R��       �	�����A�*

lossպX4�Nͧ       �	����A�*

loss9�S4T��       �	����A�*

lossa�N4�ڵ~       �	����A�*

loss5�I4�$�       �	����A�*

loss��D4�tV�       �	�����A�*

lossXB@4h���       �	�����A�*

lossH�;4��n       �	�����A�*

loss_574?0�       �	'����A�*

loss��24:I�r       �	e����A�*

loss�.4�w��       �	����A�*

lossp*4C�{       �	
���A�*

lossNU&4a{@       �	���A�*

loss�h"4Q��       �	I���A�*

loss~p4�x�L       �	7���A�*

loss�4��E�       �	����A�*

loss$43i��       �	�"���A�*

loss�k4zY��       �	�'���A�*

loss��4�Ӫ       �	�,���A�*

loss�4Nғ%       �	Y2���A�*

loss�1	40֒Z       �	"7���A�*

loss��4���I       �	�<���A�*

loss+�4����       �	�B���A�*

lossV3�3L�DO       �	�G���A�*

loss��3���m       �	
M���A�*

lossJ�3���       �	�Q���A�*

lossjX�3��        �	XW���A�*

lossZ��3�\��       �	�\���A�*

loss�3�3�s��       �	�a���A�*

lossX��3����       �	g���A�*

lossf��3��X       �	Dl���A�*

lossRV�3�R�$       �	q���A�*

loss�A�3�i�       �	%v���A�*

loss_�3B�B       �	W|���A�*

loss¨�3�p�       �	(����A�*

loss��3y1       �	�����A�*

loss���3:)�       �	Ō���A�*

loss��3G`�K       �	����A�*

loss���3��&2       �	����A�*

loss6��3��g�       �	�����A�*

loss�S�3H��7       �	�����A�*

loss�>�3��;�       �	*����A�*

loss�a�3_��       �	`����A�*

lossƎ�3i��~       �	�����A�*

lossXə33f#�       �	����A�*

losst�3����       �	����A�*

loss&��3ғs'       �	{����A�*

loss��3�ͼ       �	�����A�*

lossp��3f,��       �	����A�*

loss�U�3@j�       �	�����A�*

loss��3��hi       �	R����A�*

loss0��30�n�       �	�����A�*

loss��}3�Pn       �	�����A�*

lossI�w3�tR�       �	�����A�*

lossl�q3LG��       �	�����A�*

loss�l3�g��       �	�����A�*

lossHf3qf       �	#����A�*

loss��`3��O!       �	H����A�*

loss��[3Y&�H       �	����A�*

loss,~V3[�|�       �	c	���A�*

loss�-Q3��	       �	c���A�*

loss�jL3��       �	����A�*

loss�WG3r��       �	D���A�*

loss��B3���       �	���A�*

loss5+>3�U��       �	!#���A�*

lossuj93	YC       �	�(���A�*

loss53�}Fl       �	^.���A�*

loss��03��       �	�3���A�*

loss	�,3�A�F       �	;9���A�*

loss-o(3"�       �	>���A�*

lossԖ$3�0M�       �	5C���A�*

lossi� 3��[�       �	�H���A�*

loss��3��f]       �	/N���A�*

lossi3rTXL       �	�S���A�*

lossd^3g��       �	�X���A�*

loss��3�8�       �	�]���A�*

loss�n3,�WZ       �	,c���A�*

loss@�
3H�R       �	^h���A�*

lossթ3nB��       �	n���A�*

loss�i3�?K       �	�r���A�*

loss$U3�UJ�       �	�x���A�*

loss��2[y��       �	,~���A�*

loss�O�2�͵g       �	b����A�*

lossؐ�2�@�p       �	�����A�*

loss"��2$� C       �	m����A�*

loss��2�84�       �	ē���A�*

lossh��2�'@       �	����A�*

lossJF�2"�'�       �	�����A�*

loss�2�'�       �	����A�*

loss0�2����       �	r����A�*

loss�2ʿ1       �	�����A�*

loss�2��       �	г���A�*

loss�26�p�       �	����A�*

loss
�2o9�:       �	ܽ���A�*

loss@8�2�@3       �	T����A�*

loss�׳2oĲ�       �	�����A�*

loss���2�"i�       �	1����A�*

loss
z�2�x��       �	|����A�*

lossh{�2�)��       �	�����A�*

loss@F�2��       �	'����A�*

lossR��2��       �	~����A�*

loss���2"/�       �	:����A�*

lossH�2b2��       �	R����A�*

loss���2��j       �	�����A�*

lossjʐ27�;g       �	�����A�*

lossؐ�2��       �	�����A�*

lossh�28�a       �	����A�*

lossjކ2	�I
       �	����A�*

loss���2MR�"       �	����A�*

loss��2���       �	E���A�*

loss�{25��]       �	����A�*

loss�t2�ru       �	����A�*

loss��n2�WoT       �	�"���A�*

loss$�i2 ��       �	�'���A�*

loss��c2!�b9       �	-���A�*

loss�{^2<9�O       �	r2���A�*

loss�4Y2�Hϒ       �	�7���A�*

loss �S2B��       �	�<���A�*

loss�N2����       �	�B���A�*

loss4�I2����       �	�G���A�*

loss$(E22       �	DM���A�*

lossе@23G�       �	�R���A�*

loss��;2�L�       �	.X���A�*

loss��72���       �	_]���A�*

loss 32��L�       �	gb���A�*

lossD�.2s��       �	�g���A�*

loss0�*2��Q�       �	�l���A�*

loss��&27&       �	�r���A�*

loss��"2��       �	�w���A�*

loss��2V�b       �	�}���A�*

loss�2X�"       �	�����A�*

loss�i2��       �	/����A�*

loss�{2���       �	~����A�*

loss $2�`�
       �	�����A�*

loss0�2��1       �	}����A�*

loss m	2�Ɂ       �	����A�*

losstV2����       �	ס���A�*

loss��2�ؕz       �	�����A�*

loss@��1��b       �	G����A�*

loss���1l;��       �	�����A�*

loss ��1#ֵ:       �	����A�*

loss�_�1��=�       �	����A�*

loss�1F�       �	<����A�*

loss S�1q���       �	�����A�*

loss,�1�>��       �	6����A�*

loss��1�`C       �	[����A�*

lossh��1fsD�       �	�����A�*

loss���1[ڄ�       �	����A�*

loss�E�1n�л       �	P����A�*

loss0�1��c~       �	�����A�*

loss }�1�<��       �	�����A�*

loss(��1�3H+       �	�����A�*

lossh��15lМ       �	�����A�*

loss(k�1OZ�       �	�����A�*

losshޭ1/l�       �	% ���A�*

loss ��1���       �	h ���A�*

lossh��1���<       �	� ���A�*

loss��1ڵ�       �	� ���A�*

loss���1�8@9       �	@ ���A�*

lossH.�1���       �	2 ���A�*

loss���1���6       �	[# ���A�*

loss���1�ZU�       �	[( ���A�*

loss Y�1>;       �	�- ���A�*

loss�"�1���       �	�2 ���A�*

loss���1�r]�       �	�7 ���A�*

loss蔅1�1R%       �	= ���A�*

loss�|�1�v�!       �	B ���A�*

lossPe~1:��       �	4G ���A�*

loss�x1���       �	L ���A�*

lossпr1�;�       �	�P ���A�*

loss��l1�l�b       �	?V ���A�*

loss@�f1F_�@       �	�[ ���A�*

loss�a1��\       �	�` ���A�*

loss "\1{rΗ       �	�e ���A�*

loss@�W1)D�       �	�j ���A�*

loss�R1[NP        �	&p ���A�*

loss RM1T��       �	u ���A�*

loss $H1��G       �	Wz ���A�*

loss�{C1��       �	� ���A�*

loss�R?1�*��       �	'� ���A�*

loss@�:1y�\       �	�� ���A�*

lossP�51����       �	*� ���A�*

loss 11��       �	1� ���A�*

loss 
-1�1�n       �	N� ���A�*

loss 
)1<s2�       �	0� ���A�*

loss %1��6       �	@� ���A�*

loss .!1����       �	ɪ ���A�*

loss R1M9]�       �	�� ���A�*

loss �1`Ix�       �	t� ���A�*

loss �1e�A       �	ع ���A�*

lossP�1�>�       �	� ���A�*

loss@�1���       �	�� ���A�*

loss�,1��3-       �	!� ���A�*

loss 61�l�F       �	�� ���A�*

loss V1���       �	�� ���A�*

loss�1/�?�       �	�� ���A�*

loss�a�0��f       �	*� ���A�*

loss `�0�gt�       �	:� ���A�*

loss�\�0��8       �	� ���A�*

loss��0Ʒ=�       �	� ���A�*

loss�.�0��|       �	f� ���A�*

loss�i�0H��F       �	�� ���A�*

loss�U�0�ù�       �	�!���A�*

loss���0�Z�       �	!���A�*

loss ��0�O�       �	_!���A�*

loss�4�0�Q#~       �	b!���A�*

loss l�0NO�#       �	�!���A�*

loss�L�09���       �	�!���A�*

loss L�04)��       �	�#!���A�*

loss��0�i�]       �	g(!���A�*

loss ��0����       �	�-!���A�*

loss���0	��       �	�2!���A�*

loss ܫ0�c<       �	�7!���A�*

loss���0��z       �	O=!���A�*

loss t�0�?i�       �	cB!���A�*

loss @�0�f       �	�F!���A�*

loss��0��l       �	<L!���A�*

loss ��0�(�       �	�Q!���A�*

loss |�0a�J       �	 W!���A�*

loss�^�0��B�       �	t\!���A�*

loss �0ō��       �	�a!���A�*

loss �0$�)N       �	g!���A�*

loss��0ʏ�*       �	�l!���A�*

loss ܄0b/�       �	�q!���A�*

loss �0��-�       �	w!���A�*

loss@}0�]��       �	�{!���A�*

loss@�v0�;�d       �	��!���A�*

loss@,p0?R	       �	Ӆ!���A�*

loss �j0�r�       �	ߊ!���A�*

loss@�e0g���       �	ޏ!���A�*

loss@_0,�_       �	�!���A�*

loss �Y0�Ӿ�       �	�!���A�*

loss@�U0�_�N       �	8�!���A�*

loss@JP0n�M       �	�!���A�*

loss ZJ0jF��       �	e�!���A�*

loss@"F0��ٙ       �	��!���A�*

loss ]A0�Oz_       �	��!���A�*

loss@<0���       �	ø!���A�*

loss@�80����       �	Q�!���A�*

loss@?50>e,       �	��!���A�*

loss@u006��b       �	T�!���A�*

loss@�+0�N|�       �	��!���A�*

loss@m(0�N�C       �	5�!���A�*

loss@'%0Ja       �	��!���A�*

loss@� 0Kc�       �	��!���A�*

loss@�0]�|�       �	T�!���A�*

loss@�08y       �	��!���A�*

loss@�0�!       �	R�!���A�*

loss@u0b�G       �	�!���A�*

loss@0_'�       �	D�!���A�*

loss@-
0�-       �	��!���A�*

loss x0�M�       �	"���A�*

loss@}0-�K       �	�	"���A�*

loss �06�w       �	E"���A�*

loss�n�/���       �	b"���A�*

loss���/t��>       �	r"���A�*

loss �/F��       �	y"���A�*

loss���/r�>       �	�#"���A�*

loss ��/2\�#       �	�("���A�*

loss ��/�P�       �	V-"���A�*

loss�
�/G]�3       �	�2"���A�*

loss�L�/����       �	8"���A�*

loss ��/0+�       �	q="���A�*

loss�\�/�D��       �	C"���A�*

loss���/��       �	�G"���A�*

loss r�/�v�3       �	�L"���A�*

loss�^�/�a�p       �	R"���A�*

loss���/
fd       �	�V"���A�*

loss�l�/��m>       �	�["���A�*

loss�
�/e��^       �	�`"���A�*

loss��/7Oz       �	�e"���A�*

loss \�/��r       �	k"���A�*

loss f�/��W�       �	�o"���A�*

loss�ʠ/���g       �	�t"���A�*

loss <�/��^       �	Bz"���A�*

loss ��/���       �	A"���A�*

loss��/��G�       �	��"���A�*

loss ̐/��7       �	��"���A�*

loss ��/�c�       �	�"���A�*

loss���/��e       �	ݔ"���A�*

loss L�/�       �	��"���A�*

loss �/�@sB       �	��"���A�*

loss �/Ҏ��       �	��"���A�*

loss xy/"FY       �	i�"���A�*

loss v/lq�       �	u�"���A�*

loss �o/�t-�       �	��"���A�*

loss �i/[�       �	0�"���A�*

loss �b/����       �	@�"���A�*

loss `[/���       �	��"���A�*

loss W/Ǯۣ       �	e�"���A�*

loss �R/�O��       �	h�"���A�*

loss qN/�M�I       �	��"���A�*

loss �G/��q       �	��"���A�*

loss ]B/��       �	{�"���A�*

loss y?/��]       �	&�"���A�*

loss U;/�=��       �	��"���A�*

loss q7/7�I�       �	��"���A�*

loss �4/�(�L       �	j�"���A�*

loss �./���       �	�"���A�*

loss �*/S�Q�       �	* #���A�*

loss '/��t�       �	:#���A�*

loss �!/��p�       �	9
#���A�*

loss /��       �	,#���A�*

loss U/��       �	�#���A�*

loss �/w���       �	�#���A�*

loss =/l��       �	u#���A�*

loss 	/0�NG       �	�##���A�*

loss u/m�@       �	$)#���A�*

loss �/Ɗ�t       �	�.#���A�*

loss /��\       �	�4#���A�*

loss �/�O�       �	2:#���A�*

loss ��.w5�@       �	d?#���A�*

loss b�.6�\P       �	�D#���A�*

loss ��.�$�       �	
J#���A�*

loss ��.�͕�       �	UO#���A�*

loss (�.�T�J       �	�T#���A�*

loss �.؁3�       �	�Y#���A�*

loss ��.Ǳ#�       �	R_#���A�*

loss ��.>aΎ       �	|d#���A�*

loss @�.�c[       �	�i#���A�*

loss ��.�bjM       �	Yn#���A�*

loss ��.�C��       �	us#���A�*

loss J�.۵�       �	y#���A�*

loss �.���       �	~#���A�*

loss ��.�GIn       �	,�#���A�*

loss Z�.H��H       �	��#���A�*

loss �.�M��       �	΍#���A�*

loss Ъ.�%U�       �	�#���A�*

loss 
�.1�g       �	c�#���A�*

loss �.���4       �	k�#���A�*

loss Z�.��       �	��#���A�*

loss ڟ.AY       �	?�#���A�*

loss H�.)�]       �	��#���A�*

loss ʔ.}'��       �	��#���A�*

loss J�.s)��       �	��#���A�*

loss ؍.���+       �	��#���A�*

loss ��.��Eb       �	H�#���A�*

loss �.���z       �	`�#���A�*

loss �.�	�~       �	��#���A�*

loss ��.q	&       �	��#���A�*

loss ~.�}g�