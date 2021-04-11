%%ENES220 Crane Project
%

cableSF = 2;
liveLoadMax = 100000;
cableUT = 200000;
motorHP = 50; %hp

pulleyRatio = 4;

cableDiameter = sqrt(cableSF*liveLoadMax *4 / (pulleyRatio * cableUT * pi))

minDrumOD = 20*cableDiameter

cableTension = liveLoadMax / pulleyRatio

motorRPM = motorHP * 63024 / (minDrumOD*.5*cableTension*cableSF)

J = (pi/32) * minDrumOD^4
TorsionalShearStress = (cableTension* cableSF * minDrumOD/2)/J