Gains = find_system('Seessin4_Scripting_Excersise3','BlockType', 'Gain');

%Da lw kolohom hyb2o nafs el Sample Time
% for Index = 1 : length(Gains)
%     set_param(Gains{Index},'SampleTime','-1');
% end

%De lw 3ayz a3ml le koil wa7da sample time mo5talef
for Index = 1: length(Gains)
    switch Index
        case 1
            set_param(Gains{Index},'SampleTime','1');
        case 2
            set_param(Gains{Index},'SampleTime','2');
        case 3
            set_param(Gains{Index},'SampleTime','3');
        case 4
            set_param(Gains{Index},'SampleTime','4');
    end
end
