from bs4 import BeautifulSoup;
import re;
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

#container Tags

clientContentContainer = "clientContent";
serverContentContainer = "serverContent";

# Pick Up Each Soup (gross)
ClientSoup = BeautifulSoup(clientPage.text,'html.parser');
ServerSoup = BeautifulSoup(serverPage.text,'html.parser');
# Magic happens

#Client Side
ClientFunctionsListContainer = ClientSoup.find('div',class_ = 'toc').find('ul');
ClientFunctionsListIndexes = ClientFunctionsListContainer.find_all('span',class_ = 'toctext');
#Server Side

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
                if not 'rel' in function.attrs: # Prevents the parser from picking the black containers with #release writed on them
                    
                    functionName = function.text;
                    if not functionName == 'BETA' and not functionName == "call" and not functionName == "processLineOfSight": # prevents bugs
                        # First we check if function is already searched so we don't waste time scraping what is already scraped!
                        if len(alreadySearchedClientFunctions) == 0 or (not functionName in alreadySearchedClientFunctions):

                            print(f"Scraping: {functionName}...");
                            alreadySearchedClientFunctions.append(functionName); #Add the function that's being scraped into the table

                            # Next Step we open the function page itself
                            functionLink = MainUrl+function.attrs['href'];
                            functionPage = requests.get(functionLink); #edit this if you want a specific page to open and test

                            # From now and beyond we scrape the function page
                            functionPageSoup = BeautifulSoup(functionPage.text,'html.parser');

                            # Searches for each container and store it
                            clientContainer = functionPageSoup.find('div',class_ = clientContentContainer); #tries to find the client content
                            # Now we begin to make the function format.
                            
                            # Here we Get all the arguments necessary to mount the documentation above the function!
                            requiredArguments = Utils.getRequiredArguments(clientContainer,side = clientContentContainer) or Utils.getRequiredArguments(functionPageSoup,side = clientContentContainer); #this ensures that we find the required arguments if exists.
                            optionalArguments = Utils.getOptionalArguments(clientContainer,side = clientContentContainer) or Utils.getOptionalArguments(functionPageSoup,side = clientContentContainer); #this ensures that we find the optional arguments if exists.

                            # now we begin to mount the function and write the arguments above it
                            finalFunction = f'function {functionName}(';

                            #first we mount the argument bodies and write them
                            requiredArgumentsList = Utils.getArgumentsTable(requiredArguments);
                            if len(requiredArgumentsList) > 0:
                                Utils.writeToLuaFile('allClientFunctions','---Required Arguments');
                                for rArgument in requiredArgumentsList:
                                    # rTupleArgument = Utils.isValidArgument(rArgument);
                                    finalFunction += str.replace(Utils.removeTypesFromFunction(rArgument[0]),':',',');
                                    breakArgument = re.sub(r"\n", r"\n---",rArgument[1]);
                                    Utils.writeToLuaFile('allClientFunctions',f'---@param {str.replace(Utils.removeTypesFromFunction(rArgument[0]),":"," any:")}{breakArgument}');
                            
                            #Now we write the optional arguments
                            optionalArgumentsList = Utils.getArgumentsTable(optionalArguments);
                            if len(optionalArgumentsList) > 0:
                                Utils.writeToLuaFile('allClientFunctions','---Optional Arguments');
                                for oArgument in optionalArgumentsList:
                                    breakArgument = re.sub(r"\n", r"\n---",oArgument[1]);
                                    Utils.writeToLuaFile('allClientFunctions',f'---@param {str.replace(Utils.removeTypesFromFunction(oArgument[0]),":"," any:")}{breakArgument}');
                                finalFunction += '...';
                            finalFunction += ') end';
                            finalFunction = finalFunction.replace(',)',')');
                            #last we mount the function itself and write it
                            Utils.writeToLuaFile('allClientFunctions',finalFunction);
            theJson = json.dumps(alreadySearchedClientFunctions);
            Utils.writeJsonToFile(theJson,'alreadySearchedClientFunctions');
# End of Client Scraping Function

scrapeClientFunctions();


# In this Part we start to Scrape all Server Functions!

# End of Server Scraping Function