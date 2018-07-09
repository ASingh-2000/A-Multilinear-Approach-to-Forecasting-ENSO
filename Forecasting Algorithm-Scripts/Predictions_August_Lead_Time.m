%----------------------------------------------------------------------------------------------------------------------------------------%
                                                        %Lead Time - August%
%----------------------------------------------------------------------------------------------------------------------------------------%

% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
% % %   Step 1 - The scripts that are run directly below create the different variables for the STH and load the the ENSO 3.4 data   % % %
% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
run Hawaiian_Indices.m;
run South_Pacific_Indices.m;
run South_Atlantic_Indices.m;
run Azores_Indices.m;
load ENSO3_4.mat

% % % %----------------------------------------------------------------------------------------------------------------------------% % % %




% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
% % %                          Step 2 - The STH array that is created below contains all the STH variables                           % % %
% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
STH=[HHLAT_MA,HHLAT_AM,HHLAT_MJ,HHLAT_JJ,HHLAT_JA,HHLAT_MAM,...
    HHLAT_AMJ,HHLAT_MJJ,HHLAT_JJA,HHLAT_MAMJ,HHLAT_AMJJ,...
    HHLAT_MJJA,HHLON_MA,HHLON_AM,HHLON_MJ,HHLON_JJ,HHLON_JA,...
    HHLON_MAM,HHLON_AMJ,HHLON_MJJ,HHLON_JJA,HHLON_MAMJ,...
    HHLON_AMJJ,HHLON_MJJA,HHPRS_MA,HHPRS_AM,HHPRS_MJ,HHPRS_JJ,HHPRS_JA,...
    HHPRS_MAM,HHPRS_AMJ,HHPRS_MJJ,HHPRS_JJA,...
    HHPRS_MAMJ,HHPRS_AMJJ,HHPRS_MJJA,SPLAT_MA,SPLAT_AM,SPLAT_MJ,SPLAT_JJ,SPLAT_JA,SPLAT_MAM,...
    SPLAT_AMJ,SPLAT_MJJ,SPLAT_JJA,SPLAT_MAMJ,SPLAT_AMJJ,...
    SPLAT_MJJA,SPLON_MA,SPLON_AM,SPLON_MJ,SPLON_JJ,SPLON_JA,...
    SPLON_MAM,SPLON_AMJ,SPLON_MJJ,SPLON_JJA,SPLON_MAMJ,...
    SPLON_AMJJ,SPLON_MJJA,SPPRS_MA,SPPRS_AM,SPPRS_MJ,SPPRS_JJ,SPPRS_JA,...
    SPPRS_MAM,SPPRS_AMJ,SPPRS_MJJ,SPPRS_JJA,...
    SPPRS_MAMJ,SPPRS_AMJJ,SPPRS_MJJA,SALAT_MA,SALAT_AM,SALAT_MJ,SALAT_JJ,SALAT_JA,SALAT_MAM,...
    SALAT_AMJ,SALAT_MJJ,SALAT_JJA,SALAT_MAMJ,SALAT_AMJJ,...
    SALAT_MJJA,SALON_MA,SALON_AM,SALON_MJ,SALON_JJ,SALON_JA,...
    SALON_MAM,SALON_AMJ,SALON_MJJ,SALON_JJA,SALON_MAMJ,...
    SALON_AMJJ,SALON_MJJA,SAPRS_MA,SAPRS_AM,SAPRS_MJ,SAPRS_JJ,SAPRS_JA,...
    SAPRS_MAM,SAPRS_AMJ,SAPRS_MJJ,SAPRS_JJA,...
    SAPRS_MAMJ,SAPRS_AMJJ,SAPRS_MJJA,AZLAT_MA,AZLAT_AM,AZLAT_MJ,AZLAT_JJ,AZLAT_JA,AZLAT_MAM,...
    AZLAT_AMJ,AZLAT_MJJ,AZLAT_JJA,AZLAT_MAMJ,AZLAT_AMJJ,...
    AZLAT_MJJA,AZLON_MA,AZLON_AM,AZLON_MJ,AZLON_JJ,AZLON_JA,...
    AZLON_MAM,AZLON_AMJ,AZLON_MJJ,AZLON_JJA,AZLON_MAMJ,...
    AZLON_AMJJ,AZLON_MJJA,AZPRS_MA,AZPRS_AM,AZPRS_MJ,AZPRS_JJ,AZPRS_JA,...
    AZPRS_MAM,AZPRS_AMJ,AZPRS_MJJ,AZPRS_JJA,...
    AZPRS_MAMJ,AZPRS_AMJJ,AZPRS_MJJA];
    tablensemble_3_4=double.empty(40,0);
    NumCases=double.empty(0,2);
    iteration=0;
    
