
for i = 35:-1:1
    StructOut(i) = timeFib((i));
    StructOutLoop(i) = timeFibLoop((i));
end

writetable(struct2table(StructOut), 'FibStructure.txt')
writetable(struct2table(StructOutLoop), 'FibStructureLoop.txt')