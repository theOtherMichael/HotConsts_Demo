#include <iostream>
#include <HotConsts/HotConsts.h>

// While debugging the program, try changing this value and saving the file!
HC(int, testConstant) = 1 + 2;

// This is defined in ExternDefinitionExample.cpp.  Try changing the value there while debugging!
HCEX(float, testExternConstant);

int main(int argc, const char * argv[])
{
    while (true)
    {
        std::cout << "The current value of testConstant is: " << testConstant << std::endl;
        std::cout << "The current value of testExternConstant is: " << testExternConstant << std::endl;
        sleep(1);
    }
    
    return 0;
}
