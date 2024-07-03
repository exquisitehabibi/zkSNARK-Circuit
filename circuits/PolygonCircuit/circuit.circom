pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template ProjectCircuit () {  

   //signal input
   signal input A;
   signal input B;

   //signals from gates
   signal X;
   signal Y;

   //final signal output
   signal output Q;

   //component gates used for circuit
   component andGate = AND();
   component notGate = NOT();
   component norGate = NOR();


   //circuit logic
   andGate.a <== A;
   andGate.b <== B;
   X <== andGate.out;

   notGate.in <== B;
   Y <== notGate.out;

   norGate.a <== X;
   norGate.b <== Y;

   Q <== norGate.out;

}


template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}


template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}


template NOR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b + 1 - a - b;
}

component main = ProjectCircuit();