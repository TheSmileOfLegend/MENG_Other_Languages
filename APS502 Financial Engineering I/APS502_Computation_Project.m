%% problem 1 part 1
f12 = (1.015 ^ 2 / 1.01) - 1;
f23 = (1.02 ^ 3 / 1.05 ^ 2) - 1;
f34 = (1.025 ^ 4 / 1.02 ^ 3) - 1;
f45 = (1.03 ^ 5 / 1.025 ^ 4) - 1;
f56 = (1.035 ^ 6 / 1.03 ^ 5) - 1;
F = 100;
p1 = 108;
p2 = 94;
p3 = 99;
p4 = 92.7;
p5 = 96.6;
p6 = 95.9;
p7 = 92.9;
p8 = 110;
p9 = 104;
p10 = 101;
p11 = 107;
p12 = 102;
p13 = 95.2;
C1 = 10;
C2 = 7;
C3 = 8;
C4 = 6;
C5 = 7;
C6 = 6;
C7 = 5;
C8 = 10;
C9 = 8;
C10 = 6;
C11 = 10;
C12 = 7;
y1 = 500;
y2 = 200;
y3 = 800;
y4 = 400;
y5 = 700;
y6 = 900;
f = [p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 0 0 0 0 0 ]';
A1 = -[C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12 F -1 0 0 0 0;
    C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11+F C12+F 0 1+f12 -1 0 0 0;
    C1 C2 C3 C4 C5 C6 C7 C8+F C9+F C10+F 0 0 0 0 1+f23 -1 0 0;
    C1 C2 C3 C4 C5 C6+F C7+F 0 0 0 0 0 0 0 0 1+f34 -1 0;
    C1 C2 C3 C4+F C5+F 0 0 0 0 0 0 0 0 0 0 0 1+f45 -1;
    C1+F C2+F C3+F 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1+f56];
b1 = -[y1 y2 y3 y4 y5 y6]';
Aeq = [];
beq = [];
lb = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]';
[x1,fval1] = linprog(f, A1, b1, Aeq, beq, lb);
% optimal positions
% [8.1818, 0, 0, 0, 5.7774, 2.6202, 0, 0, 6.1298, 0, 0.1180, 0, 3.1180]
disp(x1([1:13])');
% optimal function value
% 2.6400e+03
disp(fval1);
%% problem 1 part 2
A2 = -[C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12 F -1 0 0 0 0;
    C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11+F C12+F 0 1+f12 -1 0 0 0;
    C1 C2 C3 C4 C5 C6 C7 C8+F C9+F C10+F 0 0 0 0 1+f23 -1 0 0;
    C1 C2 C3 C4 C5 C6+F C7+F 0 0 0 0 0 0 0 0 1+f34 -1 0;
    C1 C2 C3 C4+F C5+F 0 0 0 0 0 0 0 0 0 0 0 1+f45 -1;
    C1+F C2+F C3+F 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1+f56;
    -p1 -p2 -p3 -p4 -p5 -p6 p7 p8 p9 p10 p11 p12 p13 0 0 0 0 0];
b2 = -[y1 y2 y3 y4 y5 y6 0]';
[x2,fval2] = linprog(f, A2, b2, Aeq, beq, lb);
% optimal positions
% [0, 8.4112, 0, 0, 5.5027, 0, 3.3565, 0, 6.3502, 0, 0.3184, 0, 3.3184]
disp(x2([1:13])');
% optimal function value
% 2.6444e+03
disp(fval2);
%% problem 1 part 3
A3 = -[C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12 F -1 0 0 0 0;
    C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11+F C12+F 0 1+f12 -1 0 0 0;
    C1 C2 C3 C4 C5 C6 C7 C8+F C9+F C10+F 0 0 0 0 1+f23 -1 0 0;
    C1 C2 C3 C4 C5 C6+F C7+F 0 0 0 0 0 0 0 0 1+f34 -1 0;
    C1 C2 C3 C4+F C5+F 0 0 0 0 0 0 0 0 0 0 0 1+f45 -1;
    C1+F C2+F C3+F 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1+f56;
    -3*p1 -3*p2 -3*p3 -3*p4 -3*p5 -3*p6 p7 p8 p9 p10 p11 p12 p13 0 0 0 0 0];
b3 = -[y1 y2 y3 y4 y5 y6 0]';
[x3,fval3] = linprog(f, A3, b3, Aeq, beq, lb);
% optimal positions
% [0, 7.1267, 0, 0, 0, 0, 10.4052, 0, 6.4638, 0, 0.4216, 0, 3.4216]
disp(x3([1:13])');
% optimal function value
% 2.6796e+03
disp(fval3);

%% problem 1 Discussion
% Rank 3 portfolios according to cost: portfolio 3 > portfolio 2 > portfolio 1
% The first portfolio costs the least, and the third portfolio costs the most.

%% problem 2 part 1a)
% expected return (in order of SPY, GOVT, EEMV), adjusted for percentage
mu_1 = 100 * [0.01037794, 0.00250065, 0.00382618];
% covariance matrix (in order of SPY, GOVT, EEMV), adjusted for percentage
cov_1 = 10000 * [0.00161905, -0.00014615,  0.00107078;
       -0.00014615,  0.00011861, -0.00005158;
       0.00107078, -0.00005158,  0.00137437];

% standard deviation
% [4.0237, 1.0891, 3.7072]
std_1 = sqrt(diag(cov_1))';

% list of 20 return requirements
epsilon_list_1 = linspace(min(mu_1),max(mu_1),20);

%% problem 2 part 1b)
table_data_1 = zeros(20,5);
eff_front_data_1 = zeros(20,2);
table_data_1(1:20,1) = epsilon_list_1;
for i = 1:1:20
    [w,fval] = quadprog(cov_1,zeros(1,3),[],[],[mu_1 ; ones(1,3)],[epsilon_list_1(i);1]);
    table_data_1(i,2:4) = w';
    % adjust for the 1/2 convention
    table_data_1(i,5) = fval * 2;
    eff_front_data_1(i,1) = sqrt(fval * 2);
    eff_front_data_1(i,2) = dot(mu_1,w);
end
plot(eff_front_data_1(:,1),eff_front_data_1(:,2));
title('Efficient Frontier (Part 2)');
xlabel('Standard Deviation of Portfolio Monthly Return (in %)');
ylabel('Expected Porfolio Monthly Return (in %)');
xlim([0 3.5]);
ylim([0 3.5]);

% generate table
T_1 = array2table(table_data_1,'VariableNames',{'goal_R','w_SPY','w_GOVT', 'w_EEMV', 'portf_Variance'});

%% problem 2 part 1c)
% w_portf_1 = [-0.0178    0.9120    0.1059]
w_portf_1 = table_data_1(1,2:4);
w_portf_2 = [1/3 1/3 1/3];
w_portf_3 = [0.6 0.3 0.1];