% % % %----------------------------------------------------------------------------------------------------------------------------% % % %

    


% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
% % %          Step 3 - Filter through the STH variables, with respect to ENSO 3.4 and the year presently being forecasted           % % %
% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
for h=1:40 %The variable h is assigned to a number representing the hth-year being forecasted in the 40-year analysis.%
    ENSOfinal=ENSO3_4(h:h+29); %ENSOfinal is assigned to the 30 ENSO years (30 ENSO 3.4 values) preceding the year currently being forecasted.%
    if iteration~=0
        NumCases(end+1,:)=[1977+h, iteration]; %NumCases is an array that counts the number of models producing forecasts for each year (this number is actually two times what is expected since each model occurs twice).%
    end      
    iteration=0; %The variable iteration tracks the number of models for each year being forecasted. It is reset before a new year begins (as seen in the current and next lines).%
    for i=1:144 %Counter i iterates through the STH list and chooses the first variable being tested as a predictor in the set.%
        vari_1=STH(:,i); %The first variable is picked from the set (STH).%
        variable_1=vari_1(h:h+29); %The first variable's data for the 30 years prior to the forecasting time is selected.%
        [C1,p1]=corrcoef(ENSOfinal,variable_1); %The correlation between the previous 30 years for ENSO and Variable1 is being calculated. In the example given in the procedure of the paper, the correlation between Variable1(1948-1977) and ENSO(1949-1978) is being calculated to form a predictive relationship to forecast 1979.%
        if round(abs(C1(1,2)),2)>=0.42 %The correlation between Variable1 and ENSO must meet the threshold (to check the variable's predictive power of ENSO over the past 30 years), or the loop moves to the next variable.%
            for j=1:144 %Counter j iterates through the STH list and chooses the first variable being tested as a predictor in the set.%
                vari_2=STH(:,j); %The second variable is picked from the set (STH).%
                variable_2=vari_2(h:h+29); %The second variable's data for the previous 30 years is selected.%
                [C2,p2]=corrcoef(variable_1,variable_2); %The correlation between Variable1 and Variable2 is calculated, over the past 30 years. In the example given in the paper, the correlation between Variable1(1948-1977) and Variable2(1948-1977) is being calculated.%
                [C3,p3]=corrcoef(ENSOfinal,variable_2); %The correlation between the previous 30 years of ENSO and Variable1 is being calculated. In the example given in the procedure of the paper, the correlation between Variable2(1948-1977) and ENSO(1949-1978) is being calculated to form a predictive relationship to forecast 1979.%
                if round(abs(C3(1,2)),2)>=0.42 && round(abs(C2(1,2)),2)<=0.42 %The correlation calculated in the previous two lines must pass the thresholds, or the loop moves to the next Variable2. In the example given in the paper, the correlation is calculated for [Variable2(1948-1977),ENSO(1949-1978)], as well as, [Variable1(1948-1977),Variable2(1948-1977)] when forecasting 1979.%
                    iteration=iteration+1; %All restrictions have been met so iteration increases by one to mark a new model in the current year's forecast.%
                    run Multilinear_Step.m %Now that all thresholds are met, the script creating forecasts is run for the variables that have just passed the tests above.%
                end
            end
        end
    end
end

% % % %----------------------------------------------------------------------------------------------------------------------------% % % %




% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
% % %                                           Step 4 - Average models to create forecasts                                          % % %
% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
NumCases(end+1,:)=[1978+h, iteration]; %The number of cases for the 2018 forecast is added to NumCases.%
NumCases=transpose(NumCases);
ensembleproj3_4=[mean(nonzeros(tablensemble_3_4(1,:)));mean(nonzeros(tablensemble_3_4(2,:)));mean(nonzeros(tablensemble_3_4(3,:)));mean(nonzeros(tablensemble_3_4(4,:)));mean(nonzeros(tablensemble_3_4(5,:)));mean(nonzeros(tablensemble_3_4(6,:)));mean(nonzeros(tablensemble_3_4(7,:)));mean(nonzeros(tablensemble_3_4(8,:)));mean(nonzeros(tablensemble_3_4(9,:)));mean(nonzeros(tablensemble_3_4(10,:)));mean(nonzeros(tablensemble_3_4(11,:)));mean(nonzeros(tablensemble_3_4(12,:)));mean(nonzeros(tablensemble_3_4(13,:)));mean(nonzeros(tablensemble_3_4(14,:)));mean(nonzeros(tablensemble_3_4(15,:)));mean(nonzeros(tablensemble_3_4(16,:)));mean(nonzeros(tablensemble_3_4(17,:)));mean(nonzeros(tablensemble_3_4(18,:)));mean(nonzeros(tablensemble_3_4(19,:)));mean(nonzeros(tablensemble_3_4(20,:)));mean(nonzeros(tablensemble_3_4(21,:)));mean(nonzeros(tablensemble_3_4(22,:)));mean(nonzeros(tablensemble_3_4(23,:)));mean(nonzeros(tablensemble_3_4(24,:)));mean(nonzeros(tablensemble_3_4(25,:)));mean(nonzeros(tablensemble_3_4(26,:)));mean(nonzeros(tablensemble_3_4(27,:)));mean(nonzeros(tablensemble_3_4(28,:)));mean(nonzeros(tablensemble_3_4(29,:)));mean(nonzeros(tablensemble_3_4(30,:)));mean(nonzeros(tablensemble_3_4(31,:)));mean(nonzeros(tablensemble_3_4(32,:)));mean(nonzeros(tablensemble_3_4(33,:)));mean(nonzeros(tablensemble_3_4(34,:)));mean(nonzeros(tablensemble_3_4(35,:)));mean(nonzeros(tablensemble_3_4(36,:)));mean(nonzeros(tablensemble_3_4(37,:)));mean(nonzeros(tablensemble_3_4(38,:)));mean(nonzeros(tablensemble_3_4(39,:)));mean(nonzeros(tablensemble_3_4(40,:)))]; %This array represents the ensemble model. The set of forecasts for each year is averaged in this line. For example, the set of forecasts for 1979 is averaged in "mean(tablensemble_3_4(1,:))".%
stdev_final_3_4_transpose=transpose(tablensemble_3_4);
stdev_final_3_4=std(stdev_final_3_4_transpose); %The standard deviation of each year is stored in this matrix.%

% % % %----------------------------------------------------------------------------------------------------------------------------% % % %




% % % %----------------------------------------------------------------------------------------------------------------------------% % % %
% % %                                       Step 5 - Render the images displaying the results                                        % % %
% % % %----------------------------------------------------------------------------------------------------------------------------% % % %

%                      Forecast Figures                         %
year=(1979:2017)';
figure
g=plot(year,ENSO3_4(31:69)','k','LineWidth',3.0); hold on
year=(1979:2018)';
h=plot(year,ensembleproj3_4,'k','LineWidth',3.0,'LineStyle','--');
for i=1:size(tablensemble_3_4,2)
    plot(year,tablensemble_3_4(:,i)','x', 'Color', [.5, .5, .5, .3])
end
i=plot(year,ensembleproj3_4,'*', 'Color', [1,0,0]);
xlabel('Year','fontsize',14); 
xlim([min(year)-0.5 max(year)+0.5]); 
ylabel('ENSO 3.4','fontsize',14); 
legend('Observed','Ensemble Forecast','Individual Forecast'); grid on
%uistack(g,'top')
%uistack(h,'top')
%uistack(i,'top')

%                      Standard Deviation                       %
year=(1979:2017)';
figure
plot(year,ENSO3_4(31:69)','k','LineWidth',3.0), hold on
year=(1979:2018)';
plot(year,ensembleproj3_4,'k','LineWidth',3.0,'LineStyle','--')
errorbar(year,ensembleproj3_4,stdev_final_3_4)
xlabel('Year','fontsize',14); 
xlim([min(year)-0.5 max(year)+0.5]); 
ylabel('ENSO 3.4','fontsize',14); 
legend('Observed','Forecasts'); grid on

run Statistics_Output.m %This script outputs key statistics for the models.%