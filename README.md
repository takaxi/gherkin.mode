# gherkin.mode

gherkin.mode is a gherkin (which is used for Cucumber's .feature file) syntax definition for Coda 2. 

### Installation

Please checkout this repository into `~/Library/Application Support/Coda 2/Modes` as gherkin.mode 

## Features
* Highlight syntax
* Autocomplete keywords
* Comment lines out/in with Command+/
* List structure in navigation bar
* i18n support: not only "en" but other spoken languages like "ja" available

## About Autocomplete

To prevent your confusion with too many candidates, gherkin.mode suggests keywords in only 10 spoken languages below by default.

* English
* Chinese
* Spanish
* Japanese
* Portuguese
* German
* Arabic
* French
* Russian
* Korean

Top Ten Languages Used in the Web(http://www.internetworldstats.com/stats7.htm)


If you need to enable autocomplete function in all languages, go through the following steps.

* overwrite gherkin.mode/Contents/Resources/AutocompleteAdditions.txt with gherkin.mode/Contents/Resources/AutocompleteAdditions.txt.full
* restart Coda 2

## Author

* Kiyotaka NAKAYAMA (@takaxi)

## License

MIT

## etc

Any feedbacks and pull requests are welcomed.
