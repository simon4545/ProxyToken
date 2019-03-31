pragma solidity ^0.5.2;

contract Identity {
	mapping(address => string) private _names;

	/**
	 * Handy function to associate a short name with the account.
	 */
	function iAm(string memory shortName) public {
		_names[msg.sender] = shortName;
	}

	/**
	 * Handy function to confirm address of the current account.
	 */
	function whereAmI() public view returns(address yourAddressIs) {
		address myself = msg.sender;
		return myself;
	}

	/**
	 * Handy function to confirm short name of the current account.
	 */
	function whoAmI() public view returns(string memory youAre) {
		return (_names[msg.sender]);
	}
}
