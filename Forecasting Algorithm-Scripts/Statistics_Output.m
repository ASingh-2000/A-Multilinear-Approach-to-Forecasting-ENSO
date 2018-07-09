%--------------------------------------------------------------------------------------%
               %Statistical Comparison Step (Forecasts vs ENSO Observed)%
%--------------------------------------------------------------------------------------%
ENSOfinal2=ENSO3_4(31:70); %ENSOfinal2 is assigned to the years for which the algorithm is tested (1979-2018).%

forfinalfirstensemble=(ensembleproj3_4-ENSOfinal2).^2;
for_final1ensemble=mean(forfinalfirstensemble);
RMSEensemble=sqrt(for_final1ensemble); %RMSE is calculated in these past three lines.%
for_final2ensemble=ensembleproj3_4-ENSOfinal2;
MAEensemble=mean(abs(for_final2ensemble)); %MAE is calculated in these past two lines.%
[C20, p20]=corrcoef([ensembleproj3_4 ENSOfinal2]);
correlation_ensemble=C20(1,2);

%The following checks whether the algorithm's predictions matches ENSO
%phase for the years being forecasted
Actually_Nino=0;
Actually_Nina=0;
Actually_Neutral=0;
Ensemble_Nino=0;
Ensemble_Nina=0;
Ensemble_Neutral=0;
Mispredict_Nino=0;
Mispredict_Nina=0;
Mispredict_Neutral=0;
for xyz=1:40 
    if ENSOfinal2(xyz)>=.5
        Actually_Nino=Actually_Nino+1;
        if ensembleproj3_4(xyz)>=.5
            Ensemble_Nino=Ensemble_Nino+1;
        elseif ensembleproj3_4(xyz)<=-.5
            Mispredict_Nino=Mispredict_Nino+1;
            Ensemble_Nina=Ensemble_Nina+1;
        else
            Mispredict_Nino=Mispredict_Nino+1;
            Ensemble_Neutral=Ensemble_Neutral+1;
        end
        
    elseif ENSOfinal2(xyz)<=-.5
        Actually_Nina=Actually_Nina+1;
        if ensembleproj3_4(xyz)<=-.5
            Ensemble_Nina=Ensemble_Nina+1;
        elseif ensembleproj3_4(xyz)>=.5
            Mispredict_Nina=Mispredict_Nina+1;
            Ensemble_Nino=Ensemble_Nino+1;
        else
            Mispredict_Nina=Mispredict_Nina+1;
            Ensemble_Neutral=Ensemble_Neutral+1;
        end
        
    elseif ENSOfinal2(xyz)>-.5 && ENSOfinal2(xyz)<.5
        Actually_Neutral=Actually_Neutral+1;
        if ensembleproj3_4(xyz)<=-.5
            Mispredict_Neutral=Mispredict_Neutral+1;
            Ensemble_Nina=Ensemble_Nina+1;
        elseif ensembleproj3_4(xyz)>=.5
            Mispredict_Neutral=Mispredict_Neutral+1;
            Ensemble_Nino=Ensemble_Nino+1;
        else
            Ensemble_Neutral=Ensemble_Neutral+1;
        end
    end
end
output34=table(ensembleproj3_4(40),stdev_final_3_4(40),RMSEensemble,MAEensemble,correlation_ensemble,Actually_Nino,Actually_Nina,Actually_Neutral,Ensemble_Nino,Ensemble_Nina,Ensemble_Neutral,Mispredict_Nino,Mispredict_Nina,Mispredict_Neutral)