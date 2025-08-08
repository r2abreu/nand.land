PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

-- Create Course table
CREATE TABLE IF NOT EXISTS course (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
);

-- Create Section table
CREATE TABLE IF NOT EXISTS section (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  course_id INTEGER NOT NULL,
  FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE
);

-- Create Lesson table
CREATE TABLE IF NOT EXISTS lesson (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  section_id INTEGER NOT NULL,
  FOREIGN KEY (section_id) REFERENCES section(id) ON DELETE CASCADE
);

-- Insert Course
INSERT INTO course (id, name, description) VALUES
  (1, 'Nand2Tetris', 'Hands-on approach to build a computer system from the ground up, starting with basic logic gates (NAND) and culminating in the ability to run the game Tetris on it.');

-- Insert Sections under Course
INSERT INTO section (id, name, description, courseId) VALUES
  (1, 'Boolean Logic', 'Introduction to basic logic gates built from NAND: AND, OR, NOT, XOR, multiplexers, demultiplexers, and their 16-bit versions.', 1),
  (2, 'Boolean Arithmetic', 'Implementation of arithmetic circuits such as adders and ALU.', 1),
  (3, 'Sequential Logic', 'Memory units and registers.', 1);

-- Insert Lessons under Sections
INSERT INTO lesson (id, name, description, sectionId) VALUES
  -- Lessons for Boolean Logic section
  (1, 'Nand', 'The fundamental logic gate from which all other gates are built.', 1),
  (2, 'And and16', 'Bitwise AND gates, including 16-bit bitwise AND.', 1),
  (3, 'Or or16 or8way', 'Bitwise OR gates and 8-way OR gates.', 1),
  (4, 'Not not16', 'Bitwise NOT gates including 16-bit NOT.', 1),
  (5, 'Xor', 'Exclusive OR gate.', 1),
  (6, 'Mux mux16 mux4way16 mux8way16', 'Multiplexers of various sizes.', 1),
  (7, 'Dmux dmux4way dmux8way', 'Demultiplexers of various sizes.', 1),

  -- Lessons for Boolean Arithmetic section
  (8, '16-bit adder', 'Half and full adders, 16-bit adder circuit.', 2),
  (9, 'Incrementer', 'Circuit to increment binary numbers.', 2),
  (10, 'ALU', 'Arithmetic Logic Unit performs arithmetic and logical operations.', 2),

  -- Lessons for Sequential Logic section
  (11, '1-bit register', 'A register storing a single bit.', 3),
  (12, '16-bit register', 'A register storing 16 bits.', 3),
  (13, 'RAM8 to RAM16K', 'Various RAM memory units of increasing size.', 3),
  (14, 'Program Counter (PC)', 'Circuit that holds the address of the next instruction.', 3);

COMMIT;
