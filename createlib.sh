#!/bin/bash

read -p "Enter the name file: " projectname
echo ${projectname}
read -p "Enter the author name: " author
echo ${author}
read -p "Enter the file desciptor: " desciptor
echo ${desciptor}
echo `date`


echo "
/*********************************************************/
//
//                 Copyright ${author}
//
//
/**********************************************************/
/*
Author: ${author}
Date: `date`
*/
namespace ${projectname}{

class ${projectname}
{
public:
 ${projectname}(); // Constrcutor 
 ~${projectname}(); // Destructor

private:


}
};
" > ${projectname}.hpp

echo "
/*********************************************************/
//
//                 Copyright ${author}
//
//
/**********************************************************/
/*
Author: ${author}
Date: `date`
*/
#include \"${projectname}.hpp\"

" > ${projectname}.cpp