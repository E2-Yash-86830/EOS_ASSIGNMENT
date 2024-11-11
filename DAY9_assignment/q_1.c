#include<stdio.h>
#include<unistd.h>
#include <sys/wait.h>
// parent --> child1 --> child2 --> child3-->child4-->child5
int main()
{
    int i,pid1,s1,pid2,s2,pid3,s3,pid4,s4,pid5,s5,s,cnt=1;
        pid1=fork();
        if (pid1==0)  
        {
        for(i=1; i<=3; i++) 
            {
                printf("child1: %d\n", i);
                printf("count=%d pid=%d\n",cnt,getpid());
                sleep(5);
                cnt++;
            }   
                _exit(0);  
        }
        pid2=fork();
        if (pid2==0) 
        { 
            for(i=1; i<=3; i++) 
            {
                printf("child2: %d\n", i);
                printf("count=%d pid=%d\n",cnt,getpid());
                sleep(5);
                cnt++;
            }   
                _exit(0);
        }
        pid3=fork();
        if (pid3==0)  
        {
            for(i=1; i<=3; i++) 
            {
                printf("child3: %d\n", i);
                printf("count=%d pid=%d\n",cnt,getpid());
                sleep(5);
                cnt++;
            }   
                _exit(0);
        } 
        pid4=fork();
        if (pid4==0)  
        {
            for(i=1; i<=3; i++) 
            {
                printf("child4: %d\n", i);
                printf("count=%d pid=%d\n",cnt,getpid());
                sleep(5);
                cnt++;
            }   
                _exit(0);          
        }       
        pid5=fork();
        if (pid5==0)  
        {
            for(i=1; i<=3; i++) 
            {
                printf("child5: %d\n", i);
                printf("count=%d pid=%d\n",cnt,getpid());
                sleep(5);
                cnt++;
            }
                
                _exit(0);
        } 
            
   
    for(i=1; i<=3; i++) 
    {
        printf("Parent: %d\n", i);
        printf("count=%d pid=%d\n",cnt,getpid());
        sleep(5);
        cnt++;
    }
        

    while(waitpid(-1, &s, 0) > 0)
        printf("child exit status: %d\n", WEXITSTATUS(s));

    return 0;
}