# datasets
Data sets for the machine music project.

## Usage
Data sets ending in '\_reduced.txt' are ready to be fed to the network. These datasets are created as follows:
* List of links retrieved using the chrome extension "Web Scraper" -> Stored in files called ```links.txt```.
* wget is used to download all midi files to the 'midis' directory
```
mkdir midis
wget -i links.txt -P midis/
cd midis
```
* clean_filenames.sh is used to remove ugly characters from filenames
```
source ../clean_filenames.sh
```
* Finally, midi_to_reduced can be run to produce a \_reduced text file
```
cd ..
cd ..
python midi-reduced/midi_to_reduced.py -i datasets/<YOUR_DATASET>/midis -o data_reduced.txt
```
