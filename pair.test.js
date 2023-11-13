function isEven(number) {
    return number % 2 === 0;
  }

test('isEven function should correctly identify even numbers', () => {
    // Test even number
    expect(isEven(2)).toBe(true);
  
    // Test odd number
    expect(isEven(3)).toBe(false);
});