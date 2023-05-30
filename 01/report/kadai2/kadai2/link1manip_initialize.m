clear;

%軌道関数のパラメータ
delta=0.25;%Δ

%機構系パラメータ
l1 = 0.2;%リンク1の長さ[m]
w1 = 0.01;%リンク1の幅[m]
h1 = 0.004;%リンク1の高さ[m]
r1 = 0.1;%リンク1の端点から重心までの長さ[m]
ro = 2.69*1e-3*1e6;%リンク1の材料密度[Kg*m^(-3)]
m1 = l1*w1*h1*ro;%リンク1の質量[Kg]
Izzg1 = (1/12)*m1*(w1^2+l1^2);%リンク1の慣性モーメント zz[kg*m^2]
Ixxg1 = (1/12)*m1*(w1^2+h1^2);%リンク1の慣性モーメント xx[kg*m^2]
Iyyg1 = (1/12)*m1*(l1^2+h1^2);%リンク1の慣性モーメント yy[kg*m^2]
c1 = 0.001;%リンク1の粘性係数[N*s/rad]

%電気系パラメータ
Ra = 10;%電機子抵抗[Ω]
La = 4.4e-3;%電機子インダクタンス[H]
Kt = 0.05;%トルク定数[N*m/A]
Ke = Kt;%逆起電力定数[V*s/rad]
J = 1e-5;%電機子の慣性モーメント[kg*m^2]
Bm = 1e-6;% 電機子の粘性トルク係数[N*s/rad]

%減速機パラメータ
N = 100;%ギア比[-]
E = 0.7;%伝達効率[-]

%PID制御パラメータ
Kp =100;%比例ゲイン
Ti =0.1;%積分時間
Td =3;%微分時間
eta=0.1;%近似微分パラメータη