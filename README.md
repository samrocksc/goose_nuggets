# Solid Prep - Technical Interview Challenge Generator

This project is a comprehensive tool for generating technical interview challenges based on key software engineering principles and patterns. It uses Goose to generate challenges for SOLID principles, Clean Code concepts, Gang of Four design patterns, and Data Structures & Algorithms.

## Project Structure

- `challenge_generator.yaml` - Main recipe that orchestrates the challenge generation
- `subrecipes/` - Contains specific recipes for each challenge type:
  - `solid.yaml` - SOLID Principles challenges
  - `clean_code.yaml` - Clean Code challenges
  - `gang_of_four.yaml` - Gang of Four Design Patterns challenges
  - `data_structures.yaml` - Data Structures & Algorithms challenges
- `Makefile` - Simplified interface for generating challenges

## Prerequisites

Before using this project, you need to have [Goose](https://block.github.io/goose/) installed on your system.

## Usage

The easiest way to use this project is through the Makefile:

```bash
# Show available targets
make

# Generate SOLID principles challenges
make solid

# Generate Clean Code challenges
make cleancode

# Generate Gang of Four patterns challenges
make gof

# Generate Data Structures & Algorithms challenges
make dsa

# Generate all challenge types
make all
```

Each command will:
1. Verify that Goose is installed
2. Generate a TypeScript project
3. Create challenge files based on the specified challenge type

## Challenge Types

### SOLID Principles
Generates five refactor challenges, one for each SOLID principle:
- Single Responsibility Principle
- Open/Closed Principle
- Liskov Substitution Principle
- Interface Segregation Principle
- Dependency Inversion Principle

Each challenge includes:
- An initial code file with poor structure
- Unit tests that must pass after refactoring
- A correctly refactored solution

### Clean Code
Challenges focused on clean code principles and practices.

### Gang of Four Design Patterns
Challenges based on the classic design patterns from the "Gang of Four" book.

### Data Structures & Algorithms
Challenges focused on implementing and working with common data structures and algorithms.

## Further Reading

Ideally I'd like to create recipes for more than, so I want to include some links to things I could include in the future.  Below are the links to articles I've really enjoyed about3 each topic.

- [x] [SOLID Principles](https://www.digitalocean.com/community/conceptual-articles/s-o-l-i-d-the-first-five-principles-of-object-oriented-design)
- [x] [Clean Code](https://gist.github.com/wojteklu/73c6914cc446146b8b533c0988cf8d29)
- [x] [Gang of Four Patterns](https://www.digitalocean.com/community/tutorials/gangs-of-four-gof-design-patterns)
- [ ] [Basics of Unix Philosophy](https://cscie2x.dce.harvard.edu/hw/ch01s06.html)

## Output Structure

Generated challenges will follow this structure:
```
<ChallengeName>/
├── <challenge>.solution.ts       # Initial code with refactoring instructions
├── <challenge>.solution.test.ts  # Unit tests to validate the solution
└── <challenge>.correct.ts        # Correctly refactored solution
```

## Contributing

Feel free to contribute by:
1. Adding new challenge types
2. Improving existing challenges
3. Adding new subrecipes
4. Enhancing the documentation

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
