%--------------------------------------------------------------------------------------%
                                     %Hawaiian High%
%--------------------------------------------------------------------------------------%
load Hawaiian_Data.mat %Note that the data stored in this file is in an array called HW_Updated.%

P=HW_Updated(:,1); %P represents the pressure.%
Ln=HW_Updated(:,2); %Ln represents the longitude.%
Lt=HW_Updated(:,3); %Lt represents the latitude.%


mn=3:12:840; %mn represents the index value of March for each year being used in the study. The STH predictors below are calculated by averaging the selected attribute over certain months.%
HHLAT_MA=(Lt(mn)+Lt(mn+1))/2;
HHLAT_AM=(Lt(mn+1)+Lt(mn+2))/2;
HHLAT_MJ=(Lt(mn+2)+Lt(mn+3))/2;
HHLAT_JJ=(Lt(mn+3)+Lt(mn+4))/2;
HHLAT_JA=(Lt(mn+4)+Lt(mn+5))/2;
HHLAT_AS=(Lt(mn+5)+Lt(mn+6))/2;
HHLAT_SO=(Lt(mn+6)+Lt(mn+7))/2;
HHLAT_MAM=(Lt(mn)+Lt(mn+1)+Lt(mn+2))/3;
HHLAT_AMJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/3;
HHLAT_MJJ=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/3;
HHLAT_JJA=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/3;
HHLAT_JAS=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/3;
HHLAT_ASO=(Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/3;
HHLAT_MAMJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3))/4;
HHLAT_AMJJ=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/4;
HHLAT_MJJA=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/4;
HHLAT_JJAS=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/4;
HHLAT_JASO=(Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/4;
HHLAT_MAMJJ=(Lt(mn)+Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4))/5;
HHLAT_AMJJA=(Lt(mn+1)+Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5))/5;
HHLAT_MJJAS=(Lt(mn+2)+Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6))/5;
HHLAT_JJASO=(Lt(mn+3)+Lt(mn+4)+Lt(mn+5)+Lt(mn+6)+Lt(mn+7))/5;

HHLON_MA=(Ln(mn)+Ln(mn+1))/2;
HHLON_AM=(Ln(mn+1)+Ln(mn+2))/2;
HHLON_MJ=(Ln(mn+2)+Ln(mn+3))/2;
HHLON_JJ=(Ln(mn+3)+Ln(mn+4))/2;
HHLON_JA=(Ln(mn+4)+Ln(mn+5))/2;
HHLON_AS=(Ln(mn+5)+Ln(mn+6))/2;
HHLON_SO=(Ln(mn+6)+Ln(mn+7))/2;
HHLON_MAM=(Ln(mn)+Ln(mn+1)+Ln(mn+2))/3;
HHLON_AMJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/3;
HHLON_MJJ=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/3;
HHLON_JJA=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/3;
HHLON_JAS=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/3;
HHLON_ASO=(Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/3;
HHLON_MAMJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3))/4;
HHLON_AMJJ=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/4;
HHLON_MJJA=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/4;
HHLON_JJAS=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/4;
HHLON_JASO=(Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/4;
HHLON_MAMJJ=(Ln(mn)+Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4))/5;
HHLON_AMJJA=(Ln(mn+1)+Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5))/5;
HHLON_MJJAS=(Ln(mn+2)+Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6))/5;
HHLON_JJASO=(Ln(mn+3)+Ln(mn+4)+Ln(mn+5)+Ln(mn+6)+Ln(mn+7))/5;
 
HHPRS_MA=(P(mn)+P(mn+1))/2;
HHPRS_AM=(P(mn+1)+P(mn+2))/2;
HHPRS_MJ=(P(mn+2)+P(mn+3))/2;
HHPRS_JJ=(P(mn+3)+P(mn+4))/2;
HHPRS_JA=(P(mn+4)+P(mn+5))/2;
HHPRS_AS=(P(mn+5)+P(mn+6))/2;
HHPRS_SO=(P(mn+6)+P(mn+7))/2;
HHPRS_MAM=(P(mn)+P(mn+1)+P(mn+2))/3;
HHPRS_AMJ=(P(mn+1)+P(mn+2)+P(mn+3))/3;
HHPRS_MJJ=(P(mn+2)+P(mn+3)+P(mn+4))/3;
HHPRS_JJA=(P(mn+3)+P(mn+4)+P(mn+5))/3;
HHPRS_JAS=(P(mn+4)+P(mn+5)+P(mn+6))/3;
HHPRS_ASO=(P(mn+5)+P(mn+6)+P(mn+7))/3;
HHPRS_MAMJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3))/4;
HHPRS_AMJJ=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/4;
HHPRS_MJJA=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/4;
HHPRS_JJAS=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/4;
HHPRS_JASO=(P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/4;
HHPRS_MAMJJ=(P(mn)+P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4))/5;
HHPRS_AMJJA=(P(mn+1)+P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5))/5;
HHPRS_MJJAS=(P(mn+2)+P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6))/5;
HHPRS_JJASO=(P(mn+3)+P(mn+4)+P(mn+5)+P(mn+6)+P(mn+7))/5;