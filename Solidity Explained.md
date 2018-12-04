# Solidity Explained

## What's contract and Gas

## IDEs and frameworks

- use **VSCode**, **atom** including a solidity linter
- use **truffle framework** for compilation and migration
- use **myetherwallet** for deployment, testing, ...
- use **Resmix** as quick alternative

## network and deployment

- local testnet (ganache-cli, testrpc, ...)
- public testnet (ropsten, rinkeby) and faucet
- mainnet
- metamask

## Solidity in depth

- Version Pragma
    ^0.4.24 :=  >= 0.4.24 <0.5.0
- contract definition
- import
- comments
    contract: /** @title */
    function:
        /** @title ...
            *  @dev ...
            *  @param ...
            *  @return ...
            */

- state variables (
        bool, 
        uint, int, 
        address, members of address: (balance, transfer, send, call)
        bytesI, byte,
        bytes,  push
        string, #push
        mapping, 
        struct, 
        array)
    casting
    operators (+,-,*,/,%,**) (|, &, ^) (>>, <<)
    comparators ( >, <, >=, <=, ==, !=)
    
- Enums (enum STATE {S1, S2, S3};)
    
- function
- constructor
- modifier 
- fallback function
- event 
- gas (transaction cost vs execution cost)

-storage, memory, stack
    storage variables are the ones which define your contract’s state and are only changed by sendTransaction calls
    memory variables are temporary variables that exist only inside the calling function
    
    state variables are always in storage
    function arguments are always in memory
    local variables of struct, array or mapping type reference storage by default
    local variables of value type (i.e. neither array, nor struct nor mapping) are stored in the stack

- indexed

- public vs private
- internal vs external
- view vs pure

- msg (sender, now, blockNumber)
- payable
- require, assert
- for
- if-else
- contract interface
- inheritence
- function overloading
- library

## Compilation

- ABI and bytecode

## deployment

- deploy to testnets

## testing contracts