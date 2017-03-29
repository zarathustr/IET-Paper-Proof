clear all;

syms('q0','real');
syms('q1','real');
syms('q2','real');
syms('q3','real');

syms('Drx','real');
syms('Dry','real');
syms('Drz','real');

J1=[q0,q1,-q2,-q3;
    q3,q2,q1,q0;
    -q2,q3,-q0,q1];
J2=[-q3,q2,q1,-q0;
    q0,-q1,q2,-q3;
    q1,q0,q3,q2];
J3=[q2,q3,q0,q1;
    -q1,-q0,q3,q2;
    q0,-q1,-q2,q3];

Jd=Drx*J1+Dry*J2+Drz*J3;
Jd_inv=simplify(pinv(Jd)*(Drx^2*q0^2 + Drx^2*q1^2 + Drx^2*q2^2 + Drx^2*q3^2 + Dry^2*q0^2 + Dry^2*q1^2 + Dry^2*q2^2 + Dry^2*q3^2 + Drz^2*q0^2 + Drz^2*q1^2 + Drz^2*q2^2 + Drz^2*q3^2));
