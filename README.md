# Assembly Language Programs for COA

![Language](https://img.shields.io/badge/Language-Assembly-blue.svg)

## Description

This repository is a collection of assembly language programs written for educational purposes, focusing on the fundamental concepts of **Computer Organization and Architecture (COA)**.

These programs are designed to be run on an LC-3 (Little Computer 3) simulator, such as **LCsim**, to demonstrate various computational and logical operations at a low level.

## Software Requirement

To run these programs, you will need an **LC-3 simulator**. The original development was done using a simulator named `LCsim`. You can use any compatible LC-3 simulator, such as:
* [LC-3 Web Simulator](https://wchargin.com/lc3web/)
* [PennSim](https://www.cis.upenn.edu/~milom/cse240-Fall06/pennsim/PennSim.jar)
* The `lc3tools` package (which includes `lc3as` and `lc3sim`)

## How to Run

1.  **Open your LC-3 Simulator:** Launch the simulator of your choice.
2.  **Assemble:** Most simulators have an "Assemble" option. Load one of the `.asm` files (e.g., `add_sum.asm`) into the assembler. This will convert the assembly code into machine code (often creating an `.obj` file).
3.  **Load:** Load the assembled object file (`.obj`) into the simulator's memory.
4.  **Run:** Use the simulator's controls (e.g., `Run`, `Step Into`, `Step Over`) to execute the program. You can monitor the registers and memory to see the program's operations in real-time.

## Program List

This repository contains the following programs:

| File Name | Description |
| :--- | :--- |
| `README.md` | You are reading it. |
| `add_sum.asm` | Adds a series of numbers or calculates a sum. |
| `and_or.asm` | Demonstrates logical AND / OR operations. |
| `bgt.asm` | Implements a "Branch if Greater Than" conditional jump. |
| `branch.asm` | Demonstrates various branching and conditional logic. |
| `data.asm` | Contains examples of data declaration and storage. |
| `even.asm` | Checks if a given number is even or odd. |
| `even_count.asm` | Counts the total number of even numbers in a set. |
| `for.asm` | Implements a 'for' loop structure. |
| `for_add.asm` | Uses a 'for' loop to perform repeated addition. |
| `maximum.asm` | Finds the maximum value in a list of numbers. |
| `mill_info_data.asm` | Stores specific information or data; (purpose to be detailed). |
| `multiplication_table.asm` | Generates and displays a multiplication table. |
| `print.asm` | A utility to print characters or strings to the console. |
| `print_console.asm` | Demonstrates how to output text directly to the console. |
| `sum_user.asm` | Prompts the user for input and calculates the sum. |
| `text_1.asm` | An example of text or string manipulation. |
| `vote.asm` | A program to simulate a simple voting or counting mechanism. |

## Contributing

Contributions are welcome! If you have new programs, fixes, or improvements, please feel free to:
1.  Fork the repository.
2.  Create a new branch (`git checkout -b feature/YourFeature`).
3.  Commit your changes (`git commit -m 'Add some feature'`).
4.  Push to the branch (`git push origin feature/YourFeature`).
5.  Open a Pull Request.

## License

This project is open-source and available for educational use. You may specify a license if you wish (e.g., [MIT License](https://opensource.org/licenses/MIT)).
