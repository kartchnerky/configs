#!/bin/bash

# Shortcut for creating a basic cpp file with basic main function:
function ncpp()
{
    cp ~/.code_templates/cpp/cpp_basic $1.cpp
    vim $1.cpp
}

# Shortcut for creating basic class cpp and associated header file:
function nclass() 
{
    if [ $2 == 'n' ]; then endCmd="|:tabdo wq"; else endCmd="|:tabp"; fi

    if [ -e $1.cpp ]
    then
        read -p "Class already exists. Replace it (y/n)? " replace
        if [ $replace != 'y' ]
        then
            return;
        fi
    fi
    cp ~/.code_templates/cpp_class $1.cpp
    cp ~/.code_templates/hpp_basic $1.hpp
    vim -c ":%s/ClassName/$1/g | :%s/CLASSNAME/${1^^}/g | :w | :tabnew $1.cpp | :%s/ClassName/$1/g | :w $endCmd" $1.hpp  
}

function njclass()
{
    if [ -e $1.java]
    then
        read -p "Class already exists. Replace it (y/n)? " replace
        if [ $replace != 'y' ]
        then
            return;
        fi
    fi
    if [ $1 == '-main' ]
    then
        cp ~/.my_configs/.code_templates/java/main_basic $2.java
        vim -c ":%s/ClassName/$2/g | :w" $2.java  
    else
        cp ~/.my_configs/.code_templates/java/class_basic $1.java
        vim -c ":%s/ClassName/$1/g | :w" $1.java  
    fi


}
# Shortcut for removing hidden files
function rmhidden()
{
    if [ $1 == 'all' ] # Remove all
    then 
        rm -rf ./.*
    else                # Remove by confirmation
        rm -rfi ./.*
    fi
}
