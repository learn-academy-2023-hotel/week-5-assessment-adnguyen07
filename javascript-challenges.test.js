// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

describe("coder", () => {
    it("Takes in a string and returns a string with a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0.", () => {
        expect(coder(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
        expect(coder(secretCodeWord2)).toEqual("G0bbl3dyg00k")
        expect(coder(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
})

// b) Create the function that makes the test pass.

// Pseudo code:

// Input: a string
// Output: a string with a coded message

// Create a function that takes in a string.
const coder = (string) => {
    // Use replaceAll method to substitute numbers for letters in string.
    return string.replaceAll('a', '4').replaceAll('e', '3').replaceAll('i', '1').replaceAll('o', '0').replaceAll('A', '4').replaceAll('E', '3').replaceAll('I', '1').replaceAll('O', '0')
}

console.log(coder(secretCodeWord1))
console.log(coder(secretCodeWord2))
console.log(coder(secretCodeWord3))

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

describe("fullHouse", () => {
    it("Takes in an array of 5 numbers and determines whether or not the array is a 'full house'. A full house is exactly one pair and one three of a kind.", () => {
        expect(fullHouse(hand1)).toEqual(true)
        expect(fullHouse(hand2)).toEqual(false)
        expect(fullHouse(hand3)).toEqual(false)
        expect(fullHouse(hand4)).toEqual(true)
    })
})

// b) Create the function that makes the test pass.

// Pseudo code:

// Input: an array of 5 numbers
// Output: true or false

// Create a function that takes in an array.
const fullHouse = (array) => {
    // Create an empty object.
    const countElem = {}
    // Create a for loop that will iterate over each array element and count the number of each element. These counts are pushed into the empty object.
    for (const elem of array) {
        countElem[elem] = (countElem[elem] || 0) + 1
    }
    // Use Object.values method to put the count values into an array.
    const amount = Object.values(countElem)
    // Use the logical and to see if the array contains both 2 and 3 counts of the same values.
    return amount.includes(2) && amount.includes(3)
}

console.log(fullHouse(hand1))
console.log(fullHouse(hand2))
console.log(fullHouse(hand3))
console.log(fullHouse(hand4))