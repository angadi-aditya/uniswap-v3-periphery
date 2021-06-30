
async function main() {

  await hre.network.provider.request({
    method: "hardhat_impersonateAccount",
    params: ["0xAb5801a7D398351b8bE11C439e05C5B3259aeC9B"]}
  )

  const [deployer] = await ethers.getSigners("0xAb5801a7D398351b8bE11C439e05C5B3259aeC9B");


  //const provider = new ethers.getSigners();

  //console.log(provider);
//const [deployer] = provider.getSigner();


  
  //  const [deployer] = await ethers.getSigners();
  
   console.log(
      "Deploying contracts with the account:",
      deployer.address
    );
    
    console.log("Account balance:", (await deployer.getBalance()).toString());
  
  // const mySwap1 = await ethers.getContractFactory("MySwap1");
    //const myswap = await mySwap1.deploy();
  
    //console.log("Token address:", myswap.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch(error => {
      console.error(error);
      process.exit(1);
    });