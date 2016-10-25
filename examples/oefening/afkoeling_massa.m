%==========================================================================
% SCRIPT Berekenen tijdsverloop van afkoeling van een massa
% Voorbeeld gebruik matlab bij vak fluïdummechanica
% auteur: Frederik Rogiers, KU Leuven
% datum: 2016/10/06
%==========================================================================

clear variables         % maak geheugen leeg 
clc                     % maak command window leeg

%==========================================================================
% GEGEVENS
%==========================================================================
% TIP: geef bij elke variabele de eenheid en de fysische betekenis
% TIP: vermijdt zoveel mogelijk getallen waarvan de betekenis geraden dient te worden.
%      programmeurs noemen dit 'magic numbers'.
C  = 100e3;         % [J/K] warmtecapaciteit van massa
A  = 6;             % [m2] contactoppervlak van massa met lucht
Tbegin = 80;        % [°C] initiële temperatuur van massa
Ta = 20;            % [°C] constante omgevingstemperatuur
kisol = 0.04;       % [W/mK] thermische geleidbaarheid van isolatie
hconv = 8;          % [W/m2K] convectiecoëfficiënt
dmin  = 0;          % [cm] minimale isolatiedikte
dmax  = 20;         % [cm] maximale isolatiedikte
nd = 5;             % [-] aantal waardes voor de dikte
dvec = linspace(dmin,dmax,nd)*1e-2; % [m] isolatiediktes
tbegin = 0;         % [h] begintijd
teind = 24;         % [h] eindijd
nt = 100;           % [-] aantal waardes voor de tijd
tvec = linspace(tbegin,teind,nt)*3600;   % [s] tijdswaarden




%==========================================================================
% BEREKEN TEMPERATUURVERLOOP VOOR VERSCHILLENDE ISOLATIEDIKTES
%==========================================================================
% TIP: zet code die herbruikt wordt of een belangrijke input-output relatie vormt in een afzonderlijke functie.
Tmat = NaN(length(dvec),length(tvec));  % initialiseer de matrix die we zullen invullen met het temperatuurverloop bij elke isolatiedikte
U = (1/hconv + dvec/kisol).^(-1);       % we gebruiken hier de operator .^ (=elementsgewijze machtsverheffing)
figlegendlabels = cell(length(dvec),1); % initialiseer een cell array met labels voor het plotten van de legende later
for ii=1:length(dvec) % loop over alle isolatiediktes
    Tmat(ii,:) = berekenTverlooplichaam(C,U(ii)*A,Ta,Tbegin,tvec); % bereken temperatuurverloop voor isolatiedikte dvec(ii) en sla op in kolom van Tmat
    figlegendlabels{ii} = sprintf('d=%g cm',dvec(ii)*100); % sla bijhorende label op voor in de legende 
end




%==========================================================================
% PLOT TEMPERATUURVERLOOP VOOR VERSCHILLENDE ISOLATIEDIKTES
%==========================================================================
figure; hold on; box on
plot(tvec/3600,Tmat) % let op het herschalen van de tijd naar uren

xlim([0 teind])
set(gca,'XTick',linspace(tbegin,teind,5))
xlabel('tijd (h)')

ylabel('Temperatuur (°C)')
ylim([Ta Tbegin])

legend(figlegendlabels)


