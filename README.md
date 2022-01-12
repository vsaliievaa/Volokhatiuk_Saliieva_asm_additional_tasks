# Lab work <mark>3</mark>: <mark>Assembly Language Programming. Additional tasks.</mark>
Authors (team): <mark>[Karyna Volokhatiuk](https://github.com/karyna-volokhatiuk), [Vira Saliieva](https://github.com/vsaliievaa).</mark><br>
Variant func_1: <mark>A</mark><br>
Variant func_2: <markB</mark><br>
OS: LINUX

## Before 

<mark>To run the functions on your computer, make sure GCC compiler, make utility, and flat assembler (we used version jg6x) are installed.</mark>

### Compiling

<mark>There are two ways you can compile the files. Firstly, you can go to the `func_1` or `func_2` folders and run `make` command. Executable files will be saved to `/bin` directory, from where you can run them. Secondly, you can just go to the project's folder and run the `run.sh` script in it. This script will automatically run make files in both `func_1` and `func_2` directories and, as before, save executable files to `/bin` directory.</mark>

### Installing

<mark>To install the files to run on your device, use `git clone` command or download this repository as a zip-archive and extract to some folder on your computer.</mark>

### Usage

<mark>To use .exe files with examples, run `/call_from_c` (calls an assembly function from C) or `/call_from_s` (calls the same function from assembly) files located in the `/bin` subdirectories of `func_1` or `func_2` folders. Each of them will print the result of work of corresponding function into the console.</mark>

# Results

<mark>Two assembly programs, created as the result of this work, transpose a square matrix inplace and print the result into the console. First function can be tested by executing `call_from_s` or `call_from_c` files from `func_1` folder. It transposes a NxN matrix of 64-bit unsigned integers, given as a linear one-dimensional array. Second function can be tested by executing the same files, but from `func_2` folder. It transposes a NxN matrix of unsigned 32-bit integers, given as a two-dimensional array (array
of arrays).</mark>



# Additional tasks
<mark>Both tasks from this repository are additional:
  **Task A** - given a NxN matrix of 64-bit unsigned integers as a one-dimensional array, transpose it inplace.
  **Task B** - given a NxN matrix of 32-bit unsigned integers as a two-dimensional array (array of arrays), transpose it inplace.<mark>

Output files names are: __call_from_c__, __call_from_s__

