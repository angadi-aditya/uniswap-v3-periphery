async function main() {

   const [deployer] = await ethers.getSigners();
  
    //const provider = new ethers.getSigners();
  
    //console.log(provider);
  //const [deployer] = provider.getSigner();
  
  
    
    //  const [deployer] = await ethers.getSigners();
    
     //console.log(
     //   "Deploying contracts with the account:",
     //   deployer.address
      //);
      
     // console.log("Account balance:", (await deployer.getBalance()).toString());
    
    // const mySwap1 = await ethers.getContractFactory("MySwap1");
    //  const myswap = await mySwap1.deploy();
    
     // console.log("Token address:", myswap.address);

     const CONTRACT = await ethers.getContractFactory("MySwap1");
     const contract = new ethers.Contract("0x79F0f2B9CC9060a3B341FD3F01032c91ef624b82", CONTRACT.interface, deployer);
     console.log(contract);
     console.log("BEFORE\n")
     const tx =  await contract.searchPoolandDo({
     //    value: ethers.utils.parseEther("0.1")
     });
 
     const receipt = await tx.wait();
    
    
}
    
    main()
      .then(() => process.exit(0))
      .catch(error => {
        console.error(error);
        process.exit(1);
      });