% adjusted for percentage
mu_3 = 100 * [0.02780547, -0.01841394,  0.00988976];

% return_portf_1 = -1.6241
return_portf_1 = dot(mu_3,w_portf_1);
% return_portf_2 = 0.6427
return_portf_2 = dot(mu_3,w_portf_2);
% return_portf_3 = 1.2148
return_portf_3 = dot(mu_3,w_portf_3);

% rank based on return: portfolio 3 > portfolio 2 > portfolio 1
% The asset with highest monthly return is SPY, and the asset with lowest
% monthly return. Portfolio 3 has more weighting in SPY and less weighting 
% in GOVT, compared to porfolio 2. Porfolio 2 has more weighting in SPY 
% and less weighting in GOVT, compared to porfolio 3. Thus porfolio 1 has
% the highest return.
%% problem 2 part 2a)
% expected return (in order of SPY, GOVT, EEMV, CME, BR, CBOE, ICE, ACN), adjusted for percentage
mu_2 = 100 * [0.01037794, 0.00250065, 0.00382618, 0.0139841 , 0.01792375,0.00755397, 0.01269948, 0.01492658];
% covariance matrix (in order of SPY, GOVT, EEMV, CME, BR, CBOE, ICE, ACN), adjusted for percentage
cov_2 = 10000 * [ 0.00161905, -0.00014615,  0.00107078,  0.00076403,  0.00137581, 0.0008735 ,  0.00111931,  0.00174814;
          -0.00014615,  0.00011861, -0.00005158, -0.00011065, -0.00000266, -0.0000434 , -0.00012496, -0.0001157 ;
          0.00107078, -0.00005158,  0.00137437,  0.00011394,  0.00088126, 0.00029226,  0.00032744,  0.00094588;
          0.00076403, -0.00011065,  0.00011394,  0.002862  ,  0.00103192, 0.00202593,  0.00175087,  0.00096883;
          0.00137581, -0.00000266,  0.00088126,  0.00103192,  0.00335367, 0.00097687,  0.00113675,  0.00190056;
          0.0008735 , -0.0000434 ,  0.00029226,  0.00202593,  0.00097687, 0.00444787,  0.00162277,  0.00112037;
          0.00111931, -0.00012496,  0.00032744,  0.00175087,  0.00113675, 0.00162277,  0.00274332,  0.00150881;
          0.00174814, -0.0001157 ,  0.00094588,  0.00096883,  0.00190056, 0.00112037,  0.00150881,  0.00301063];

% standard deviation
% [4.0237, 1.0891, 3.7072, 5.3498, 5.7911, 6.6692, 5.2377, 5.4869]
std_2 = sqrt(diag(cov_2))';

% list of 20 return requirements
epsilon_list_2 = linspace(min(mu_2),max(mu_2),20);

%% problem 2 part 2b)
table_data_2 = zeros(20,10);
eff_front_data_2 = zeros(20,2);
table_data_2(1:20,1) = epsilon_list_2;
for i = 1:1:20
    [w,fval] = quadprog(cov_2,zeros(1,8),[],[],[mu_2 ; ones(1,8)],[epsilon_list_2(i);1]);
    table_data_2(i,2:9) = w';
    % adjust for the 1/2 convention
    table_data_2(i,10) = fval * 2;
    eff_front_data_2(i,1) = sqrt(fval * 2);
    eff_front_data_2(i,2) = dot(mu_2,w);
end
plot(eff_front_data_2(:,1),eff_front_data_2(:,2));
title('Efficient Frontier (Part 3)');
xlabel('Standard Deviation of Portfolio Monthly Return (in %)');
ylabel('Expected Porfolio Monthly Return (in %)');
xlim([0 5]);
ylim([0 5]);

% generate table
T_2 = array2table(table_data_2,'VariableNames',{'goal_R','w_SPY','w_GOVT', 'w_EEMV', 'w_CME', 'w_BR', 'w_CBOE', 'w_ICE', 'w_ACN','portf_Variance'});