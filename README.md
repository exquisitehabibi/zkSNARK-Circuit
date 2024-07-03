# ZK SNARK Designer

This project involves creating a zkSNARK circuit using the Circom programming language to implement a logical gate. The circuit aims to prove knowledge of the inputs A (0) and B (1) that yield a 0 output. Additionally, a Solidity verifier will be deployed on-chain to verify the proofs generated from this circuit.

## Description

The ZK SNARK Designer project is designed to demonstrate the functionalities and best practices of zkSNARK circuit development and on-chain verification. Key features of this project include:

- **Circuit Design**: Implementing a logical gate in Circom that outputs 0 for inputs A=0 and B=1.
- **Proof Generation**: Generating zkSNARK proofs to demonstrate knowledge of specific inputs.
- **On-chain Verification**: Deploying a Solidity verifier contract to a testnet and verifying the generated proofs on-chain.

## Getting Started

### Executing Program

To run this program Gitpod (https://www.gitpod.io/) or use of WSL is recommended as some commands don't work if you are using windows. 
Open any of these according to your choice, then follow these steps:

1. **Setup the Environment**:
   - To clone this project, type the following command in the terminal: `git clone web_url_of_repository`
   - Then type `npm i` in terminal to install dependencies.

2. **Modify or Create a new Circuit**:
   - If you want to run the provided circuit of project then skip below step, otherwise:
   - Modify the existing file or create a new file named `circuit.circom` and write the Circom code for the logical gate circuit.
   
3. **Compile the Circuit**:
   - To compile the circuit type the following command in terminal: `npx hardhat circom`.

4. **Generate Proofs**:
   - Use the compiled circuit to generate zkSNARK proofs with the inputs A=0 and B=1 which can be found in input.json file under circuits folder.

5. **Deploy Verifier Contract**:
   - Write a Solidity verifier contract (it will be generated automatically after compiling circom file) and deploy it to the Amoy or Mumbai Testnet using Hardhat.
   
6. **Verify Proofs On-chain**:
   - Interact with the deployed verifier contract by using polygonscan (https://polygonscan.com/).

## License

This project is licensed under the GNU GPLv3 License. See the LICENSE file for details.

## Authors

Arun Thakur  
@exquisitehabibi
