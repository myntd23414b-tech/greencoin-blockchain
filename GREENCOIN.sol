// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GreenCoin {
    string public name = "GreenCoin";
    string public symbol = "GRC";
    uint8 public decimals = 0;

    address public admin;
    mapping(address => uint256) public balanceOf;
    mapping(address => bool) public isVerifier;

    event PointsGranted(address indexed user, uint256 amount, string actionType);
    event VerifierAdded(address indexed verifier);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Not admin");
        _;
    }

    modifier onlyVerifier() {
        require(isVerifier[msg.sender], "Not verifier");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function addVerifier(address _verifier) public onlyAdmin {
        isVerifier[_verifier] = true;
        emit VerifierAdded(_verifier);
    }

    function grantPoints(address _to, uint256 _amount, string memory _actionType) public onlyVerifier {
        balanceOf[_to] += _amount;
        emit PointsGranted(_to, _amount, _actionType);
    }

    function getMyPoints() public view returns (uint256) {
        return balanceOf[msg.sender];
    }
}
