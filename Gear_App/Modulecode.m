P=input("Enter power in watt");
n=input("enter pinion speed");
Pd=P*1.25;
Pd=Pd/745.5;

%converting log scale to linear for power
if 0.1<=Pd&& Pd<1
    Pdl=(log10(Pd)-log10(0.1))*69.25-(69.25-24.25);

elseif 1<=Pd && Pd<10
    Pdl=(log10(Pd)-log10(1))*69.25+24.25;

elseif 10<=Pd && Pd<100
    Pdl=(log10(Pd)-log10(10))*69.25+69+24.25;

elseif 100<=Pd && Pd<1000
    Pdl=(log10(Pd)-log(100))*69.25+69.25+69.25+24.25;

end
%Converting Scale for Speed
nl=19.75*n/600;
disp("Cout Power linear");
disp(Pdl);
disp("Cout r.p.m linear");
disp(nl);
disp("in1")
disp(-0.0117*nl^2+0.490*nl-2.12-Pdl);
disp("in2")
disp(-0.0394*nl^2+1.03*nl-2.25-Pdl);
disp("in3")
disp(-0.0388*nl^2+1.08*nl-1.14-Pdl)
disp("in4")
disp(-0.00621*nl^2+0.333*nl+1.21-Pdl)
disp('in5')
disp(-0.0624*nl^2+1.45*nl+1.49-Pdl)
disp("in6")
disp(-0.480*nl^2+1.17*nl+4.17-Pdl)
disp("in7")
disp(-0.0318*nl^2+0.942*nl+6.04-Pdl)
disp("in8")
disp(-0.0328*nl^2+0.878*nl+8.93-Pdl)
disp("in9")
disp(-0.0264*nl^2+0.759*nl+10.8-Pdl)
disp("in10")
disp(-0.0647*nl^2+1.29*nl+10.9-Pdl)
disp("in11")
disp(-0.844*nl^2+5.18*nl+11.02-Pdl)

if   -0.0117*nl^2+0.490*nl-2.12-Pdl>=0
    m=0.8;
    Dp=19.2;
    disp("in1")

elseif -0.0394*nl^2+1.03*nl-2.25-Pdl>=0
    m=1;
    Dp=24;
    disp("in2")

elseif -0.0388*nl^2+1.08*nl-1.14-Pdl>=0
    m=1.25;
    Dp=30;
    disp("in3")

elseif -0.00621*nl^2+0.333*nl+1.21-Pdl>=0
    m=1.5;
    Dp=36;
    disp("in4")

elseif -0.0624*nl^2+1.45*nl+1.49-Pdl>=0
    m=2;
    Dp=48;
    disp("in5")

elseif -0.480*nl^2+1.17*nl+4.17-Pdl>=0
    m=2.5;
    Dp=60;
    disp("in6")

elseif -0.0318*nl^2+0.942*nl+6.04-Pdl>=0
    m=3;
    Dp=72;
    disp("in7")
elseif -0.0328*nl^2+0.878*nl+8.93-Pdl>=0
    m=4;
    Dp=96;
    disp("in8")
elseif -0.0264*nl^2+0.759*nl+10.8-Pdl>=0
    m=5;
    Dp=120;
    disp("in9")
elseif -0.0647*nl^2+1.29*nl+10.9-Pdl>=0
    m=6;
    Dp=144;
    disp("in10")
elseif -0.844*nl^2+5.18*nl+11.02-Pdl>=0
    m=8;
    Dp=192;
    disp("in11")
end

disp(m);
disp(Dp);