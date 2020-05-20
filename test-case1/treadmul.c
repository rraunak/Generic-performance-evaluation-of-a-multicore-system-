
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h> //pthread library
#include <time.h>

//structure to define value of each thread and the sum returned
struct sum_runner_struct
{
 long long limit;
 long long answer;
};

//thread function
void* sum_runner(void* arg)
{
 struct sum_runner_struct *arg_struct = (struct sum_runner_struct*) arg; //initializing the structure
 long long sum = 0; //initializing initial sum as 0
 srand(time(0)); //to create different random numbers for each execution
 long long* a = malloc(arg_struct->limit*sizeof(*a)); //allocating memory
 for (long long i = 0; i <= arg_struct->limit; i++)
 {
  a[i]=rand();//storing random integers in each memory location
  sum =sum+a[i]+i; //find sum
 }
 arg_struct->answer = sum;// return sum
 pthread_exit(0);
 free(a);//de allocate the memory
}

//main function
int main(int argc, char **argv)
{
//function for exit if no arguments passed
 if (argc < 2)
 {
  printf("Usage: %s <num1> <num2> ... <num-n>\n", argv[0]);
  exit(-1);
 }
int num_args = argc - 1; //count number of arguments
struct sum_runner_struct args[num_args]; //take the given argument as input
pthread_t tids[num_args];  //create threads equal to number of arguments specified at command line

for (int i = 0; i<num_args; i++)
{
 args[i].limit = atoll(argv[i + 1]); //converts the strings passed at command line argument to long long integer 

 
 
 pthread_attr_t attr; //specify pthread attribute
 pthread_attr_init(&attr); //initialize pthread attribute
 pthread_create(&tids[i], &attr, sum_runner, &args[i]); //create the threads
}
for (int i=0; i < num_args; i++)
{

 pthread_join(tids[i], NULL); //terminate the threads
 printf("Sum is %lld\n", args[i].answer);//print sum of each thread 
}
}
