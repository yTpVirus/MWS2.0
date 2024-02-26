import os;
import re;

#this holds regex Rules, Don't mess with it if you dont know what are you doing!;
#Consists on [[regex,"replace"]];
Types = [
        [r'""',''],
        [r' +',' '],
        [r',',' '],
        [r'\(([^)]*)\)', lambda x: f'({x.group(1).replace("  ", ", ")})'],
        [r'player',''],
        [r'number',''],
        [r'ped',''],
        [r'projectile',''],
        [r'timer',''],
        [r'vehicle',''],
        [r'xmlnode',''],
        [r'radararea',''],
        [r'radar',''],
        [r'gui-Element',''],
        [r'light',''],
        [r'matrix',''],
        [r'vector2',''],
        [r'vector3',''],
        [r'vector4',''],
        [r'object',''],
        [r'string',''],
        [r'"checkpoint"',''],
        [r'marker',''],
        [r'guiwindow',''],
        [r'int',''],
        [r'float',''],
        [r'boolean',''],
        [r'bool',''],
        [r'element',''],
        [r'table',''],
        [r'/',''],
        [r'\[',''],
        [r']',''],
        [r'false',''],
        [r'true',''],
        [r'blip',''],
        [r'browser',''],
        [r'\.',''],
        [r'colshape',''],
        [r'nil',''],
        [r'-',''],
        [r'img',''],
        [r'var',''],
        [r'mixed',''],
        [r'txd',''],
        [r'ifp',''],
        [r'col',''],
        [r'dff',''],
        [r'\|',''],
        [r'=\s*".*"','='],
        [r'([a-zA-Z]+\s*)[=,]\s*(\d+)',r'\1\2'],
        [r'getRootElement\(\s*\)',' '],
        [r'tocolor\([^)]*\)',' '],
        [r'\b(erior)\b','interior'],
        [r'\b(umnIndex)\b','columnIndex'],
        [r'\b(orCoded)\b','colorCoded'],
        [r'\b(errup)\b','interruptable'],
        [r'\b(BetweenPos)\b','BetweenPoints'],
        [r'(?<![a-zA-Z])\s*\d+(?![a-zA-Z])',r''],
        [r'=',''],
        [r' ',''],
        [r',\)',')'],
        ];
def removeTypesFromFunction(functionText = str):
    # first we remove any text at the left side
    functionText = functionText.lstrip().rstrip();
    # After that we search for all patterns and replace with the regex response
    for eType in Types:
        functionText = re.sub(eType[0],eType[1],functionText);
    return functionText;


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

def makeLuaFunction(function = str):
    return "function "+function+" end";

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