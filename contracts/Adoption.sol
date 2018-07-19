pragma solidity ^0.4.17; // The minimum version of Solidity required 

contract Adoption {
	
	address[16] public adopters;

	function adopt(uint petId) public returns (uint) {
		require(petId >= 0 && petId <= 15);
		adopters[petId] = msg.sender;
		return petId;
	}

	function getAdopters() public view returns(address[16]) {
		return adopters;
	}

}

// Solidity is a compiled language, meaning we need to compile our Solidity to bytecode for the Ethereum Virtual Machine (EVM) to execute. 