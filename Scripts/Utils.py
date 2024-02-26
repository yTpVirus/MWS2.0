from collections import OrderedDict
import os;
import re;

#this holds regex Rules, Don't mess with it if you dont know what are you doing!;
#Consists on [[regex,"replace"]];
Types = [
        [r'"[^"]*"', ''],
        [r'-',''],
        [r'=',''],
        [r'nil',''],
        [r'\s\d+\s|\s\d+$|^\d+\s',''],
        [r'[^\x00-\x7F]+',''],
        [r' +',''],
        ];
def removeTypesFromFunction(functionText = str):
    # we search for all patterns and replace with the regex response
    for eType in Types:
        functionText = re.sub(eType[0],eType[1],functionText);
    return functionText;


def hasLineBreak(text = str):
    if re.search(r'\n',text): return True;
    return False;


def getJsonFromFile(fileName = str):
    fileName += ".json";
    if os.path.exists(fileName): 
        f = open(fileName,'r');
        return f.read();
    return False;

def writeJsonToFile(theJson = str,fileName = str):
    fileName += ".json";
    if os.path.exists(fileName) == False:
        f = open(fileName,"x");
        f.write(theJson);
        f.close();
    else:
        f = open(fileName,"w");
        f.write(theJson);
        f.close;

def isValidArgument(argument):
    aMatch = re.search(r'[^:]*:',argument.findParent().text);
    if aMatch: 
        return aMatch.group(0).strip(),aMatch.string.replace(aMatch.group(0).strip(),'');
    return False;

def getArgumentsTable(arguments):
    validArguments = OrderedDict(); #creates a new dict to prevent repeated values
    if arguments != False:
            for argument in arguments:
                iva = isValidArgument(argument);
                if argument != '' and iva:
                    validArguments[iva] = argument;
    return validArguments;



def makeLuaFunction(functionBody = str, arguments = []):
    validArguments = []; #creates a new dict to prevent repeated values
    if arguments != False:
            for argument in arguments:
                if argument != '':
                    validArguments.append(argument.findParent().text);
    for validArgument in validArguments: # now we iterate over the valid arguments and mount the function body;
        functionBody += str.replace(removeTypesFromFunction(validArgument),":","")+",";
    return functionBody; #now we can return the function body to the function caller;

def writeInLuaFile(fileName = str,function = str):
    fileName += ".lua";
    f = open(fileName,"a");
    f.write(function+"\n");
    return True;

def writeToLuaFile(fileName = str,text = str):
    fileName += ".lua";
    f = open(fileName,"a");
    f.write(text+"\n");
    return True;

def getContainerType(container,side): #this is a simple function that returns if the container type parsed is the same as the side required.
    if container.findParent(lambda tag: (tag.name == 'div'), class_ = side) != None:
        return side;
    return False;

def getDesiredContainer(mainContainer,side = str,toSearch = {}):
    if mainContainer != None:
        allContainers = mainContainer.find_all(lambda tag: (tag.name == 'h2' or tag.name == 'h3'), string = toSearch); #Finds the desired component based on the Component List Provided
        for container in allContainers: # for each container in all Containers
            ServerContainer = getContainerType(container,'clientContent'); #check if the container is Server
            ClientContainer = getContainerType(container,'serverContent'); #check if the container is Client
            if ServerContainer == side or ClientContainer == side: #if one of the containers match the side required, return it
                return container;
            elif ServerContainer == False and ClientContainer == False:
                return mainContainer.find(lambda tag: (tag.name == 'h2' or tag.name == 'h3'), string = toSearch); #if can't find the desired container, return the first container that apply to 'toSearch' parameter
                 

def getRequiredArguments(Container,side = str):
    if Container != None:
        argumentsContainer = getDesiredContainer(Container,side,{'Required Arguments', 'Required arguments', 'required Arguments', 'required arguments'});
        if argumentsContainer != None:
            toFilter = argumentsContainer.find_next('ul').findChildren(lambda tag: (tag.name == 'b'));
            # print(toFilter); #<-- enable this only for debug reasons
            return toFilter;
        return False;
    return False;

def getOptionalArguments(Container,side = str):
    if Container != None:
        argumentsContainter = getDesiredContainer(Container,side,{'Optional Arguments','Optional arguments', 'optional Arguments', 'optional arguments'});
        if argumentsContainter != None:
            toFilter = argumentsContainter.find_all_next(lambda tag: (tag.name == 'b') and tag.find_previous(lambda tag:(tag.name == 'h2' or tag.name == 'h3'),string = {'returns','Returns'}) == None);
            # print(toFilter); #<-- enable this only for debug reasons
            return toFilter;
        return False;
    return False;