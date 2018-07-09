%--------------------------------------------------------------------------------------%
                                  %South Pacific High%
%--------------------------------------------------------------------------------------%
load South_Pacific_Data.mat %Note that the data stored in this file is in an array called SP_Updated.%

P=SP_Updated(:,1); %P represents the pressure.%
Ln=SP_Updated(:,2); %Ln represents the longitude.%
Lt=SP_Updated(:,3); %Lt represents the latitude.%


mn=3:12:840; %mn represents the index value of March for each year being used in the study. The STH predictors below are calculated by averaging the selected attribute over certain months.%
SPLAT_MA=(Lt(mn)+Lt(mn+1))/2;
SPLAT_AM=(Lt(mn+1)+Lt(mn+2))/2;
SPLAT_MJ=(Lt(mn+2)+Lt(mn+3))/2;
SPLAT_JJ=(Lt(mn+3)+Lt(mn+4))/2;
SPLAT_JA=(Lt(mn+4)+Lt(mn+5))/2;
SPLAT_AS=(Lt(mn+5)+Lt(mn+6))/2;
SPLAT_SO=(Lt(mn+6)+Lt(mn+7))/2;
SPLAT_MAM=(Lt(mn)+Lt(mn+1)+Lt(mn+2))/3;
SPLAT_AMJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/3;
SPLAT_MJJ=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/3;
SPLAT_JJA=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/3;
SPLAT_JAS=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/3;
SPLAT_ASO=(Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/3;
SPLAT_MAMJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/4;
SPLAT_AMJJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/4;
SPLAT_MJJA=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/4;
SPLAT_JJAS=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/4;
SPLAT_JASO=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/4;
SPLAT_MAMJJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/5;
SPLAT_AMJJA=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/5;
SPLAT_MJJAS=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/5;
SPLAT_JJASO=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/5;

SPLON_MA=(Ln(mn)+Ln(mn+1))/2;
SPLON_AM=(Ln(mn+1)+Ln(mn+2))/2;
SPLON_MJ=(Ln(mn+2)+Ln(mn+3))/2;
SPLON_JJ=(Ln(mn+3)+Ln(mn+4))/2;
SPLON_JA=(Ln(mn+4)+Ln(mn+5))/2;
SPLON_AS=(Ln(mn+5)+Ln(mn+6))/2;
SPLON_SO=(Ln(mn+6)+Ln(mn+7))/2;
SPLON_MAM=(Ln(mn)+Ln(mn+1)+Ln(mn+2))/3;
SPLON_AMJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/3;
SPLON_MJJ=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/3;
SPLON_JJA=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/3;
SPLON_JAS=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/3;
SPLON_ASO=(Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/3;
SPLON_MAMJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/4;
SPLON_AMJJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/4;
SPLON_MJJA=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/4;
SPLON_JJAS=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/4;
SPLON_JASO=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/4;
SPLON_MAMJJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/5;
SPLON_AMJJA=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/5;
SPLON_MJJAS=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/5;
SPLON_JJASO=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/5;
 
SPPRS_MA=(P(mn)+P(mn+1))/2;
SPPRS_AM=(P(mn+1)+P(mn+2))/2;
SPPRS_MJ=(P(mn+2)+P(mn+3))/2;
SPPRS_JJ=(P(mn+3)+P(mn+4))/2;
SPPRS_JA=(P(mn+4)+P(mn+5))/2;
SPPRS_AS=(P(mn+5)+P(mn+6))/2;
SPPRS_SO=(P(mn+6)+P(mn+7))/2;
SPPRS_MAM=(P(mn)+P(mn+1)+P(mn+2))/3;
SPPRS_AMJ=(P(mn+1)+P(mn+2)+P(mn+3))/3;
SPPRS_MJJ=(P(mn+2)+P(mn+3)+P(mn+4))/3;
SPPRS_JJA=(P(mn+3)+P(mn+4)+P(mn+5))/3;
SPPRS_JAS=(P(mn+4)+P(mn+5)+P(mn+6))/3;
SPPRS_ASO=(P(mn+5)+P(mn+6)+P(mn+7))/3;
SPPRS_MAMJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3))/4;
SPPRS_AMJJ=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/4;
SPPRS_MJJA=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/4;
SPPRS_JJAS=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/4;
SPPRS_JASO=(P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/4;
SPPRS_MAMJJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/5;
SPPRS_AMJJA=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/5;
SPPRS_MJJAS=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/5;
SPPRS_JJASO=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/5;