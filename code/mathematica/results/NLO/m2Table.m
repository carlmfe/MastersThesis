(* Created with the Wolfram Language : www.wolfram.com *)
{m2[1, 2] -> s, m2[3, 4] -> Q2, 
 m2[1, 3] -> 
  ((-4*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
            (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + (Q2 - MNeu[j]^2)*
           (3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
            2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] - 
            (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 + 
            4*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*
                MNeu[i]^2*(Q2 + MNeu[j]^2)] - 4*s^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]) - 2*MNeu[i]^2*(-Q2^3 - 6*Q2^2*s - Q2*s^2 + 
            Q2^3*Cos[2*theta1] - 2*Q2^2*s*Cos[2*theta1] + 
            Q2*s^2*Cos[2*theta1] + (3*Q2^2 + 2*Q2*s + 3*s^2 + 
              (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 - 2*Q2^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]))/(Q2^2*s)])^2 - 
    4*(2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
        (Cos[phi1]*Cos[phi3]*Cos[theta3] - Sin[phi1]*Sin[phi3])*Sin[theta1] + 
       (Cos[phi3]*(((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/Sqrt[Q2] + 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[theta3])/Sqrt[Q2*s])^2 - 
    4*(2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
        (Cos[phi3]*Sin[phi1] + Cos[phi1]*Cos[theta3]*Sin[phi3])*Sin[theta1] + 
       ((((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/Sqrt[Q2] + 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[phi3]*Sin[theta3])/
        Sqrt[Q2*s])^2 - 
    4*(2*Sqrt[s] - (Cos[theta3]*(((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/
           Sqrt[Q2] + (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]))/Sqrt[Q2*s] + 
       2*Cos[phi1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
           (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*Sin[theta1]*Sin[theta3])^2)/64, 
 m2[1, 4] -> 
  ((-4*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
            (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + 
          (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^4 - 
          2*MNeu[i]^2*(3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
            2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] + 
            (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 - 
            2*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*
                MNeu[i]^2*(Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]) + Q2*(Q2*(3*Q2^2 + 2*Q2*s + 3*s^2) + 
            Q2*(Q2 - s)^2*Cos[2*theta1] - 4*(Q2^2 - s^2)*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]) + 2*MNeu[j]^2*(Q2*(Q2^2 + 6*Q2*s + s^2) - 
            Q2*(Q2 - s)^2*Cos[2*theta1] - 2*(Q2^2 - s^2)*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]))/(Q2^2*s)])^2 - 
    64*((Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
         (Cos[phi1]*Cos[phi3]*Cos[theta3] - Sin[phi1]*Sin[phi3])*Sin[theta1])/
        2 - (Cos[phi3]*(((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/Sqrt[Q2] - 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[theta3])/(4*Sqrt[Q2*s]))^
      2 - 
    64*((Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
         (Cos[phi3]*Sin[phi1] + Cos[phi1]*Cos[theta3]*Sin[phi3])*Sin[theta1])/
        2 - ((((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/Sqrt[Q2] - 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[phi3]*Sin[theta3])/
        (4*Sqrt[Q2*s]))^2 - 
    4*(-2*Sqrt[s] + (Cos[theta3]*(((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/
           Sqrt[Q2] - (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]))/Sqrt[Q2*s] + 
       2*Cos[phi1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
           (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*Sin[theta1]*Sin[theta3])^2)/64, 
 m2[1, 5] -> (-16*(s + (Q2 - s)*Cos[theta3])^2 + 
    s*(-4*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
             (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + (Q2 - MNeu[j]^2)*
            (3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
             2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] - 
             (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 + 
             4*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)] - 4*s^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)]) - 2*MNeu[i]^2*(-Q2^3 - 6*Q2^2*s - 
             Q2*s^2 + Q2^3*Cos[2*theta1] - 2*Q2^2*s*Cos[2*theta1] + 
             Q2*s^2*Cos[2*theta1] + (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*
                Cos[2*theta1])*MNeu[j]^2 - 2*Q2^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*Sqrt[MNeu[i]^4 + 
                (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*(Q2 + MNeu[j]^2)]))/
          (Q2^2*s)] + Sqrt[2]*
        Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*
            MNeu[i]^4 + (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*
            MNeu[j]^4 - 2*MNeu[i]^2*(3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + 
             Q2^3*Cos[2*theta1] - 2*Q2^2*s*Cos[2*theta1] + 
             Q2*s^2*Cos[2*theta1] + (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*
                Cos[2*theta1])*MNeu[j]^2 - 2*Q2^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*Sqrt[MNeu[i]^4 + 
                (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*(Q2 + MNeu[j]^2)]) + 
           Q2*(Q2*(3*Q2^2 + 2*Q2*s + 3*s^2) + Q2*(Q2 - s)^2*Cos[2*theta1] - 
             4*(Q2^2 - s^2)*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)]) + 2*MNeu[j]^2*
            (Q2*(Q2^2 + 6*Q2*s + s^2) - Q2*(Q2 - s)^2*Cos[2*theta1] - 
             2*(Q2^2 - s^2)*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)]))/(Q2^2*s)])^2 - 
    16*(Q2 - s)^2*Cos[phi3]^2*Sin[theta3]^2 - 16*(Q2 - s)^2*Sin[phi3]^2*
     Sin[theta3]^2)/(64*s), m2[2, 3] -> 
  ((-4*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
            (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + (Q2 - MNeu[j]^2)*
           (3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
            2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] - 
            (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 + 
            4*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*
                MNeu[i]^2*(Q2 + MNeu[j]^2)] - 4*s^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]) - 2*MNeu[i]^2*(-Q2^3 - 6*Q2^2*s - Q2*s^2 + 
            Q2^3*Cos[2*theta1] - 2*Q2^2*s*Cos[2*theta1] + 
            Q2*s^2*Cos[2*theta1] + (3*Q2^2 + 2*Q2*s + 3*s^2 + 
              (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 - 2*Q2^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]))/(Q2^2*s)])^2 - 
    4*(2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
        (Cos[phi1]*Cos[phi3]*Cos[theta3] - Sin[phi1]*Sin[phi3])*Sin[theta1] + 
       (Cos[phi3]*(((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/Sqrt[Q2] + 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[theta3])/Sqrt[Q2*s])^2 - 
    4*(2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
        (Cos[phi3]*Sin[phi1] + Cos[phi1]*Cos[theta3]*Sin[phi3])*Sin[theta1] + 
       ((((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/Sqrt[Q2] + 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[phi3]*Sin[theta3])/
        Sqrt[Q2*s])^2 - 
    4*(2*Sqrt[s] + (Cos[theta3]*(((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/
           Sqrt[Q2] + (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]))/Sqrt[Q2*s] - 
       2*Cos[phi1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
           (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*Sin[theta1]*Sin[theta3])^2)/64, 
 m2[2, 4] -> 
  ((-4*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
            (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + 
          (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^4 - 
          2*MNeu[i]^2*(3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
            2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] + 
            (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 - 
            2*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*
                MNeu[i]^2*(Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]) + Q2*(Q2*(3*Q2^2 + 2*Q2*s + 3*s^2) + 
            Q2*(Q2 - s)^2*Cos[2*theta1] - 4*(Q2^2 - s^2)*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]) + 2*MNeu[j]^2*(Q2*(Q2^2 + 6*Q2*s + s^2) - 
            Q2*(Q2 - s)^2*Cos[2*theta1] - 2*(Q2^2 - s^2)*Cos[theta1]*
             Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                (Q2 + MNeu[j]^2)]))/(Q2^2*s)])^2 - 
    64*((Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
         (Cos[phi1]*Cos[phi3]*Cos[theta3] - Sin[phi1]*Sin[phi3])*Sin[theta1])/
        2 - (Cos[phi3]*(((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/Sqrt[Q2] - 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[theta3])/(4*Sqrt[Q2*s]))^
      2 - 
    64*((Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
         (Cos[phi3]*Sin[phi1] + Cos[phi1]*Cos[theta3]*Sin[phi3])*Sin[theta1])/
        2 - ((((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/Sqrt[Q2] - 
          (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[phi3]*Sin[theta3])/
        (4*Sqrt[Q2*s]))^2 - 
    4*(2*Sqrt[s] + (Cos[theta3]*(((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/
           Sqrt[Q2] - (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
              (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]))/Sqrt[Q2*s] + 
       2*Cos[phi1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
           (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*Sin[theta1]*Sin[theta3])^2)/64, 
 m2[2, 5] -> (-16*(s + (-Q2 + s)*Cos[theta3])^2 + 
    s*(-4*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
             (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + (Q2 - MNeu[j]^2)*
            (3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
             2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] - 
             (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 + 
             4*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)] - 4*s^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)]) - 2*MNeu[i]^2*(-Q2^3 - 6*Q2^2*s - 
             Q2*s^2 + Q2^3*Cos[2*theta1] - 2*Q2^2*s*Cos[2*theta1] + 
             Q2*s^2*Cos[2*theta1] + (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*
                Cos[2*theta1])*MNeu[j]^2 - 2*Q2^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*Sqrt[MNeu[i]^4 + 
                (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*(Q2 + MNeu[j]^2)]))/
          (Q2^2*s)] + Sqrt[2]*
        Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*
            MNeu[i]^4 + (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*
            MNeu[j]^4 - 2*MNeu[i]^2*(3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + 
             Q2^3*Cos[2*theta1] - 2*Q2^2*s*Cos[2*theta1] + 
             Q2*s^2*Cos[2*theta1] + (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*
                Cos[2*theta1])*MNeu[j]^2 - 2*Q2^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*Sqrt[MNeu[i]^4 + 
                (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*(Q2 + MNeu[j]^2)]) + 
           Q2*(Q2*(3*Q2^2 + 2*Q2*s + 3*s^2) + Q2*(Q2 - s)^2*Cos[2*theta1] - 
             4*(Q2^2 - s^2)*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)]) + 2*MNeu[j]^2*
            (Q2*(Q2^2 + 6*Q2*s + s^2) - Q2*(Q2 - s)^2*Cos[2*theta1] - 
             2*(Q2^2 - s^2)*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)]))/(Q2^2*s)])^2 - 
    16*(Q2 - s)^2*Cos[phi3]^2*Sin[theta3]^2 - 16*(Q2 - s)^2*Sin[phi3]^2*
     Sin[theta3]^2)/(64*s), m2[3, 5] -> 
  ((-8*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
             (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + 
           (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^4 - 
           2*MNeu[i]^2*(3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
             2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] + 
             (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 - 
             2*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)]) + Q2*(Q2*(3*Q2^2 + 2*Q2*s + 3*s^2) + 
             Q2*(Q2 - s)^2*Cos[2*theta1] - 4*(Q2^2 - s^2)*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)]) + 2*MNeu[j]^2*(Q2*(Q2^2 + 6*Q2*s + s^2) - 
             Q2*(Q2 - s)^2*Cos[2*theta1] - 2*(Q2^2 - s^2)*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)]))/(Q2^2*s)])^2/4 - 
    (2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
       (-(Cos[phi1]*Cos[phi3]*Cos[theta3]) + Sin[phi1]*Sin[phi3])*
       Sin[theta1] + (Cos[phi3]*(((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/
          Sqrt[Q2] - (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
             (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[theta3])/Sqrt[Q2*s])^2 - 
    (-2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
       (Cos[phi3]*Sin[phi1] + Cos[phi1]*Cos[theta3]*Sin[phi3])*Sin[theta1] + 
      ((((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/Sqrt[Q2] - 
         (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
             (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[phi3]*Sin[theta3])/
       Sqrt[Q2*s])^2 - 
    ((Cos[theta3]*(((Q2 - s)*(Q2 - MNeu[i]^2 + MNeu[j]^2))/Sqrt[Q2] - 
         (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
             (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]))/Sqrt[Q2*s] + 
      2*Cos[phi1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
          (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*Sin[theta1]*Sin[theta3])^2)/16, 
 m2[4, 5] -> 
  ((-8*Sqrt[s] + Sqrt[2]*Sqrt[((3*Q2^2 + 2*Q2*s + 3*s^2 + 
             (Q2 - s)^2*Cos[2*theta1])*MNeu[i]^4 + (Q2 - MNeu[j]^2)*
            (3*Q2^3 + 2*Q2^2*s + 3*Q2*s^2 + Q2^3*Cos[2*theta1] - 
             2*Q2^2*s*Cos[2*theta1] + Q2*s^2*Cos[2*theta1] - 
             (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*Cos[2*theta1])*MNeu[j]^2 + 
             4*Q2^2*Cos[theta1]*Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 
                2*MNeu[i]^2*(Q2 + MNeu[j]^2)] - 4*s^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)]) - 2*MNeu[i]^2*(-Q2^3 - 6*Q2^2*s - 
             Q2*s^2 + Q2^3*Cos[2*theta1] - 2*Q2^2*s*Cos[2*theta1] + 
             Q2*s^2*Cos[2*theta1] + (3*Q2^2 + 2*Q2*s + 3*s^2 + (Q2 - s)^2*
                Cos[2*theta1])*MNeu[j]^2 - 2*Q2^2*Cos[theta1]*
              Sqrt[MNeu[i]^4 + (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*
                 (Q2 + MNeu[j]^2)] + 2*s^2*Cos[theta1]*Sqrt[MNeu[i]^4 + 
                (Q2 - MNeu[j]^2)^2 - 2*MNeu[i]^2*(Q2 + MNeu[j]^2)]))/
          (Q2^2*s)])^2/4 - 
    (2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
       (Cos[phi1]*Cos[phi3]*Cos[theta3] - Sin[phi1]*Sin[phi3])*Sin[theta1] + 
      (Cos[phi3]*(((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/Sqrt[Q2] + 
         (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
             (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[theta3])/Sqrt[Q2*s])^2 - 
    (2*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*(Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*
       (Cos[phi3]*Sin[phi1] + Cos[phi1]*Cos[theta3]*Sin[phi3])*Sin[theta1] + 
      ((((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/Sqrt[Q2] + 
         (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
             (Q2 - (MNeu[i] + MNeu[j])^2))/Q2])*Sin[phi3]*Sin[theta3])/
       Sqrt[Q2*s])^2 - 
    ((Cos[theta3]*(((Q2 - s)*(Q2 + MNeu[i]^2 - MNeu[j]^2))/Sqrt[Q2] + 
         (Q2 + s)*Cos[theta1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
             (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]))/Sqrt[Q2*s] - 
      2*Cos[phi1]*Sqrt[((Q2 - (MNeu[i] - MNeu[j])^2)*
          (Q2 - (MNeu[i] + MNeu[j])^2))/Q2]*Sin[theta1]*Sin[theta3])^2)/16}
