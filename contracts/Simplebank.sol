// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
 
contract Simplebank {

  address[] public funders;
  uint[] public funding;

  function addFunds() external payable{
    funders.push(msg.sender);
    funding.push(msg.value);
  }
}


//const instance = await Simplebank.deployed()
//instance.addFunds({value:"5000000000000000000", from: accounts[0]})
//instance.addFunds({value:"5000000000000000000", from: accounts[1]})
//const funds = instance.funds()