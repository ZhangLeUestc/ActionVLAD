IMAGENET_MODEL_DIR=models/PreTrained/imagenet-trained-CUHK
TWO_STREAM_DIR=models/PreTrained/2-stream-pretrained
ACTIONVLAD_DIR=models/PreTrained/ActionVLAD-pretrained
KMEANS_DIR=models/kmeans-init/

mkdir -p $IMAGENET_MODEL_DIR
mkdir -p $TWO_STREAM_DIR/hmdb51/rgb
mkdir -p $TWO_STREAM_DIR/hmdb51/flow
mkdir -p $ACTIONVLAD_DIR/hmdb51/rgb
mkdir -p $ACTIONVLAD_DIR/hmdb51/flow
mkdir -p $KMEANS_DIR/hmdb51/

# ImageNet pretrained models (from Limin Wang, CUHK)
## rgb
# the following model is not required
# wget https://cmu.box.com/shared/static/in0tld2qtede394yyp9kuvi592a292pf.npy -O $IMAGENET_MODEL_DIR/vgg_16_action_rgb_pretrain.caffemodel.npy
wget https://cmu.box.com/shared/static/wryzxgpftekv9svjs2ar9er02rrqv620.ckpt -O $IMAGENET_MODEL_DIR/vgg_16_action_rgb_pretrain_uptoConv5.ckpt
## flow

# Two-stream models (HMDB51)
## flow
wget https://cmu.box.com/shared/static/q7dqbis20z5ui27tz3hvug8mqg2w0tvs.ckpt -O $TWO_STREAM_DIR/hmdb51/flow/split1.ckpt
wget https://cmu.box.com/shared/static/m1lz6tii09kn379ya8gggw0iaa4f7cw2.ckpt -O $TWO_STREAM_DIR/hmdb51/flow/split2.ckpt
wget https://cmu.box.com/shared/static/brk2z9rev609o2a81p3gyztvmtpwmwke.ckpt -O $TWO_STREAM_DIR/hmdb51/flow/split3.ckpt

# ActionVLAD initialization (kmeans) (HMDB51)
## rgb
wget https://cmu.box.com/shared/static/9rq9gy0sjwyr2wxm4kt1kd4ogbzpts77.pkl -O $KMEANS_DIR/hmdb51/rgb_conv5_kmeans64.pkl
## flow

# Pretrained ActionVLAD models (HMDB51)
## rgb
wget https://cmu.box.com/shared/static/5bxkt0d2q3vfc3z4aa78xeutatjp8emn.ckpt -O $ACTIONVLAD_DIR/hmdb51/rgb/split1.ckpt
wget https://cmu.box.com/shared/static/udbld672pbw5kugk6uifcjytskp8kxyg.ckpt -O $ACTIONVLAD_DIR/hmdb51/rgb/split2.ckpt
wget https://cmu.box.com/shared/static/tmdgeia6o87a4zn7vgtewcpg5hn49cp5.ckpt -O $ACTIONVLAD_DIR/hmdb51/rgb/split3.ckpt
## flow
wget https://cmu.box.com/shared/static/s2y9jq9q74r3goncqiz5qi5g68vdrgra.ckpt -O $ACTIONVLAD_DIR/hmdb51/flow/split1.ckpt
wget https://cmu.box.com/shared/static/u4xqq7mh80a7pgg4m4pl7gxqteq8lf13.ckpt -O $ACTIONVLAD_DIR/hmdb51/flow/split2.ckpt
wget https://cmu.box.com/shared/static/rip1usq4skvbf9ldmk1lpkpf02spwuv6.ckpt -O $ACTIONVLAD_DIR/hmdb51/flow/split3.ckpt
