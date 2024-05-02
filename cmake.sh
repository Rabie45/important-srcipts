#!/bin/bash

read -p "Enter project name: " projectname

echo "
#include<iostream>

int main(){

std::cout<<"hello, world"<<std::endl;
return 0;

}
" > ${projectname}.cpp

echo "
cmake_minimum_required(VERSION 3.22)
project(${projectname})
add_executable(main main.cpp)
" > CMakeLists.txt

`mkdir build`
echo `cd build`