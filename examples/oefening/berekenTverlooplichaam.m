function Tvec = berekenTverlooplichaam(C,UA,Ta,Tbegin,tvec)

%==========================================================================
% FUNCTIE Tvec = berekenTverlooplichaam(C,UA,Ta,Tbegin,tvec)
% geeft de temperatuurevolutie Tvec [°C] van een lichaam als functie 
% van de tijd tvec [s] onder volgende omstandigheden:
%   constante warmtecapaciteit C [J/K]
%   constante conductantie UA=U*A [W/K] voor warmteafgifte
%   constante omgevingstemperatuur Ta [°C]
%   temperatuur op tijdstip tvec(1) is Tbegin
%    
% INPUT data:
%   UA      double scalar
%   C       double scalar
%   Ta      double scalar
%   Tbegin  double scalar 
%   tvec    double vector (1xN) of (Nx1)
%
% OUTPUT data:
%   Tvec    double vector (1xN)
%
% STATUS: niet gevalideerd
%
% laatste wijziging op 2016-10-06
%
%==========================================================================

    Tvec = NaN(1,length(tvec));

    Tvec(1) = Tbegin;
    for ii=1:(length(tvec)-1)
        Tvec(ii+1) = Tvec(ii) + UA/C*(Ta-Tvec(ii))*(tvec(ii+1)-tvec(ii));
    end

end