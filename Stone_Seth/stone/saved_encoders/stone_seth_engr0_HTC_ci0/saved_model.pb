??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28??
?
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:2*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:2*
dtype0
?
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:2*
dtype0
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?dd*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	?dd*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:d*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:d*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0

NoOpNoOp
? 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value? B?  B? 
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
R
1	variables
2trainable_variables
3regularization_losses
4	keras_api
h

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
8
0
1
2
3
+4
,5
56
67
8
0
1
2
3
+4
,5
56
67
 
?
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics

	variables
trainable_variables
regularization_losses
 
 
 
 
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
#	variables
$trainable_variables
%regularization_losses
 
 
 
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
'	variables
(trainable_variables
)regularization_losses
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
-	variables
.trainable_variables
/regularization_losses
 
 
 
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
1	variables
2trainable_variables
3regularization_losses
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61

50
61
 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_17Placeholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_17conv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_599593
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_599978
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_600012??
?%
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599264

inputs)
conv2d_8_599179:2
conv2d_8_599181:2)
conv2d_9_599203:22
conv2d_9_599205:2!
dense_8_599235:	?dd
dense_8_599237:d 
dense_9_599258:d
dense_9_599260:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
 gaussian_noise_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599165?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)gaussian_noise_4/PartitionedCall:output:0conv2d_8_599179conv2d_8_599181*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599178?
dropout_12/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_599189?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv2d_9_599203conv2d_9_599205*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599202?
dropout_13/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_599213?
flatten_4/PartitionedCallPartitionedCall#dropout_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_599221?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_599235dense_8_599237*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_599234?
dropout_14/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_599245?
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_9_599258dense_9_599260*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_599257w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599780

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_599593
input_17!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2
	unknown_3:	?dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_599154o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_17
?
M
1__inference_gaussian_noise_4_layer_call_fn_599740

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599165h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_13_layer_call_and_return_conditional_losses_599842

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?+
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599472

