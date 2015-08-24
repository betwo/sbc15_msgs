std_msgs/Header header
int32[] type             # type of objects
int32[] x               # horizontal coordinates of centers in pixel
int32[] y               # vertical coordinates of centers in pixel
float64[] theta_x       # horizontal angle between centers and the center of the image
float64[]  theta_y      # vertical angle between centers and the center ofimage

int32 OBJECT_CUP = 1
int32 OBJECT_BATTERY = 2
int32 OBJECT_BASE = 3
