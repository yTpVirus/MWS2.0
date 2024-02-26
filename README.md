# MWS 2.0

# English Part:

# ---DISCLAIMER--
This is the Multi Theft Auto Wiki Scraper 2.0, it searches for all functions and returns them in a .lua file

Unlike my last MWS project, this one uses python as the main language.

My objective is to turn this Version of the MWS an application that Multi Theft Auto Server Developers can use to get all the functions
from the MTA wiki in a '.lua' file.

# How this app might help developers:

I highly recommend that you use Visual Studio Code with the Lua Extension from Tencent. (Why?)
it's Simple. The .lua file from the MWS will come in the following format:

------EXAMPLE CODE FROM THE .lua FILE------

---Required Arguments
---@param fCenterX any: The X position of the collision polygon's position - the position that will be returned from getElementPosition.
---@param fCenterY any: The Y position of the collision polygon's position - the position that will be returned from getElementPosition.
---@param fX1 any: The 1st X position of the collision polygon's bound point
---@param fY1 any: The 1st Y position of the collision polygon's bound point
---@param fX2 any: The 2nd X position of the collision polygon's bound point
---@param fY2 any: The 2nd Y position of the collision polygon's bound point
---@param fX3 any: The 3rd X position of the collision polygon's bound point
---@param fY3 any: The 3rd Y position of the collision polygon's bound point
---@param ... any: From the 3rd position you can have as many points as you require to create the colshape.
function createColPolygon(fCenterX,fCenterY,fX1,fY1,fX2,fY2,fX3,fY3,...) end

------EXAMPLE CODE FROM THE .lua FILE------

And the Lua extension from Tencent will read those infos and show on the intellisense, making your coding experience much easier.
And unlike the Multi Theft Auto Lua Extension on VSCode, my application will be able to detect and update the functions list when
any MTA update comes out.

*MY APPLICATION IS ON DEVELOPMENT, SO DON'T EXPECT TO BE A DEFINITIVE SOLUTION YET*

# How to use: (Still in development)

(The Application is still in development so it only gives the client functions for now)


# Final Observation: 

I plan to finish this project soon, but for now i don't have much time to spend on this project.


# Portuguese Part:

# ---DISCLAIMER--
Esse é o Multi Theft Auto Wiki Scraper 2.0, ele procura por todas as funçoes e retorna em um arquivo .lua

Diferente do meu último projeto MWS, ese usa Python como a linguagem principal.

Meu Objetivo é tornar essa versão do MWS em uma aplicação que os Desenvolvedores de Servidor de Multi Theft Auto possam usar para obter
todas as funções da Wiki do MTA em um arquivo '.lua'.

# Como esse App pode Ajudar os Desenvolvedores:

Eu Recomendo que você use o Visual Studio Code com a extensão Lua do Tencent. (Porque?)
É Simples. O arquivo .lua do MWS vai vir no seguinte formato: 

------EXEMPLO DE CÓDIGO DO ARQUIVO .lua ------

---Required Arguments
---@param fCenterX any: The X position of the collision polygon's position - the position that will be returned from getElementPosition.
---@param fCenterY any: The Y position of the collision polygon's position - the position that will be returned from getElementPosition.
---@param fX1 any: The 1st X position of the collision polygon's bound point
---@param fY1 any: The 1st Y position of the collision polygon's bound point
---@param fX2 any: The 2nd X position of the collision polygon's bound point
---@param fY2 any: The 2nd Y position of the collision polygon's bound point
---@param fX3 any: The 3rd X position of the collision polygon's bound point
---@param fY3 any: The 3rd Y position of the collision polygon's bound point
---@param ... any: From the 3rd position you can have as many points as you require to create the colshape.
function createColPolygon(fCenterX,fCenterY,fX1,fY1,fX2,fY2,fX3,fY3,...) end

------EXEMPLO DE CÓDIGO DO ARQUIVO .lua ------

E a extensão lua do Tencent vai ler essas informações e mostrar no intellisense, tornando sua experiência de código bem mais fácil.
E diferente da extensão MTA Lua, minha aplicação vai ser capaz de detectar e atualizar a lista de funções quando novas atualizações
do MTA forem publicadas.

*! MINHA APLICAÇÃO ESTÁ EM DESENVOLVIMENTO, ENTÃO NÃO TOME COMO SOLUÇÃO DEFINITIVA AINDA !*

# Como Usar: (Ainda em desenvolvimento)

(A Aplicação ainda está em desenvolvimento, então por enquanto só cria a lista de funções de cliente.)

# Observação Final:

Eu planejo finalizar esse projeto em breve, mas por enquanto não estou tendo muito tempo para investir.
