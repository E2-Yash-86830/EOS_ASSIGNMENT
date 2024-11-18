#include<stdio.h>
#include<pthread.h>
#include<unistd.h>
#include<stdlib.h>

struct input{
    int start;
    int end;
};
struct output{
    int sum;
    int err;
};
void* sum(void *param){
    struct input *ip = (struct input *)param;
    struct output *op = (struct output *)malloc(sizeof(struct output));
    if(ip->start > ip->end){
        printf("error");
        op->err = 1;
        pthread_exit(op);
    }
    op->sum = 0;
    op->err = 0;
    for(int i = ip->start; i<= ip->end; i++){
        op->sum +=i;
    }
    printf("Thread: Calculated sum = %d\n",op->sum);
    return op;
}
int main()
{
    pthread_t th;
    struct input in = {.start = 1, .end = 10};
    struct output *out;
    pthread_create(&th, NULL, sum, &in);
    pthread_join(th,(void**)&out);
    if(out->err==0){
        printf("Main: sum of integers from %d to %d =%d\n",in.start,in.end,out->sum);
    }
    else    
    {
        printf("error calculating");
    }
    free(out);
    return 0;
}