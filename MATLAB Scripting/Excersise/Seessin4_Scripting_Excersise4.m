%regexp 
AllBlocks = find_system('Seessin4_Scripting_Excersise3','regexp','on','BlockType', '.*');
BlockName = get_param(AllBlocks,'BlockType');

for Index = 1: length(AllBlocks)
    switch BlockName{Index}
        case 'Sum'
            set_param(AllBlocks{Index},'BackgroundColor','Magenta');
        case 'Gain'
            set_param(AllBlocks {Index},'BackGroundColor','Cyan');
        case 'UnitDelay'
            set_param(AllBlocks{Index},'BackGroundcolor','Green');
    end
end

for i = 1 : length(AllBlocks)
    set_param(AllBlocks{Index},'ShowName','off');
end