#
# This file sets common params for key phrase training.
# Update log directory and dataset path if required.
#

# Update dataset path if needed
# export DATA_DIR=./data/speech_commands_sAI2/
# export DATA_DIR=./data/speech_commands_set2/
export DATA_DIR=../data/speech_commands_set_2_SR_8000/

# Configure training log directory if needed
export FILTER_TRAIN_DIR=./Logs/set8_seven.filter
export TRAIN_DIR=./Logs/set_prefilter

export NETWORK=tinyvgg_conv
export TRAIN_OPT=--optimizer=Adam

# Network ID
export FILTER_NET_ID=cmd_seven.filter
export NET_ID=cmd_seven

# Keywords to train
# export FILTER_TRAIN_KEYWORD="backward,bed,bird,cat,dog,down,\
# eight,five,follow,forward,four,go,happy,house,left,marvin,nine,no,off,on,one,\
# right,seven,sheila,six,stop,three,tree,two,up,visual,wow,yes,zero"
export FILTER_TRAIN_KEYWORD="marvin,sheila,on,off,up,down,go,stop,left,right,yes,learn,follow,visual,no,cat,dog,\
bird,tree,house,bed,wow,happy,zero,one,two,three,four,five,six,seven,eight,nine,forward,backward"
# export FILTER_TRAIN_KEYWORD="marvin,sheila,on,off,up,down,go,stop,left,right,yes,learn,visual,follow,\
# no,cat,dog,bird,tree,house,bed,wow,happy,zero,one,two,three,four,five,six,seven,eight,nine,forward,backward"

# export TRAIN_KEYWORD="zero,one,two,three,four,five,six,seven,eight,nine,on,off,yes,no"
# export TRAIN_KEYWORD="seven,marvin,on,happy"
export TRAIN_KEYWORD="left,right,forward,backward"


export COMMON_OPT="--model_architecture=$NETWORK \
--sample_rate=8000 \
--downsample=1 \
--no_prefilter_bias \
--clip_duration_ms=1040 \
--time_shift_ms=140.0 \
--window_size_ms=32.0 \
--window_stride_ms=16.0 \
--dct_coefficient_count=64 \
--background_volume=0.5"
