function threeDoors(n)

nExperiments = n;
successes1 = 0;
successes2 = 0;

for i = 1:nExperiments
    randvec = randperm(3);
    car = randvec(1);
    selection = randi(3);

    elimination1 = randvec(randvec~=selection);
    elimination2 = elimination1(elimination1~=car);
    
    if length(elimination2) > 1
        elimination2 = elimination2(randi(2));
    end
    
    change = randvec(randvec~=selection);
    change = change(change~=elimination2);
    
    if selection == car
        successes1 = successes1 + 1;
    end
    if change == car
        successes2 = successes2 + 1;
    end
        
end

probnochange = successes1/nExperiments;
disp(['In ' num2str(nExperiments) ' trials, the probability is approximately '...
    num2str(probnochange) ' without a switch, which is approaching one-third.']);
probchange = successes2/nExperiments;
disp(['In ' num2str(nExperiments) ' trials, the probability is approximately '...
    num2str(probchange) ' with a switch, which is approaching two-thirds.']);