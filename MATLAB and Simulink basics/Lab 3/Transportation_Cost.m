prompt = 'Please enter your transportation \n';
trans = input(prompt);
car = 1;
train =2;
bus =3;
plane = 4;
switch trans
    case car
        prompt = 'Enter miles you will travel\n';
        miles = input(prompt);
        if miles < 10
            fprintf('Your trip costs 5$');
        else
            fprintf('Your trip costs 10$');
        end
    case train
        prompt = 'Enter miles you will travel\n';
        miles = input(prompt);
        if miles < 20
            fprintf('Your trip costs 10$');
        else
            fprintf('Your trip costs 20$');
        end
    case bus
        prompt = 'Enter miles you will travel\n';
        miles = input(prompt);
        if miles < 15
            fprintf('Your trip costs 20$');
        else
            fprintf('Your trip costs 30$');
        end
    case plane
        prompt = 'Enter miles you will travel\n';
        miles = input(prompt);
        if miles < 50
            fprintf('Your trip costs 100$');
        else
            fprintf('Your trip costs 150$');
        end
end