inputs)
conv2d_8_599447:2
conv2d_8_599449:2)
conv2d_9_599453:22
conv2d_9_599455:2!
dense_8_599460:	?dd
dense_8_599462:d 
dense_9_599466:d
dense_9_599468:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?"dropout_13/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?(gaussian_noise_4/StatefulPartitionedCall?
(gaussian_noise_4/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599417?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall1gaussian_noise_4/StatefulPartitionedCall:output:0conv2d_8_599447conv2d_8_599449*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599178?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0)^gaussian_noise_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_599385?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv2d_9_599453conv2d_9_599455*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599202?
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_599352?
flatten_4/PartitionedCallPartitionedCall+dropout_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_599221?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_599460dense_8_599462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_599234?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_599313?
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_9_599466dense_9_599468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_599257w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall)^gaussian_noise_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2T
(gaussian_noise_4/StatefulPartitionedCall(gaussian_noise_4/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_599900

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
(__inference_dense_8_layer_call_fn_599874

inputs
unknown:	?dd
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_599234o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????d
 
_user_specified_nameinputs
?
?
)__inference_conv2d_8_layer_call_fn_599769

inputs!
unknown:2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599178w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599165

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_4_layer_call_fn_599614

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2
	unknown_3:	?dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_599264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599178

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_13_layer_call_fn_599837

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_599352w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_599221

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 2  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????dY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?)
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599671

inputsA
'conv2d_8_conv2d_readvariableop_resource:26
(conv2d_8_biasadd_readvariableop_resource:2A
'conv2d_9_conv2d_readvariableop_resource:226
(conv2d_9_biasadd_readvariableop_resource:29
&dense_8_matmul_readvariableop_resource:	?dd5
'dense_8_biasadd_readvariableop_resource:d8
&dense_9_matmul_readvariableop_resource:d5
'dense_9_biasadd_readvariableop_resource:
identity??conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2v
dropout_12/IdentityIdentityconv2d_8/Relu:activations:0*
T0*/
_output_shapes
:?????????2?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0?
conv2d_9/Conv2DConv2Ddropout_12/Identity:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2v
dropout_13/IdentityIdentityconv2d_9/Relu:activations:0*
T0*/
_output_shapes
:?????????2`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 2  ?
flatten_4/ReshapeReshapedropout_13/Identity:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????d?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?dd*
dtype0?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????dm
dropout_14/IdentityIdentitydense_8/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
dense_9/MatMulMatMuldropout_14/Identity:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599749

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_599189

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?+
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599570
input_17)
conv2d_8_599545:2
conv2d_8_599547:2)
conv2d_9_599551:22
conv2d_9_599553:2!
dense_8_599558:	?dd
dense_8_599560:d 
dense_9_599564:d
dense_9_599566:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?"dropout_13/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?(gaussian_noise_4/StatefulPartitionedCall?
(gaussian_noise_4/StatefulPartitionedCallStatefulPartitionedCallinput_17*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599417?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall1gaussian_noise_4/StatefulPartitionedCall:output:0conv2d_8_599545conv2d_8_599547*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599178?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0)^gaussian_noise_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_599385?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv2d_9_599551conv2d_9_599553*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599202?
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_599352?
flatten_4/PartitionedCallPartitionedCall+dropout_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_599221?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_599558dense_8_599560*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_599234?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_599313?
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_9_599564dense_9_599566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_599257w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall)^gaussian_noise_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2T
(gaussian_noise_4/StatefulPartitionedCall(gaussian_noise_4/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_17
?
?
)__inference_conv2d_9_layer_call_fn_599816

inputs!
unknown:22
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599202w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
k
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599760

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*/
_output_shapes
:?????????*
dtype0?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*/
_output_shapes
:??????????
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*/
_output_shapes
:?????????a
addAddV2inputsrandom_normal:z:0*
T0*/
_output_shapes
:?????????W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599541
input_17)
conv2d_8_599516:2
conv2d_8_599518:2)
conv2d_9_599522:22
conv2d_9_599524:2!
dense_8_599529:	?dd
dense_8_599531:d 
dense_9_599535:d
dense_9_599537:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
 gaussian_noise_4/PartitionedCallPartitionedCallinput_17*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599165?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)gaussian_noise_4/PartitionedCall:output:0conv2d_8_599516conv2d_8_599518*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599178?
dropout_12/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_599189?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv2d_9_599522conv2d_9_599524*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599202?
dropout_13/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_599213?
flatten_4/PartitionedCallPartitionedCall#dropout_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_599221?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_599529dense_8_599531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_599234?
dropout_14/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_599245?
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_9_599535dense_9_599537*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_599257w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_17
?
d
+__inference_dropout_12_layer_call_fn_599790

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_599385w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_dense_9_layer_call_fn_599921

inputs
unknown:d
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_599257o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
F
*__inference_flatten_4_layer_call_fn_599859

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_599221a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599202

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_599931

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_599245

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_599885

inputs1
matmul_readvariableop_resource:	?dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????d
 
_user_specified_nameinputs
?2
?
!__inference__wrapped_model_599154
input_17N
4sequential_4_conv2d_8_conv2d_readvariableop_resource:2C
5sequential_4_conv2d_8_biasadd_readvariableop_resource:2N
4sequential_4_conv2d_9_conv2d_readvariableop_resource:22C
5sequential_4_conv2d_9_biasadd_readvariableop_resource:2F
3sequential_4_dense_8_matmul_readvariableop_resource:	?ddB
4sequential_4_dense_8_biasadd_readvariableop_resource:dE
3sequential_4_dense_9_matmul_readvariableop_resource:dB
4sequential_4_dense_9_biasadd_readvariableop_resource:
identity??,sequential_4/conv2d_8/BiasAdd/ReadVariableOp?+sequential_4/conv2d_8/Conv2D/ReadVariableOp?,sequential_4/conv2d_9/BiasAdd/ReadVariableOp?+sequential_4/conv2d_9/Conv2D/ReadVariableOp?+sequential_4/dense_8/BiasAdd/ReadVariableOp?*sequential_4/dense_8/MatMul/ReadVariableOp?+sequential_4/dense_9/BiasAdd/ReadVariableOp?*sequential_4/dense_9/MatMul/ReadVariableOp?
+sequential_4/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0?
sequential_4/conv2d_8/Conv2DConv2Dinput_173sequential_4/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
?
,sequential_4/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential_4/conv2d_8/BiasAddBiasAdd%sequential_4/conv2d_8/Conv2D:output:04sequential_4/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2?
sequential_4/conv2d_8/ReluRelu&sequential_4/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2?
 sequential_4/dropout_12/IdentityIdentity(sequential_4/conv2d_8/Relu:activations:0*
T0*/
_output_shapes
:?????????2?
+sequential_4/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0?
sequential_4/conv2d_9/Conv2DConv2D)sequential_4/dropout_12/Identity:output:03sequential_4/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
?
,sequential_4/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential_4/conv2d_9/BiasAddBiasAdd%sequential_4/conv2d_9/Conv2D:output:04sequential_4/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2?
sequential_4/conv2d_9/ReluRelu&sequential_4/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2?
 sequential_4/dropout_13/IdentityIdentity(sequential_4/conv2d_9/Relu:activations:0*
T0*/
_output_shapes
:?????????2m
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 2  ?
sequential_4/flatten_4/ReshapeReshape)sequential_4/dropout_13/Identity:output:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????d?
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?dd*
dtype0?
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dz
sequential_4/dense_8/ReluRelu%sequential_4/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
 sequential_4/dropout_14/IdentityIdentity'sequential_4/dense_8/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
sequential_4/dense_9/MatMulMatMul)sequential_4/dropout_14/Identity:output:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_4/dense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp-^sequential_4/conv2d_8/BiasAdd/ReadVariableOp,^sequential_4/conv2d_8/Conv2D/ReadVariableOp-^sequential_4/conv2d_9/BiasAdd/ReadVariableOp,^sequential_4/conv2d_9/Conv2D/ReadVariableOp,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2\
,sequential_4/conv2d_8/BiasAdd/ReadVariableOp,sequential_4/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_8/Conv2D/ReadVariableOp+sequential_4/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_4/conv2d_9/BiasAdd/ReadVariableOp,sequential_4/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_9/Conv2D/ReadVariableOp+sequential_4/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_17
?
G
+__inference_dropout_14_layer_call_fn_599890

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_599245`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
j
1__inference_gaussian_noise_4_layer_call_fn_599745

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599417w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_599795

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_599807

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
__inference__traced_save_599978
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*h
_input_shapesW
U: :2:2:22:2:	?dd:d:d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:2: 

_output_shapes
:2:,(
&
_output_shapes
:22: 

_output_shapes
:2:%!

_output_shapes
:	?dd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::	

_output_shapes
: 
?
G
+__inference_dropout_12_layer_call_fn_599785

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_599189h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599827

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
-__inference_sequential_4_layer_call_fn_599635

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2
	unknown_3:	?dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_599472o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_14_layer_call_and_return_conditional_losses_599313

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????dC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????do
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????di
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????dY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_599234

inputs1
matmul_readvariableop_resource:	?dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????d
 
_user_specified_nameinputs
?

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_599385

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
G
+__inference_dropout_13_layer_call_fn_599832

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_599213h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_599257

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
-__inference_sequential_4_layer_call_fn_599512
input_17!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2
	unknown_3:	?dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_599472o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_17
?H
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599735

inputsA
'conv2d_8_conv2d_readvariableop_resource:26
(conv2d_8_biasadd_readvariableop_resource:2A
'conv2d_9_conv2d_readvariableop_resource:226
(conv2d_9_biasadd_readvariableop_resource:29
&dense_8_matmul_readvariableop_resource:	?dd5
'dense_8_biasadd_readvariableop_resource:d8
&dense_9_matmul_readvariableop_resource:d5
'dense_9_biasadd_readvariableop_resource:
identity??conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpL
gaussian_noise_4/ShapeShapeinputs*
T0*
_output_shapes
:h
#gaussian_noise_4/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    j
%gaussian_noise_4/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
3gaussian_noise_4/random_normal/RandomStandardNormalRandomStandardNormalgaussian_noise_4/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0?
"gaussian_noise_4/random_normal/mulMul<gaussian_noise_4/random_normal/RandomStandardNormal:output:0.gaussian_noise_4/random_normal/stddev:output:0*
T0*/
_output_shapes
:??????????
gaussian_noise_4/random_normalAddV2&gaussian_noise_4/random_normal/mul:z:0,gaussian_noise_4/random_normal/mean:output:0*
T0*/
_output_shapes
:??????????
gaussian_noise_4/addAddV2inputs"gaussian_noise_4/random_normal:z:0*
T0*/
_output_shapes
:??????????
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0?
conv2d_8/Conv2DConv2Dgaussian_noise_4/add:z:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_12/dropout/MulMulconv2d_8/Relu:activations:0!dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2c
dropout_12/dropout/ShapeShapeconv2d_8/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????2*
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2?
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2?
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0?
conv2d_9/Conv2DConv2Ddropout_12/dropout/Mul_1:z:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
paddingVALID*
strides
?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2]
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_13/dropout/MulMulconv2d_9/Relu:activations:0!dropout_13/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2c
dropout_13/dropout/ShapeShapeconv2d_9/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????2*
dtype0f
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2?
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2?
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 2  ?
flatten_4/ReshapeReshapedropout_13/dropout/Mul_1:z:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????d?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?dd*
dtype0?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d]
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_14/dropout/MulMuldense_8/Relu:activations:0!dropout_14/dropout/Const:output:0*
T0*'
_output_shapes
:?????????db
dropout_14/dropout/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0f
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d?
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d?
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
dense_9/MatMulMatMuldropout_14/dropout/Mul_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
"__inference__traced_restore_600012
file_prefix:
 assignvariableop_conv2d_8_kernel:2.
 assignvariableop_1_conv2d_8_bias:2<
"assignvariableop_2_conv2d_9_kernel:22.
 assignvariableop_3_conv2d_9_bias:24
!assignvariableop_4_dense_8_kernel:	?dd-
assignvariableop_5_dense_8_bias:d3
!assignvariableop_6_dense_9_kernel:d-
assignvariableop_7_dense_9_bias:

identity_9??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
e
F__inference_dropout_14_layer_call_and_return_conditional_losses_599912

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????dC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????do
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????di
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????dY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_599865

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 2  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????dY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
k
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599417

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*/
_output_shapes
:?????????*
dtype0?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*/
_output_shapes
:??????????
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*/
_output_shapes
:?????????a
addAddV2inputsrandom_normal:z:0*
T0*/
_output_shapes
:?????????W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_13_layer_call_and_return_conditional_losses_599854

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

e
F__inference_dropout_13_layer_call_and_return_conditional_losses_599352

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
d
F__inference_dropout_13_layer_call_and_return_conditional_losses_599213

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????2:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
d
+__inference_dropout_14_layer_call_fn_599895

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_599313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
-__inference_sequential_4_layer_call_fn_599283
input_17!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2
	unknown_3:	?dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_599264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_17"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_179
serving_default_input_17:0?????????;
dense_90
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
m__call__
*n&call_and_return_all_conditional_losses
o_default_save_signature"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
X
0
1
2
3
+4
,5
56
67"
trackable_list_wrapper
X
0
1
2
3
+4
,5
56
67"
trackable_list_wrapper
 "
trackable_list_wrapper
?
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics

	variables
trainable_variables
regularization_losses
m__call__
o_default_save_signature
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
):'22conv2d_8/kernel
:22conv2d_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
):'222conv2d_9/kernel
:22conv2d_9/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
 trainable_variables
!regularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
#	variables
$trainable_variables
%regularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
'	variables
(trainable_variables
)regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
!:	?dd2dense_8/kernel
:d2dense_8/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
-	variables
.trainable_variables
/regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
1	variables
2trainable_variables
3regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 :d2dense_9/kernel
:2dense_9/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
-__inference_sequential_4_layer_call_fn_599283
-__inference_sequential_4_layer_call_fn_599614
-__inference_sequential_4_layer_call_fn_599635
-__inference_sequential_4_layer_call_fn_599512?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599671
H__inference_sequential_4_layer_call_and_return_conditional_losses_599735
H__inference_sequential_4_layer_call_and_return_conditional_losses_599541
H__inference_sequential_4_layer_call_and_return_conditional_losses_599570?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_599154input_17"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_gaussian_noise_4_layer_call_fn_599740
1__inference_gaussian_noise_4_layer_call_fn_599745?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599749
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599760?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_conv2d_8_layer_call_fn_599769?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599780?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_12_layer_call_fn_599785
+__inference_dropout_12_layer_call_fn_599790?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_12_layer_call_and_return_conditional_losses_599795
F__inference_dropout_12_layer_call_and_return_conditional_losses_599807?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_conv2d_9_layer_call_fn_599816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599827?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_13_layer_call_fn_599832
+__inference_dropout_13_layer_call_fn_599837?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_13_layer_call_and_return_conditional_losses_599842
F__inference_dropout_13_layer_call_and_return_conditional_losses_599854?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_flatten_4_layer_call_fn_599859?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_4_layer_call_and_return_conditional_losses_599865?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_8_layer_call_fn_599874?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_8_layer_call_and_return_conditional_losses_599885?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_14_layer_call_fn_599890
+__inference_dropout_14_layer_call_fn_599895?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_14_layer_call_and_return_conditional_losses_599900
F__inference_dropout_14_layer_call_and_return_conditional_losses_599912?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_9_layer_call_fn_599921?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_9_layer_call_and_return_conditional_losses_599931?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_599593input_17"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_599154x+,569?6
/?,
*?'
input_17?????????
? "1?.
,
dense_9!?
dense_9??????????
D__inference_conv2d_8_layer_call_and_return_conditional_losses_599780l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????2
? ?
)__inference_conv2d_8_layer_call_fn_599769_7?4
-?*
(?%
inputs?????????
? " ??????????2?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_599827l7?4
-?*
(?%
inputs?????????2
? "-?*
#? 
0?????????2
? ?
)__inference_conv2d_9_layer_call_fn_599816_7?4
-?*
(?%
inputs?????????2
? " ??????????2?
C__inference_dense_8_layer_call_and_return_conditional_losses_599885]+,0?-
&?#
!?
inputs??????????d
? "%?"
?
0?????????d
? |
(__inference_dense_8_layer_call_fn_599874P+,0?-
&?#
!?
inputs??????????d
? "??????????d?
C__inference_dense_9_layer_call_and_return_conditional_losses_599931\56/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? {
(__inference_dense_9_layer_call_fn_599921O56/?,
%?"
 ?
inputs?????????d
? "???????????
F__inference_dropout_12_layer_call_and_return_conditional_losses_599795l;?8
1?.
(?%
inputs?????????2
p 
? "-?*
#? 
0?????????2
? ?
F__inference_dropout_12_layer_call_and_return_conditional_losses_599807l;?8
1?.
(?%
inputs?????????2
p
? "-?*
#? 
0?????????2
? ?
+__inference_dropout_12_layer_call_fn_599785_;?8
1?.
(?%
inputs?????????2
p 
? " ??????????2?
+__inference_dropout_12_layer_call_fn_599790_;?8
1?.
(?%
inputs?????????2
p
? " ??????????2?
F__inference_dropout_13_layer_call_and_return_conditional_losses_599842l;?8
1?.
(?%
inputs?????????2
p 
? "-?*
#? 
0?????????2
? ?
F__inference_dropout_13_layer_call_and_return_conditional_losses_599854l;?8
1?.
(?%
inputs?????????2
p
? "-?*
#? 
0?????????2
? ?
+__inference_dropout_13_layer_call_fn_599832_;?8
1?.
(?%
inputs?????????2
p 
? " ??????????2?
+__inference_dropout_13_layer_call_fn_599837_;?8
1?.
(?%
inputs?????????2
p
? " ??????????2?
F__inference_dropout_14_layer_call_and_return_conditional_losses_599900\3?0
)?&
 ?
inputs?????????d
p 
? "%?"
?
0?????????d
? ?
F__inference_dropout_14_layer_call_and_return_conditional_losses_599912\3?0
)?&
 ?
inputs?????????d
p
? "%?"
?
0?????????d
? ~
+__inference_dropout_14_layer_call_fn_599890O3?0
)?&
 ?
inputs?????????d
p 
? "??????????d~
+__inference_dropout_14_layer_call_fn_599895O3?0
)?&
 ?
inputs?????????d
p
? "??????????d?
E__inference_flatten_4_layer_call_and_return_conditional_losses_599865a7?4
-?*
(?%
inputs?????????2
? "&?#
?
0??????????d
? ?
*__inference_flatten_4_layer_call_fn_599859T7?4
-?*
(?%
inputs?????????2
? "???????????d?
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599749l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
L__inference_gaussian_noise_4_layer_call_and_return_conditional_losses_599760l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
1__inference_gaussian_noise_4_layer_call_fn_599740_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
1__inference_gaussian_noise_4_layer_call_fn_599745_;?8
1?.
(?%
inputs?????????
p
? " ???????????
H__inference_sequential_4_layer_call_and_return_conditional_losses_599541t+,56A?>
7?4
*?'
input_17?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599570t+,56A?>
7?4
*?'
input_17?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599671r+,56??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_599735r+,56??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_4_layer_call_fn_599283g+,56A?>
7?4
*?'
input_17?????????
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_599512g+,56A?>
7?4
*?'
input_17?????????
p

 
? "???????????
-__inference_sequential_4_layer_call_fn_599614e+,56??<
5?2
(?%
inputs?????????
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_599635e+,56??<
5?2
(?%
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_599593?+,56E?B
? 
;?8
6
input_17*?'
input_17?????????"1?.
,
dense_9!?
dense_9?????????