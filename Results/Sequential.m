format long e

%%% Sequential Calculation n = 1000000 %%%
n1 = 1000000;
tic;
for i = 1:n1
    solution_1 = 1./(i.*(i+1).*(i+2));
end
elapsed_time_n1 = toc;
%%% END %%%

%%% Sequential Calculation n = 1000000000 %%%
n2 = 1000000000;
tic;
for j = 1:n2
    solution_2 = 1./(j.*(j+1).*(j+2));
end
elapsed_time_n2 = toc;
%%% END %%%

%%% Sequential Calculation n = 10000000000 %%%
n3 = 10000000000;
tic;
for k = 1:n3
    solution_3 = 1./(k.*(k+1).*(k+2));
end
elapsed_time_n3 = toc;
%%% END %%%

x = [n1, n2, n3];
y = [elapsed_time_n1, elapsed_time_n2, elapsed_time_n3];
plot(x,y);