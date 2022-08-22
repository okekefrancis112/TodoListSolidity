const { ethers } = require("hardhat");
require("dotenv").config({ path: ".env" });

async function main() {
 
  /*
  A ContractFactory in ethers.js is an abstraction used to deploy new smart contracts,
  so MyNFTContract here is a factory for instances of our LW3Punks contract.
  */
  const TodoContract = await ethers.getContractFactory("TodoList");

  // deploy the contract
  const TodoListContract = await TodoContract.deploy();


  await TodoListContract.deployed();

  // print the address of the deployed contract
  console.log("Fran Contract Address:", TodoListContract.address);

}


// Call the main function and catch if there is any error
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

