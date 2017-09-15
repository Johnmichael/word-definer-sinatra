# Word Definer

Word Definer: _A code review for week two Ruby students._


Code Review:  _An exercise covering this weeks (and prior) lessons and concepts._

## Getting Started

The app will allow the user to write up a list of words they don't know, (but would like to learn) and then come up with their definition.

This program will be deployed on [Heroku](https://placeholder) and also should be available on [GitHub Pages](https://placeholder).


## Specifications

- User inputs string of text, program checks if string is already defined, if true asks user if they would like to add to or change the definition. if false, User selects if the string is a noun, verb, adjective, or unknown.

  - Example Input: "nohaj" - UserSelect: Verb.
  - Example Output: 'nohaj' -> (False, Undefined) -> Nohaj - _(verb)_ - _Undefined_

  - Example Input: "kupcha"
  - Example Output: (True, Defined) "Kupcha is already a word, would you like to change something about it instead?"


- User inputs string of text which will be classified as the definition.

  - Example Input on Entry of "Nohaj": Nohaj means... "to see a cloud that you didnt see 5 minutes ago"
  - Example Output: Nohaj - _(Verb)_ - "To see a cloud that you didn't see 5 minutes ago."


- User inputs string with no letters or vowels or, user inputs numbers. Program prevents input.

  - Example Input: "12343"
  - Example Output: Whoops! Numbers can't be words.

  - Example Input: "rrwd"
  - Example Output: Whoops! Remember, all words have vowels!


- User inputs string of defined word to search for it, if true the word will be displayed along with it's definition. If false, and empty page is displayed asking if the user would like to re-search or define this word instead.

  - Example Input: "code review"
  - Example Output: Code Review : _An exercise covering this weeks (and prior) lessons and concepts._

  - Example Input: "turbo-nerd"
  - Example Output: "Hmm, I can't find "Turbo-nerd" anywhere..[Let's fix that!](Link to word input page with 'userInput' as the entry)"


## Built With
#### Languages & Frameworks

- [Ruby](https://placeholder) - Development
    - [Sinatra](https://placeholder)


- [CSS](https://placeholder) - Front End Design
  - [Bootstrap](https://placeholder)

#### Resources

- [Epicodus Curriculum](https://www.learnhowtoprogram.com/courses) - Ruby


## Author

 **John Michael** - [Github](https://github.com/Johnmichael/)


## License

This project is licensed under the GNU General Public License

## Acknowledgments

_I would like to thank the following;_

- The poor sap who has to read this.
- MySpace for introducing me to design.
- World of Warcraft for introducing me to scripting.
- That guy who smuggled the coffee bean out of South America.
