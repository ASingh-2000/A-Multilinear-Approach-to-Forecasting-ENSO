%--------------------------------------------------------------------------------------%
                                     %Multilinear Step%
%--------------------------------------------------------------------------------------%
X1=[ones(size(variable_1)) variable_1 variable_2];   
[b_all1, b_all1i, r_all1, r_all1i, stats_all1]=regress(ENSOfinal,X1); %A multilinear regression is run for the given predictors (variables).%
tablensemble_3_4(h,iteration)=b_all1(1)+b_all1(2)*vari_1(h+30)+b_all1(3)*vari_2(h+30); %Once the coefficients for the year are calculated, the next year's variables are input into the equation to predict the next ENSO. The output is assigned to the space in tablensemble_3_4(hth year, number output for hth year).%