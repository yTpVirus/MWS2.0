function getRadioChannel() end
---Required Arguments
---@param id any: The ID of the radio station you want to get the name of. It is a number from 0 to 12.
function getRadioChannelName(id) end
---Required Arguments
---@param audioContainer any: The container name. Possible values are: "feet", "genrl", "pain_a", "script", "spc_ea", "spc_fa", "spc_ga", spc_na", "spc_pa"
function getSFXStatus(audioContainer) end
---Required Arguments
---@param sound any: a sound element that is created using playSound or playSound3D
function getSoundBPM(sound) end
---Required Arguments
---@param theSound any: the sound element which buffer length you want to get.
function getSoundBufferLength(theSound) end
---Required Arguments
---@param sound any: The sound element to get the sound effect parameters of.
---@param effectName any: The name of the effect whose parameters you want to retrieve:
function getSoundEffectParameters(sound,effectName) end
---Required Arguments
---@param sound any: a sound element.
function getSoundEffects(sound) end
---Required Arguments
---@param sound any: a sound element that is created using playSound or playSound3D. Streams are also supported
---@param iSamples any: allowed samples are 256, 512, 1024, 2048, 4096, 8192 and 16384.
---Optional Arguments
---@param iBands any: post processing option allows you to split the samples into the desired amount of bands or bars so if you only need 5 bars this saves a lot of cpu power compared to trying to do it in Lua.
function getSoundFFTData(sound,iSamples,...) end
---Required Arguments
---@param theSound any: the sound element which length you want to return.
function getSoundLength(theSound) end
---Required Arguments
---@param theSound any: the sound element which level data you want to return.
function getSoundLevelData(theSound) end
---Required Arguments
---@param sound any: a sound element.
function getSoundMaxDistance(sound) end
---Required Arguments
---@param sound any: a sound element.
---Optional Arguments
---@param format any: a filter string to get a specific meta tag.
function getSoundMetaTags(sound,...) end
---Required Arguments
---@param sound any: a sound element.
function getSoundMinDistance(sound) end
---Required Arguments
---@param theSound any: the sound element which pan you want to get.
function getSoundPan(theSound) end
---Required Arguments
---@param theSound any: The sound element which seek position you want to return.
function getSoundPosition(theSound) end
---Required Arguments
---@param sound any: a sound element that is created using playSound or playSound3D
function getSoundProperties(sound) end
---Required Arguments
---@param theSound any: the sound element which playback speed you want to return.
function getSoundSpeed(theSound) end
---Required Arguments
---@param theSound any: the sound element which volume you want to return.
function getSoundVolume(theSound) end
---Required Arguments
---@param sound any: a sound element that is created using playSound or playSound3D. Streams are also supported
---@param iSamples any: allowed samples are 256, 512, 1024, 2048, 4096, 8192 and 16384.
function getSoundWaveData(sound,iSamples) end
---Required Arguments
---@param theSound any: The sound element which you want to get the loop state.
function isSoundLooped(theSound) end
---Required Arguments
---@param theSound any: A valid sound element.
function isSoundPanningEnabled(theSound) end
---Required Arguments
---@param theSound any: the sound element which pause state you want to return.
function isSoundPaused(theSound) end
---Required Arguments
---@param containerName any: The name of the audio container. Possible values are: "feet", "genrl", "pain_a", "script", "spc_ea", "spc_fa", "spc_ga", spc_na", "spc_pa"
---@param bankId any: The audio bank id
---@param soundId any: The sound id within the audio bank
---@param x any: A floating point number representing the X coordinate on the map.
---@param y any: A floating point number representing the Y coordinate on the map.
---@param z any: A floating point number representing the Z coordinate on the map.
---Optional Arguments
---@param looped any: A boolean representing whether the sound will be looped
function playSFX3D(containerName,bankId,soundId,x,y,z,...) end
---Required Arguments
---@param containerName any: The name of the audio container. Possible values are: "feet", "genrl", "pain_a", "script", "spc_ea", "spc_fa", "spc_ga", spc_na", "spc_pa"
---@param bankId any: The audio bank id
---@param soundId any: The sound id within the audio bank
---Optional Arguments
---@param looped any: A boolean representing whether the sound will be looped
function playSFX(containerName,bankId,soundId,...) end
---Required Arguments
---@param soundPath any: raw data or filepath to the sound file you want to play. (Note: Playing sound files from other resources requires the target resource to be in the running state)
---@param soundURL any: the URL (http://, https:// or ftp://) of the sound file you want to play. (In this version the file does not have to be predefined in the meta.xml)
---@param x any: a floating point number representing the X coordinate on the map.
---@param y any: a floating point number representing the Y coordinate on the map.
---@param z any: a floating point number representing the Z coordinate on the map.
---Optional Arguments
---@param looped any: a boolean representing whether the sound will be looped. To loop the sound, use true.
---@param throttled any: a boolean representing whether the sound will be throttled (i.e. given reduced download bandwidth). To throttle the sound, use true.
function playSound3D(soundPath,soundURL,x,y,z,...) end
---Required Arguments
---@param soundPath any: filepath, raw data or URL (http://, https:// or ftp://) of the sound file you want to play. (Note: Playing sound files from other resources requires the target resource to be in the running state)
---Optional Arguments
---@param looped any: a boolean representing whether the sound will be looped. To loop the sound, use true. Loop is not available for streaming sounds, only for sound files.
---@param throttled any: a boolean representing whether the sound will be throttled (i.e. given reduced download bandwidth). To throttle the sound, use true. Sounds will be throttled per default and only for URLs.
function playSound(soundPath,...) end
---Required Arguments
---@param sound any: a whole int specifying the sound id to play. Valid values are:
---0 - 20 Selection sounds
---27 - 30 Bullet sounds
---32 - 33 Selection sounds
---34 Radio static
---35 Stop Radio static
---37 - 38 Tick
---40 Selection sounds
---41 - 42 Tick (no ammo)
---43 - 45 Race countdown
---46 Repair
---47 White noise static
---48 Stop White noise static
---49 Static short
---101 Countdown/selection
function playSoundFrontEnd(sound) end
---Required Arguments
---@param ID any: The ID of the radio station you want to play.
function setRadioChannel(ID) end
---Required Arguments
---@param sound any: a sound element or a player element which will affect the voice broadcast.
---@param effectName any: the effect you want to enable or disable
function setSoundEffectEnabled(sound,effectName) end
---Required Arguments
---@param sound any: The sound element.
---@param effectName any: The name of the effect whose parameter you want to change:
function setSoundEffectParameter(sound,effectName) end
---Required Arguments
---@param theSound any: The sound element to set the loop.
---@param bool any: A boolean representing whether the sound will be looped.
function setSoundLooped(theSound,bool) end
---Required Arguments
---@param sound any: a sound element.
---@param distance any: the default value for this is 20
function setSoundMaxDistance(sound,distance) end
---Required Arguments
---@param sound any: a sound element.
---@param distance any: an integer representing the distance the sound stops getting louder. the default value for this is 5
function setSoundMinDistance(sound,distance) end
---Required Arguments
---@param theSound any: The sound element which pan you want to modify.
---@param pan any: A floating point number representing the desired pan level. Range is from -1.0 (left) to 1.0 (right)
function setSoundPan(theSound,pan) end
---Required Arguments
---@param sound any: a sound element to change the panning of.
---@param enable any: true to enable the panning, false otherwise.
function setSoundPanningEnabled(sound,enable) end
---Required Arguments
---@param theSound any: the sound element which you want to pause/unpause.
---@param paused any: a boolean value representing whether the sound should be paused or not. To pause the sound, use true.
function setSoundPaused(theSound,paused) end
---Required Arguments
---@param theSound any: the sound element which seek position you want to modify.
---@param pos any: a float value representing the new seek position of the sound element in seconds.
function setSoundPosition(theSound,pos) end
---Required Arguments
---@param sound any: a sound element that is created using playSound or playSound3D
---Optional Arguments
---@param bReverse any: a boolean representing whether the sound will be reversed or not.
function setSoundProperties(sound,...) end
---Required Arguments
---@param theSound any: the sound element which volume you want to modify.
---@param speed any: a floating point number representing the desired sound playback speed.
function setSoundSpeed(theSound,speed) end
---Required Arguments
---@param theSound any: The sound element which volume you want to modify or a player element which voice volume you want to modify.
---@param volume any: A floating point number representing the desired volume level. Range is from 0.0 to 1.0. This can go above 1.0 for amplification.
function setSoundVolume(theSound,volume) end
---Required Arguments
---@param theSound any: the sound element you want to stop playing.
function stopSound(theSound) end
---Required Arguments
---@param x any: The x position of the blip, in world coordinates.
---@param y any: The y position of the blip, in world coordinates.
---@param z any: The z position of the blip, in world coordinates.
---Optional Arguments
---@param icon any: The icon that the radar blips should be. Default is 0. Valid values can be seen at Radar Blips
---@param size any: The size of the radar blip. Only applicable to the Marker icon. Default is 2. Maximum is 25.
---@param r any: The amount of red in the blip's color (0�255). Only applicable to the Marker icon. Default is 255.
---@param g any: The amount of green in the blip's color (0�255). Only applicable to the Marker icon. Default is 0.
---@param b any: The amount of blue in the blip's color (0�255). Only applicable to the Marker icon. Default is 0.
---@param a any: The amount of alpha in the blip's color (0�255). Only applicable to the Marker icon. Default is 255.
---@param ordering any: This defines the blip's Z-level ordering (-32768�32767). Default is 0.
---@param visibleDistance any: The maximum distance from the camera at which the blip is still visible (0�65535).
---@param visibleTo any: This defines which elements can see the blip. Defaults to visible to everyone. See visibility.
function createBlip(x,y,z,...) end
---Required Arguments
---@param elementToAttachTo any: The element to attach the blip to.
---Optional Arguments
---@param icon any: The icon that the radar blips should be. Valid values can be seen at Radar Blips
---@param size any: The size of the radar blip. Only applicable to the Marker icon. Default value is 2. Maximum is 25.
---@param r any: The amount of red in the blip's color (0 - 255). Only applicable to the Marker icon. Default is 255.
---@param g any: The amount of green in the blip's color (0 - 255). Only applicable to the Marker icon. Default is 0.
---@param b any: The amount of blue in the blip's color (0 - 255). Only applicable to the Marker icon. Default is 0.
---@param a any: The amount of alpha in the blip's color (0 - 255). Only applicable to the Marker icon. Default is 255.
---@param ordering any: This defines the blip's Z-level ordering (-32768 - 32767). Default is 0.
---@param visibleDistance any: The maximum distance from the camera at which the blip is still visible (0-65535)
---@param visibleTo any: What elements can see the blip. Defaults to visible to everyone. See visibility.
function createBlipAttachedTo(elementToAttachTo,...) end
---Required Arguments
---@param theBlip any: The blip whose color you wish to get.
function getBlipColor(theBlip) end
---Required Arguments
---@param theBlip any: the blip we're getting the icon number of.
function getBlipIcon(theBlip) end
---Required Arguments
---@param theBlip any: the blip to retrieve the Z ordering value of.
function getBlipOrdering(theBlip) end
---Required Arguments
---@param theBlip any: The blip you wish to get the size of.
function getBlipSize(theBlip) end
---Required Arguments
---@param theBlip any: The blip whose visible distance you wish to get.
function getBlipVisibleDistance(theBlip) end
---Required Arguments
---@param theBlip any: The blip who's color you wish to set.
---@param red any: The amount of red in the blip's color (0 - 255).
---@param green any: The amount of green in the blip's color (0 - 255).
---@param blue any: The amount of blue in the blip's color (0 - 255).
---@param alpha any: The amount of alpha in the blip's color (0 - 255).  Alpha decides transparancy where 255 is opaque and 0 is transparent.
function setBlipColor(theBlip,red,green,blue,alpha) end
---Required Arguments
---@param icon any: A number indicating the icon you wish to change it do. Valid values are listed on the Radar Blips page.
function setBlipIcon(icon) end
---Required Arguments
---@param theBlip any: the blip whose Z ordering to change.
---@param ordering any: the new Z ordering value. Blips with higher values will appear on top of blips with lower values. Possible range: -32767 to 32767. Default: 0.
function setBlipOrdering(theBlip,ordering) end
---Required Arguments
---@param theBlip any: The blip you wish to get the size of.
---@param iconSize any: The size you wish the icon to be. 2 is the default value. 25 is the maximum value. Value gets clamped between 0 and 25.
function setBlipSize(theBlip,iconSize) end
---Required Arguments
---@param theBlip any: The blip whose visible distance you wish to get.
---@param theDistance any: The distance you want the blip to be visible for. Value gets clamped between 0 and 65535.
function setBlipVisibleDistance(theBlip,theDistance) end
---Required Arguments
---@param webBrowser any: The browser you want to check for a previous page.
function canBrowserNavigateBack(webBrowser) end
---Required Arguments
---@param webBrowser any: The browser you want check for a next page.
function canBrowserNavigateForward(webBrowser) end
---Required Arguments
---@param width any: The browser's native width. This should be greater than or equal to 1.
---@param height any: The browser's native height. This should be greater than or equal to 1.
---@param isLocal any:  Sets whether the browser can only show local content or content from the internet (see examples for more information)
---Optional Arguments
---@param transparent any: true if you want the browser transparent, false for opaque.
function createBrowser(width,height,isLocal,...) end
---Required Arguments
---@param webBrowser any: The web browser which will execute the Javascript code
---@param jsCode any: The Javascript code string
function executeBrowserJavascript(webBrowser,jsCode) end
---Required Arguments
---@param webBrowser any: The web browser to be focused - if this is nil, it will unfocus all browsers.
function focusBrowser(webBrowser) end
---Required Arguments
---@param theBrowser any: browser element to get the property value of
---@param key any: The browser property key. It can be:
---mobile: Surfing the web as mobile
---@param mobile any: Surfing the web as mobile
function getBrowserProperty(theBrowser,key,mobile) end
function getBrowserSettings() end
---Required Arguments
---@param webBrowser any: The browser element you want to get the source of
---@param callback any: a callback function with syntax as described below
function getBrowserSource(webBrowser,callback) end
---Required Arguments
---@param webBrowser any: The browser
function getBrowserTitle(webBrowser) end
---Required Arguments
---@param webBrowser any: The browser
function getBrowserURL(webBrowser) end
---Required Arguments
---@param webBrowser any: The web browser
---@param mouseButton any: The mouse button (Possible values: left, middle, right)
function injectBrowserMouseDown(webBrowser,mouseButton) end
---Required Arguments
---@param webBrowser any: The browser which will retrieve the mouse movement
---@param posX any: Absolute X screen coordinate
---@param posY any: Absolute Y screen coordinate
function injectBrowserMouseMove(webBrowser,posX,posY) end
---Required Arguments
---@param webBrowser any: The web browser
---@param mouseButton any: The mouse button (Possible values: left, middle, right)
function injectBrowserMouseUp(webBrowser,mouseButton) end
---Required Arguments
---@param webBrowser any: The web browser
---@param verticalScroll any: Amount of units you want the browser to scroll along the Y-axe.
---@param horizontalScroll any: Amount of units you want the browser to scroll along the X-axe.
function injectBrowserMouseWheel(webBrowser,verticalScroll,horizontalScroll) end
---Required Arguments
---@param address any: A website URL
---Optional Arguments
---@param isURL any: true if address should be parsed as URL, false otherwise.
function isBrowserDomainBlocked(address,...) end
---Required Arguments
---@param webBrowser any: The browser
function isBrowserFocused(webBrowser) end
---Required Arguments
---@param webBrowser any: The browser
function isBrowserLoading(webBrowser) end
---Required Arguments
---@param webBrowser any: The browser element to get the rendering state of.
function isBrowserRenderingPaused(webBrowser) end
---Required Arguments
---@param webBrowser any: The browser element which will load the URL
---@param url any: The url you want to load. It can either contain a remote website ("http://" prefix) or a website stored within a local resource ("http://mta/local/gui.html" for example, see Local Scheme Handler for details).
---Optional Arguments
---@param postData any: The post data passed to the website. Its content type can be any type (e.g. JSON) if urlEncoded is set to false
---@param urlEncoded any: If set to true, it will be available f.e. in PHP's $_POST variable (the content type is: application/x-www-form-urlencoded)
function loadBrowserURL(webBrowser,url,...) end
---Required Arguments
---@param webBrowser any: The browser that you want return to the previous page.
function navigateBrowserBack(webBrowser) end
---Required Arguments
---@param webBrowser any: The browser that you want to take to the next page.
function navigateBrowserForward(webBrowser) end
---Required Arguments
---@param webBrowser any: The browser that you want to reload.
---@param ignoreCache any: Ignoring cached content, Equivalent to "Shift + F5" in most browsers
function reloadBrowserPage(webBrowser,ignoreCache) end
---Required Arguments
---@param pages any: A table containing all domains
---Optional Arguments
---@param parseAsURL any: true if the passed addresses should be converted from URLs, false otherwise.
---@param callback any: A callback function that is called as soon as the result is available
function requestBrowserDomains(pages,...) end
---Required Arguments
---@param webBrowser any: The browser you want to resize.
---@param width any: The new width of the browser.
---@param height any: The new height of the browser.
function resizeBrowser(webBrowser,width,height) end
---Required Arguments
---@param webBrowser any: The web browser which will execute the Javascript code
---@param url any: The URL endpoint to handle
---Optional Arguments
---@param handler any: The function to call if the webBrowser attempts to open the ajax endpoint. If this parameter is nil or omitted, the ajax handler for the url will be deleted.
function setBrowserAjaxHandler(webBrowser,url,...) end
---Required Arguments
---@param theBrowser any: The browser element you want to set a property of
---@param key any: The browser property key. It can be:
---mobile: Surfing the web as mobile
---@param mobile any: Surfing the web as mobile
---@param value any: A value indicating whether to enable ("1") the property or not ("0")
function setBrowserProperty(theBrowser,key,mobile,value) end
---Required Arguments
---@param webBrowser any: The browser
---@param paused any: true to pause rendering, false to continue
function setBrowserRenderingPaused(webBrowser,paused) end
---Required Arguments
---@param volume any: A floating point number representing the desired volume level. Range is from 0.0 to 1.0
---Optional Arguments
---@param webBrowser any: A browser element
function setBrowserVolume(volume,...) end
---Required Arguments
---@param webBrowser any: The browser
---@param visible any: true to show the tools, false to hide
function toggleBrowserDevTools(webBrowser,visible) end
---Required Arguments
---@param fadeIn any: Should the camera be faded in our out? Pass true to fade the camera in, false to fade it out to a color.
---Optional Arguments
---@param timeToFade any: The number of seconds it should take to fade.
---@param red any: The amount of red in the color that the camera fades out to (0 - 255). Not required for fading in.
---@param green any: The amount of green in the color that the camera fades out to (0 - 255). Not required for fading in.
---@param blue any: The amount of blue in the color that the camera fades out to (0 - 255). Not required for fading in.
function fadeCamera(fadeIn,...) end
function getCamera() end
function getCameraClip() end
---Required Arguments
---@param cameraMode any: the camera mode to get the field of view of
---"player": whilst walking/running
---"vehicle": whilst in vehicle
---"vehicle_max": the max the field of view can go to when the vehicle is moving at a high speed (must be higher than "vehicle")
function getCameraFieldOfView(cameraMode) end
function getCameraGoggleEffect() end
function getCameraInterior() end
function getCameraMatrix() end
function getCameraDrunkLevel() end
function getCameraTarget() end
function getCameraViewMode() end
---Optional Arguments
---@param objects any: Sets if you want the camera to clip on objects.
---@param vehicles any: Sets if you want the camera to clip on vehicles.
function setCameraClip(...) end
---Required Arguments
---@param cameraMode any: the camera mode to get the field of view of
---"player": whilst walking/running
---"vehicle": whilst in vehicle
---"vehicle_max": the max the field of view can go to when the vehicle is moving at a high speed (must be higher than "vehicle")
---@param fieldOfView any: The field of view angle, 0 to 179.
function setCameraFieldOfView(cameraMode,fieldOfView) end
---Required Arguments
---@param goggleEffect any: the goggle effect you wish to set
function setCameraGoggleEffect(goggleEffect) end
---Required Arguments
---@param interior any: the interior to place the camera in.
function setCameraInterior(interior) end
---Required Arguments
---@param positionX any: The x coordinate of the camera's position.
---@param positionY any: The y coordinate of the camera's position.
---@param positionZ any: The z coordinate of the camera's position.
---Optional Arguments
---@param lookAtX any: The x coordinate of the point the camera faces.
---@param lookAtY any: The y coordinate of the point the camera faces.
---@param lookAtZ any: The z coordinate of the point the camera faces.
---@param roll any: The camera roll angle, -180 to 180. A value of 0 means the camera sits straight, positive values will turn it counter-clockwise and negative values will turn it clockwise. -180 or 180 means the camera is upside down.
---@param fov any: the field of view angle, 0.01 to 180. The higher this value is, the more you will be able to see what is to your sides.
function setCameraMatrix(positionX,positionY,positionZ,...) end
---Required Arguments
---@param drunkLevel any: an integer between 0 and 255, which represents the camera drunk intensity level.
function setCameraDrunkLevel(drunkLevel) end
---Required Arguments
---@param target any: The player who you want the local camera to follow.
function setCameraTarget(target) end
---Required Arguments
---@param vehicleCameraMode any: The view mode you wish to use when inside vehicles.
---Optional Arguments
---@param pedCameraMode any: The view mode you wish to use when you are not inside vehicles.
---@param 0 any: Bumper
---@param 1 any: Close external
---@param 2 any: Middle external
---@param 3 any: Far external
---@param 4 any: Low external
---@param 5 any: Cinematic
---@param 1 any: Close
---@param 2 any: Middle
---@param 3 any: Far
function setCameraViewMode(vehicleCameraMode,...) end
---Required Arguments
---@param thePed any: The ped whose clothes you want to change.
---@param clothesTexture any: A string determining the clothes texture that will be added. See the clothes catalog.
---@param clothesModel any: A string determining the clothes model that will be added. See the clothes catalog.
---@param clothesType any: A integer representing the clothes slot/type the clothes should be added to. See the clothes catalog.
function addPedClothes(thePed,clothesTexture,clothesModel,clothesType) end
---Required Arguments
---@param bodyPartID any: An integer representing the body part ID you wish to retrieve the name of.
function getBodyPartName(bodyPartID) end
---Required Arguments
---@param clothesType any: An integer representing the clothes slot/type to scan through.
function getClothesByTypeIndex(clothesType) end
---Required Arguments
---@param clothesType any: An integer determining the type of clothes you want to get the clothes of.
function getClothesTypeName(clothesType) end
---Required Arguments
---@param thePed any: The ped whose clothes you want to retrieve.
---@param clothesType any: The type/slot of clothing you want to get.
function getPedClothes(thePed,clothesType) end
---Required Arguments
---@param clothesTexture any: A string determining the clothes texture that you wish to retrieve the type and index from. See the clothes catalog.
---@param clothesModel any: A string determining the corresponding clothes model that you wish to retrieve the type and index from. See the clothes catalog.
function getTypeIndexFromClothes(clothesTexture,clothesModel) end
---Required Arguments
---@param thePed any: The ped you want to remove clothes from.
---@param clothesType any: the clothes slot/type to remove. See the clothes catalog.
---Optional Arguments
---@param clothesTexture any: (Server only) A string determining the clothes texture that will be removed. See the clothes catalog.
---@param clothesModel any: (Server only) A string determining the clothes model that will be removed. See the clothes catalog.
function removePedClothes(thePed,clothesType,...) end
---Required Arguments
---@param shape any: The colshape polygon you wish add a point to.
---@param fX any: The X position of the new bound point.
---@param fY any: The Y position of the new bound point.
---Optional Arguments
---@param index any: The index where the new point will be inserted in the polygon. The points are indexed in order, with 1 being the first bound point. Passing 0 will insert the point as the last one in the polygon.
function addColPolygonPoint(shape,fX,fY,...) end
---Required Arguments
---@param fX any: The collision circle's center point's X axis position.
---@param fY any: The collision circle's center point's Y axis position.
---@param radius any: The radius of the collision circle. Can not be smaller than 0.1.
function createColCircle(fX,fY,radius) end
---Required Arguments
---@param fX any: The X position of the collision cuboid's western side.
---@param fY any: The Y position of the collision cuboid's southern side.
---@param fZ any: The Z position of the collision cuboid's lowest side.
---@param fWidth any: The collision cuboid's width.
---@param fDepth any: The collision cuboid's depth.
---@param fHeight any: The collision cuboid's height.
function createColCuboid(fX,fY,fZ,fWidth,fDepth,fHeight) end
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
---Required Arguments
---@param fX any: The X position of the collision rectangle's west side.
---@param fY any: The Y position of the collision rectangle's south side.
---@param fWidth any: The collision rectangle's width.
---@param fHeight any: The collision rectangle's height.
function createColRectangle(fX,fY,fWidth,fHeight) end
---Required Arguments
---@param fX any: The collision sphere's center point's X axis position.
---@param fY any: The collision sphere's center point's Y axis position.
---@param fZ any: The collision sphere's center point's Z axis position.
---@param fRadius any: The collision sphere's radius.
function createColSphere(fX,fY,fZ,fRadius) end
---Required Arguments
---@param fX any: The position of the base of the tube's center on the X axis.
---@param fY any: The position of the base of the tube's center on the Y axis.
---@param fZ any: The position of the base of the tube's center on the Z axis.
---@param fRadius any: The collision tube's radius.
---@param fHeight any: The collision tube's height.
function createColTube(fX,fY,fZ,fRadius,fHeight) end
---Required Arguments
---@param shape any: The colshape polygon.
function getColPolygonHeight(shape) end
---Required Arguments
---@param shape any: The colshape polygon you wish to get the points of.
function getColPolygonPoints(shape) end
---Required Arguments
---@param shape any: The colshape polygon you wish to change.
---@param index any: The index of the point you wish to retrieve. The points are indexed in order, with 1 being the first bound point.
function getColPolygonPointPosition(shape,index) end
---Required Arguments
---@param shape any: The colshape you wish to get the type of.
function getColShapeType(shape) end
---Required Arguments
---@param shape any: The colshape you wish to get the radius of.
function getColShapeRadius(shape) end
---Required Arguments
---@param shape any: The colshape you wish to get the size of.
function getColShapeSize(shape) end
---Required Arguments
---@param theElement any: The element you want to get the colshape of
function getElementColShape(theElement) end
---Required Arguments
---@param theShape any: The colshape you want to get the elements from.
---Optional Arguments
---@param elemType any: The type of element you want a list of. This can be any element type, the common ones being:
---"player": A player connected to the server
---"ped": A ped
---"vehicle": A vehicle
---"object": An object
---"pickup": A pickup
---"marker": A marker
---@param  any: A player connected to the server
---@param  any: A ped
---@param  any: A vehicle
---@param  any: An object
---@param  any: A pickup
---@param  any: A marker
function getElementsWithinColShape(theShape,...) end
---Required Arguments
---@param theElement any: The element you're checking.
---@param theShape any: The colshape you're checking
function isElementWithinColShape(theElement,theShape) end
---Required Arguments
---@param theShape any: The colshape you're checking the position against.
---@param posX any: The X coordinate of the position you're checking.
---@param posY any: The Y coordinate of the position you're checking.
---@param posZ any: The Z coordinate of the position you're checking.
function isInsideColShape(theShape,posX,posY,posZ) end
---Required Arguments
---@param shape any: The colshape polygon you wish to remove a point from.
---@param index any: The index of the point you wish to remove. The points are indexed in order, with 1 being the first bound point. You can't remove the last 3 points.
function removeColPolygonPoint(shape,index) end
---Required Arguments
---@param shape any: The colshape polygon.
---@param floor any: The polygon floor (lowest Z coordinate). Parse false to reset this value to 0.
---@param ceil any: The polygon ceiling (highest Z coordinate). Parse false to reset this value to infinitely tall.
function setColPolygonHeight(shape,floor,ceil) end
---Required Arguments
---@param shape any: The colshape polygon you wish to change.
---@param index any: The index of the point you wish to change. The points are indexed in order, with 1 being the first bound point.
---@param fX any: The new X position of the bound point.
---@param fY any: The new Y position of the bound point.
function setColPolygonPointPosition(shape,index,fX,fY) end
---Required Arguments
---@param shape any: The colshape you wish to change the radius of.
---@param radius any: The radius you want to set.
function setColShapeRadius(shape,radius) end
---Required Arguments
---@param shape any: The colshape you wish to change the size of.
---@param width any: The collision cuboid's width.
---@param depth any: The collision cuboid's depth.
---@param height any: The collision cuboid's height.
function setColShapeSize(shape,width,depth,height) end
function getCursorAlpha() end
function getCursorPosition() end
function isCursorShowing() end
---Required Arguments
---@param alpha any: The alpha value to set. Value can be 0-255, where 255 is fully opaque and 0 is fully transparent.
function setCursorAlpha(alpha) end
---Required Arguments
---@param cursorX any: Position over the X axis
---@param cursorY any: Position over the Y axis
function setCursorPosition(cursorX,cursorY) end
---Required Arguments
---@param show any: A boolean value determining whether to show (true) or hide (false) the cursor.
---Optional Arguments
---@param toggleControls any: A boolean value determining whether to disable controls whilst the cursor is showing.  true implies controls are disabled, false implies controls remain enabled.
function showCursor(show,...) end
---Required Arguments
---@param pixels any: The pixels to convert the format of
---@param newFormat any: The new format required ('plain' or 'png' or 'jpeg')
---Optional Arguments
---@param quality any: The quality of the returned pixels if the new format is 'jpeg'
function dxConvertPixels(pixels,newFormat,...) end
---Required Arguments
---@param filepath any: the name of the file containing the font
---Optional Arguments
---@param size any: size of the font
---@param bold any: flag to indicate if the font should be bold
---@param quality any: the font quality
---"default": not the actual default
---"draft"
---"proof": the default
---"nonantialiased"
---"antialiased"
---"cleartype"
---"cleartype_natural"
function dxCreateFont(filepath,...) end
---Required Arguments
---@param width any: The width of the texture in pixels.
---@param height any: The height of the texture in pixels.
---@param withAlpha any: The render target will be created with an alpha channel. 'false' will turn images' alpha channels to black color
function dxCreateRenderTarget(width,height,withAlpha) end
---Required Arguments
---@param width any: The width of the texture in pixels.
---@param height any: The height of the texture  in pixels.
function dxCreateScreenSource(width,height) end
