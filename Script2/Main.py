from bs4 import BeautifulSoup;
import requests;
import Utils;
import json;
#end of imports

alreadySearchedClientFunctions = []; # This Will be loaded when the program runs.
alreadySearchedServerFunctions = []; # This Will be loaded when the program runs.
# it will prevent that already scraped functions will be scraped again.


# This is the reference to wiki page of each element to be searched;
MainUrl = "https://wiki.multitheftauto.com";
ClientFunctionsUrl = "https://wiki.multitheftauto.com/wiki/Client_Scripting_Functions";
ServerFunctionsUrl = "https://wiki.multitheftauto.com/wiki/Server_Scripting_Functions";
# Get The Pages!
clientPage = requests.get(ClientFunctionsUrl);
serverPage = requests.get(ServerFunctionsUrl);
# Pick Up Each Soup (gross)
ClientSoup = BeautifulSoup(clientPage.text,'html.parser');
ServerSoup = BeautifulSoup(serverPage.text,'html.parser');
# Magic happens
ClientFunctionsListContainer = ClientSoup.find('div',class_ = 'toc').find('ul');
ClientFunctionsListIndexes = ClientFunctionsListContainer.find_all('span',class_ = 'toctext');

# In this Part we start to Scrape all Client Functions!
def scrapeClientFunctions():
    # Before the Scraping we need to Check the already Scraped functions to Bypass existing ones!

    clientFunctionsJson = Utils.getJsonFromFile("alreadySearchedClientFunctions");
    if clientFunctionsJson:
        alreadySearchedClientFunctions = json.loads(clientFunctionsJson);
    else:
        alreadySearchedClientFunctions = [];
    # After Load we can continue!

    for index in ClientFunctionsListIndexes:
        indexText = index.text; #this is a Function Index Container (the family of the functions)
        FunctionsContainer = ClientSoup.find(lambda tag: (tag.name == 'h2' or tag.name == 'h3'),string = indexText).find_next('ul').find_all('a'); #this finds the functions list on Main Client Wiki page
        for function in FunctionsContainer:
            if not 'rel' in function.attrs: #i forrgot what it does
                functionName = function.text;
                if not functionName == 'BETA': #Beta text issues
                    print(f'Scraping {functionName}...');
            







            
# End of Client Scraping Function

scrapeClientFunctions();


# In this Part we start to Scrape all Server Functions!

# End of Server Scraping