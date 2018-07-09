%--------------------------------------------------------------------------------------%
                                      %Azores High%
%--------------------------------------------------------------------------------------%
load Azores_Data.mat %Note that the data stored in this file is in an array called AZ_Updated.%

P=AZ_Updated(:,1); %P represents the pressure.%
Ln=AZ_Updated(:,2); %Ln represents the longitude.%
Lt=AZ_Updated(:,3); %Lt represents the latitude.%


mn=3:12:840; %mn represents the index value of March for each year being used in the study. The STH predictors below are calculated by averaging the selected attribute over certain months.%
AZLAT_MA=(Lt(mn)+Lt(mn+1))/2;
AZLAT_AM=(Lt(mn+1)+Lt(mn+2))/2;
AZLAT_MJ=(Lt(mn+2)+Lt(mn+3))/2;
AZLAT_JJ=(Lt(mn+3)+Lt(mn+4))/2;
AZLAT_JA=(Lt(mn+4)+Lt(mn+5))/2;
AZLAT_AS=(Lt(mn+5)+Lt(mn+6))/2;
AZLAT_SO=(Lt(mn+6)+Lt(mn+7))/2;
AZLAT_MAM=(Lt(mn)+Lt(mn+1)+Lt(mn+2))/3;
AZLAT_AMJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/3;
AZLAT_MJJ=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/3;
AZLAT_JJA=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/3;
AZLAT_JAS=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/3;
AZLAT_ASO=(Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/3;
AZLAT_MAMJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/4;
AZLAT_AMJJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/4;
AZLAT_MJJA=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/4;
AZLAT_JJAS=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/4;
AZLAT_JASO=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/4;
AZLAT_MAMJJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/5;
AZLAT_AMJJA=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/5;
AZLAT_MJJAS=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/5;
AZLAT_JJASO=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/5;

AZLON_MA=(Ln(mn)+Ln(mn+1))/2;
AZLON_AM=(Ln(mn+1)+Ln(mn+2))/2;
AZLON_MJ=(Ln(mn+2)+Ln(mn+3))/2;
AZLON_JJ=(Ln(mn+3)+Ln(mn+4))/2;
AZLON_JA=(Ln(mn+4)+Ln(mn+5))/2;
AZLON_AS=(Ln(mn+5)+Ln(mn+6))/2;
AZLON_SO=(Ln(mn+6)+Ln(mn+7))/2;
AZLON_MAM=(Ln(mn)+Ln(mn+1)+Ln(mn+2))/3;
AZLON_AMJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/3;
AZLON_MJJ=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/3;
AZLON_JJA=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/3;
AZLON_JAS=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/3;
AZLON_ASO=(Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/3;
AZLON_MAMJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/4;
AZLON_AMJJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/4;
AZLON_MJJA=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/4;
AZLON_JJAS=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/4;
AZLON_JASO=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/4;
AZLON_MAMJJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/5;
AZLON_AMJJA=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/5;
AZLON_MJJAS=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/5;
AZLON_JJASO=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/5;
 
AZPRS_MA=(P(mn)+P(mn+1))/2;
AZPRS_AM=(P(mn+1)+P(mn+2))/2;
AZPRS_MJ=(P(mn+2)+P(mn+3))/2;
AZPRS_JJ=(P(mn+3)+P(mn+4))/2;
AZPRS_JA=(P(mn+4)+P(mn+5))/2;
AZPRS_AS=(P(mn+5)+P(mn+6))/2;
AZPRS_SO=(P(mn+6)+P(mn+7))/2;
AZPRS_MAM=(P(mn)+P(mn+1)+P(mn+2))/3;
AZPRS_AMJ=(P(mn+1)+P(mn+2)+P(mn+3))/3;
AZPRS_MJJ=(P(mn+2)+P(mn+3)+P(mn+4))/3;
AZPRS_JJA=(P(mn+3)+P(mn+4)+P(mn+5))/3;
AZPRS_JAS=(P(mn+4)+P(mn+5)+P(mn+6))/3;
AZPRS_ASO=(P(mn+5)+P(mn+6)+P(mn+7))/3;
AZPRS_MAMJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3))/4;
AZPRS_AMJJ=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/4;
AZPRS_MJJA=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/4;
AZPRS_JJAS=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/4;
AZPRS_JASO=(P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/4;
AZPRS_MAMJJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/5;
AZPRS_AMJJA=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/5;
AZPRS_MJJAS=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/5;
AZPRS_JJASO=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/5;