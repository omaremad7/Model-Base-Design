%Lama ba8ayar fe kelma maktoba fe kaza satr, b3d ma ba3adel bados
%shift+enter 3shan tt3adel fe kolo mara wa7da

%Hena hados 3ala kol block lwa7do w b3den a3ml run

% Block = gcb;
% set_param(Block,'ShowName','off');

%Bas ele fat da 7al atwal w as3ab

UnitDelay = find_system('Seessin4_Scripting_ShowName_Excersise2','BlockType','UnitDelay');

for Index = 1 : length(UnitDelay)
   set_param(UnitDelay{Index}, 'ShowName', 'off'); 
end