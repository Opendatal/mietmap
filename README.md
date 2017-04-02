Map for Flat Rental Prices
==========================
This is a map based on leaflet to display flat rental prices of German cities. 
This code gets refactored, so any German city can use this rent map.

The data is based on ads from [Immobilienscout24](http://www.immobilienscout24.de/) 
and is collected using a custom scraper written in python2. Scraper and heatmap 
generator are both part of the repo.

Usage
-----

Clone the repository:

    git clone https://github.com/Botopiaorg/mietmap.git
    cd mietmap

Create a [virtualenv] and activate it:

    virtualenv .venv
    source .venv/bin/activate

Install the dependencies:

    pip install -r requirements.txt

Run the scraper to get the prices and addresses from ImmobilienScout24:

    python scraper/scrape.py

`--help` shows the available options. Log messages are written to `scrape.log`.

Run the overlay.py to create the color overlay for the map:

    python overlay.py

Open up your browser and insert the path of the index.html in your url bar.


License
-------
Licensed under the MIT license, see the file `LICENSE`.

It's a forked project from CodeforKarlsruhe. Thanks, you are awesome!
* [mietmap-scraper](https://github.com/CodeforKarlsruhe/mietmap-scraper )
* [mietmap](https://github.com/CodeforKarlsruhe/mietmap )
* [mietmap-overlay](https://github.com/CodeforKarlsruhe/mietmap-overlay )
* [virtualenv](https://virtualenv.pypa.io/ )

