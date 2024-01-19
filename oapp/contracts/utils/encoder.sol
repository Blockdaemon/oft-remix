pragma solidity ^0.8.20;

contract Encoder {
    struct SendParam {
        uint32 dstEid; // Destination endpoint ID.
        bytes32 to; // Recipient address.
        uint256 amountToSendLD; // Amount to send in local decimals.
        uint256 minAmountToCreditLD; // Minimum amount to credit in local decimals.
    }

    function encodeSendParams(
        uint32 _dstEid,
        bytes32 _to,
        uint256 _amountToSendLD,
        uint256 _minAmountToCreditLD
    ) public pure returns (SendParam memory) {
        SendParam memory sendParam = SendParam(_dstEid, _to, _amountToSendLD, _minAmountToCreditLD);
        return sendParam;
    }

}
