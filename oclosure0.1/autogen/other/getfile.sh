#!/bin/sh

cat $1 |
egrep "^goog|@param|@extends|@constructor|@enum|@return|@type|@protected|@private" |
sed '/ \* /s///g' |
sed '/ = function.*/s///g' |
sed '/ =.*/s///g' |
sed '/}.*/s//}/g' | 
sed '/.prototype./s///g' |
sed '/.*(.*/s///' |
sed '/^goog./s///' |
sed '/;/s///'