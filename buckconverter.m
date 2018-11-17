%Editor: Sheng-Jie Huamg (Master Student in NCTU Institute of Electrical and Control Engineering)
%Date: 2018/11/17
%Contact: erichuang0604@gmail.com
%Project Name: Static characteristics of a buck converter.
%idea from:https://www.youtube.com/watch?v=ojlw4o8TiAM

clear all;
model = 'BuckConverter2';
set_param('BuckConverter2/Pulse Generator','PulseWidth','10');
for k=1:1:40
    set_param('BuckConverter2/Load','Resistance','-19.99+20*k');
    simOut=sim(model,0.5);
    ds = Simulink.SimulationData.Dataset(simout);
    data = ds.get(1).Values.Data;
    [m n] = size(data);
    resultV1(k) = data(m)/25;%normalize
    ds2 = Simulink.SimulationData.Dataset(simout2);
    data2 = ds2.get(1).Values.Data;
    [m n] = size(data2);
    resultI1(k) = data2(m)/(((1/10000)*25)/(8*0.001));%normalize
    k
end
set_param('BuckConverter2/Pulse Generator','PulseWidth','30');
for k=1:1:40
    set_param('BuckConverter2/Load','Resistance','-19.99+20*k');
    simOut=sim(model,0.5);
    ds = Simulink.SimulationData.Dataset(simout);
    data = ds.get(1).Values.Data;
    [m n] = size(data);
    resultV2(k) = data(m)/25;%normalize
    ds2 = Simulink.SimulationData.Dataset(simout2);
    data2 = ds2.get(1).Values.Data;
    [m n] = size(data2);
    resultI2(k) = data2(m)/(((1/10000)*25)/(8*0.001));%normalize
    k
end
set_param('BuckConverter2/Pulse Generator','PulseWidth','50');
for k=1:1:40
    set_param('BuckConverter2/Load','Resistance','-19.99+20*k');
    simOut=sim(model,0.5);
    ds = Simulink.SimulationData.Dataset(simout);
    data = ds.get(1).Values.Data;
    [m n] = size(data);
    resultV3(k) = data(m)/25;%normalize
    ds2 = Simulink.SimulationData.Dataset(simout2);
    data2 = ds2.get(1).Values.Data;
    [m n] = size(data2);
    resultI3(k) = data2(m)/(((1/10000)*25)/(8*0.001));%normalize
    k
end
set_param('BuckConverter2/Pulse Generator','PulseWidth','70');
for k=1:1:40
    set_param('BuckConverter2/Load','Resistance','-19.99+20*k');
    simOut=sim(model,0.5);
    ds = Simulink.SimulationData.Dataset(simout);
    data = ds.get(1).Values.Data;
    [m n] = size(data);
    resultV4(k) = data(m)/25;%normalize
    ds2 = Simulink.SimulationData.Dataset(simout2);
    data2 = ds2.get(1).Values.Data;
    [m n] = size(data2);
    resultI4(k) = data2(m)/(((1/10000)*25)/(8*0.001));%normalize
    k
end
set_param('BuckConverter2/Pulse Generator','PulseWidth','90');
for k=1:1:40
    set_param('BuckConverter2/Load','Resistance','-19.99+20*k');
    simOut=sim(model,0.5);
    ds = Simulink.SimulationData.Dataset(simout);
    data = ds.get(1).Values.Data;
    [m n] = size(data);
    resultV5(k) = data(m)/25;%normalize
    ds2 = Simulink.SimulationData.Dataset(simout2);
    data2 = ds2.get(1).Values.Data;
    [m n] = size(data2);
    resultI5(k) = data2(m)/(((1/10000)*25)/(8*0.001));%normalize
    k
end
set_param('BuckConverter2/Pulse Generator','PulseWidth','99');
for k=1:1:40
    set_param('BuckConverter2/Load','Resistance','-19.99+20*k');
    simOut=sim(model,0.5);
    ds = Simulink.SimulationData.Dataset(simout);
    data = ds.get(1).Values.Data;
    [m n] = size(data);
    resultV6(k) = data(m)/25;%normalize
    ds2 = Simulink.SimulationData.Dataset(simout2);
    data2 = ds2.get(1).Values.Data;
    [m n] = size(data2);
    resultI6(k) = data2(m)/(((1/10000)*25)/(8*0.001));%normalize
    k
end

plot(resultI1,resultV1,'b-',resultI2,resultV2,'r-',resultI3,resultV3,'y-',resultI4,resultV4,'g-',resultI5,resultV5,'m-',resultI6,resultV6,'k-')
xlim([0 2])

