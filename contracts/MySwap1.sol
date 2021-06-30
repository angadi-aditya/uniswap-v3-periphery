// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;
pragma abicoder v2;

import './interfaces/INonfungiblePositionManager.sol';
import './interfaces/INonfungibleTokenPositionDescriptor.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract MySwap1 {
    address public UniswapV3Factory = address(0x1F98431c8aD98523631AE4a59f267346ea31F984);
    address public Multicall2 = address(0x5BA1e12693Dc8F9c48aAD8770482f4739bEeD696);
    address public ProxyAdmin = address(0xB753548F6E010e7e680BA186F9Ca1BdAB2E90cf2);    
    address public TickLens = address(0xbfd8137f7d1516D3ea5cA83523914859ec47F573);  
    address public Quoter   = address(0xb27308f9F90D607463bb33eA1BeBb41C27CE5AB6);  
    address public SwapRouter = address(0xE592427A0AEce92De3Edee1F18E0157C05861564);
    address public NFTDescriptor = address(0x42B24A95702b9986e82d421cC3568932790A48Ec); 
    address public NonfungibleTokenPositionDescriptor   = address(0x91ae842A5Ffd8d12023116943e72A606179294f3);  
    address public TransparentUpgradeableProxy = address(0xEe6A57eC80ea46401049E92587E52f5Ec1c24785);   
    address public NonfungiblePositionManager   = address(0xC36442b4a4522E871399CD717aBDD847Ab11FE88);  
    address public V3Migrator = address(0xA5644E29708357803b5A882D272c41cC0dF92B34);

    INonfungiblePositionManager positionManager = INonfungiblePositionManager(NonfungiblePositionManager);
    INonfungiblePositionManager.IncreaseLiquidityParams increaseLiquidityParams;

    function searchPoolandDo() public {
    
    /*
      (uint96 nonce, address operator, address dai_stable_coin, address usd_coin, uint24 fee, 
      int24 tickLower, int24 tickUpper, uint128 liquidity, uint256 feeGrowthInside0LastX128,
      uint256 feeGrowthInside1LastX128, uint128 tokensOwed0, uint128 tokensOwed1) =   positionManager.positions(2);
    */

      IERC20 daiCoin = IERC20(0xc7AD46e0b8a400Bb3C915120d284AafbA8fc4735);
      //IERC20 usdCoin = IERC20(usd_coin);

    daiCoin.approve(NonfungiblePositionManager, 600);
    //usdCoin.approve(NonfungiblePositionManager, 600);
   
    increaseLiquidityParams = INonfungiblePositionManager.IncreaseLiquidityParams({
        tokenId: 5,
        amount0Desired: 500,
        amount1Desired:500 ,
        amount0Min: 400,
        amount1Min: 400, 
        deadline: block.timestamp + 1000
    });
    
    positionManager.increaseLiquidity(increaseLiquidityParams);
      
    }  

}