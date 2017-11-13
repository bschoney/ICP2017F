List = { {'M','A','T','L','A','B'}, {' '}, {'i','s'}, {' '}, {'a'}, {' '},...
    {'s','t','r','a','n','g','e'}, {', '}, {'b','u','t',' '}, ...
    {'p','o','p','u','l','a','r'} {' '}, ...
    {'p','r','o','g','r','a','m','m','i','n','g',' ','l','a','n','g','u','a','g','e'} };

% Initializing the string with no content
sentenceMaker = '';
    for i = 1:length(List)
        Letters = List{i};
            for j = 1:length(Letters)
                sentenceMaker = [sentenceMaker, Letters{j}];
            end
    end
    disp(sentenceMaker);
