# Calculadora
## Simple Shell Script Calculator

This is a simple calculator program written in Shell Script that performs basic arithmetic operations. It runs in a loop, allowing users to perform multiple calculations until they decide to exit.

---

## Features
- Supports addition (`+`), subtraction (`-`), multiplication (`*`), and division (`/`).
- Operates in an interactive loop.
- Terminates when the user types `sair` ("exit" in Portuguese).

---

## Requirements
- A Linux/Unix-based system with Shell scripting support.
- `bash` or a similar shell environment.

---

## How to Use
1. Save the script to a file, e.g., `calculator.sh`.
2. Make the script executable:
   ```bash
   chmod +x calculator.sh
   ```
3. Run the script:
   ```bash
   ./calculator.sh
   ```
4. Follow the on-screen prompts:
   - Enter the first number.
   - Enter the desired operation (`+`, `-`, `*`, `/`).
   - Enter the second number.
   - View the result.
5. To exit, type `sair` when prompted.

---

## Example Interaction
```plaintext
Digite o primeiro número: 10
Digite a operação: +
Digite o segundo número: 5
10 + 5 = 15
Digite 'sair' para terminar ou qualquer tecla para continuar: sair
```

---

## Notes
- This script only supports integer inputs.
- Ensure valid inputs for meaningful results.
- Division by zero will result in an error.

---

## Improvements and Future Work
- Add support for floating-point numbers.
- Implement error handling for invalid inputs.
- Provide additional operations like modulus (`%`) and exponentiation.
