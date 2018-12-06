# Solidity Explained

## Author

Hossein Namazian

www.linkdein.com/in/hossein-namazian-a22a59135

Contract Address: 0xab7b70d10a92d7abb9802fbe96d89666980cb85b

## What's contract and Gas

## IDEs and frameworks

- install **nodeJS** and **npm**
- use **VSCode**, **atom** including a solidity linter
- use **Remix** as quick alternative
- use **truffle framework** for compilation and migration

## useful tools

- use **metamask** add-on to create wallet, add tokens, send transactions, etc
- use **myetherwallet** to create wallet, contract deployment, and testing, etc

## networks and testnets

- local testnet such as **ganache-cli**, **testrpc**
- public testnet such as **ropsten**, **rinkeby**
- use **geth** to build mainnet or testnet node

## Solidity in depth

- Version Pragma
  ^0.4.24 := >= 0.4.24 <0.5.0
- contract definition

  ```javascript
  contract template {

  }
  ```

- import

  ```javascript
  import "./path/to/contract.sol";
  ```

- comments and standards

  single line

        // comment

  contract:

        /** @title */

  function:

        /** @title ...
            *  @dev ...
            *  @param ...
            *  @return ...
            */

- state variables

  - bool
  - uint, int
  - address, members of address: (balance, transfer, send, call)
  - bytesI, byte
  - bytes, push
  - string, #push
  - mapping
  - struct
  - array

- casting

- operators

  ( +, -, \*, /, %, \*\* )

  ( |, &, ^ )

  ( >>, << )

- comparators

  ( >, <, >=, <=, ==, != )

- Enums

  ```javascript
  enum STATE {S1, S2, S3};
  ```

- constructor

  ```javascript
  constructor( args ) {

  }
  ```

- function

  ```javascript
  function dummy( args_in ) modifiers returns( args_out ) {
      ...
      return ...;
  }
  ```

- modifier

  ```javascript
  modifier myModifier() {
      ...
      _;
  }
  ```

- fallback function

  ```javascript
  function() {
      ...
  }
  ```

- event

  ```javascript
  event MyEvent(uint256 indexed value, address indexed addr, ...);

  ...

  function MyFunc() {
      emit MyEvent(_value, _addr);
  }
  ```

- indexed

-storage, memory, stack
storage variables are the ones which define your contract’s state and are only changed by sendTransaction calls
memory variables are temporary variables that exist only inside the calling function

    state variables are always in storage
    function arguments are always in memory
    local variables of struct, array or mapping type reference storage by default
    local variables of value type (i.e. neither array, nor struct nor mapping) are stored in the stack

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
- gas (transaction cost vs execution cost)

## Compilation

- ABI and bytecode

## deployment

- deploy to testnets

## testing contracts
