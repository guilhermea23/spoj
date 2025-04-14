#include<iostream>

int main() {
	int input;

	while (true) {
		std::cout << "Enter a number (42 to exit): ";
		std::cin >> input;
		if (input == 42) break;
		std::cout << input << std::endl;
	}

	return 0;
}
