%--------------------------------------------------------------------------------------%
                                  %South Atlantic High%
%--------------------------------------------------------------------------------------%
load South_Atlantic_Data.mat %Note that the data stored in this file is in an array called SA_Updated.%

P=SA_Updated(:,1); %P represents the pressure.%
Ln=SA_Updated(:,2); %Ln represents the longitude.%
Lt=SA_Updated(:,3); %Lt represents the latitude.%

mn=3:12:840; %mn represents the index value of March for each year being used in the study. The STH predictors below are calculated by averaging the selected attribute over certain months.%
SALAT_MA=(Lt(mn)+Lt(mn+1))/2;
SALAT_AM=(Lt(mn+1)+Lt(mn+2))/2;
SALAT_MJ=(Lt(mn+2)+Lt(mn+3))/2;
SALAT_JJ=(Lt(mn+3)+Lt(mn+4))/2;
SALAT_JA=(Lt(mn+4)+Lt(mn+5))/2;
SALAT_AS=(Lt(mn+5)+Lt(mn+6))/2;
SALAT_SO=(Lt(mn+6)+Lt(mn+7))/2;
SALAT_MAM=(Lt(mn)+Lt(mn+1)+Lt(mn+2))/3;
SALAT_AMJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/3;
SALAT_MJJ=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/3;
SALAT_JJA=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/3;
SALAT_JAS=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/3;
SALAT_ASO=(Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/3;
SALAT_MAMJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/4;
SALAT_AMJJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/4;
SALAT_MJJA=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/4;
SALAT_JJAS=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/4;
SALAT_JASO=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/4;
SALAT_MAMJJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/5;
SALAT_AMJJA=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/5;
SALAT_MJJAS=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/5;
SALAT_JJASO=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/5;

SALON_MA=(Ln(mn)+Ln(mn+1))/2;
SALON_AM=(Ln(mn+1)+Ln(mn+2))/2;
SALON_MJ=(Ln(mn+2)+Ln(mn+3))/2;
SALON_JJ=(Ln(mn+3)+Ln(mn+4))/2;
SALON_JA=(Ln(mn+4)+Ln(mn+5))/2;
SALON_AS=(Ln(mn+5)+Ln(mn+6))/2;
SALON_SO=(Ln(mn+6)+Ln(mn+7))/2;
SALON_MAM=(Ln(mn)+Ln(mn+1)+Ln(mn+2))/3;
SALON_AMJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/3;
SALON_MJJ=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/3;
SALON_JJA=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/3;
SALON_JAS=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/3;
SALON_ASO=(Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/3;
SALON_MAMJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/4;
SALON_AMJJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/4;
SALON_MJJA=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/4;
SALON_JJAS=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/4;
SALON_JASO=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/4;
SALON_MAMJJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/5;
SALON_AMJJA=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/5;
SALON_MJJAS=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/5;
SALON_JJASO=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/5;
 
SAPRS_MA=(P(mn)+P(mn+1))/2;
SAPRS_AM=(P(mn+1)+P(mn+2))/2;
SAPRS_MJ=(P(mn+2)+P(mn+3))/2;
SAPRS_JJ=(P(mn+3)+P(mn+4))/2;
SAPRS_JA=(P(mn+4)+P(mn+5))/2;
SAPRS_AS=(P(mn+5)+P(mn+6))/2;
SAPRS_SO=(P(mn+6)+P(mn+7))/2;
SAPRS_MAM=(P(mn)+P(mn+1)+P(mn+2))/3;
SAPRS_AMJ=(P(mn+1)+P(mn+2)+P(mn+3))/3;
SAPRS_MJJ=(P(mn+2)+P(mn+3)+P(mn+4))/3;
SAPRS_JJA=(P(mn+3)+P(mn+4)+P(mn+5))/3;
SAPRS_JAS=(P(mn+4)+P(mn+5)+P(mn+6))/3;
SAPRS_ASO=(P(mn+5)+P(mn+6)+P(mn+7))/3;
SAPRS_MAMJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3))/4;
SAPRS_AMJJ=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/4;
SAPRS_MJJA=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/4;
SAPRS_JJAS=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/4;
SAPRS_JASO=(P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/4;
SAPRS_MAMJJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/5;
SAPRS_AMJJA=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/5;
SAPRS_MJJAS=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/5;
SAPRS_JJASO=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/5;