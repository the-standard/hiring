// contracts/SimpleToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract CatFood is ERC20, AccessControl {

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor() public ERC20("CAT", "FOOD") {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(MINTER_ROLE, _msgSender());
    }

    function buy() public payable {
        require(msg.value >= 8888, 'not-enough-cat-food-$$$');
        require(msg.value < 888888, 'too-much-cat-food-$$$');
        require(balanceOf(msg.sender) < 344952168, 'you-too-much-eat');

        uint256 amount = msg.value * 12937;
        _mint(msg.sender, amount);
    }

    function eat(uint256 amount) public {
        require(amount > 0);
        _burn(msg.sender, amount);
    }

    function supply(address who) public view returns(uint256) {
        ERC20 token = ERC20(address(this));
        return token.balanceOf(who);
    }
}

