### Front End Developer Challenge

Your challenge, should you accept it (which you need to do to get the job) is as follows.

You will find the contract deployed to the Rinkeby network. The contract address is: `0xF274C2Bfa2e55684B10042418B4321DEdED23071`

## What are we doing?

We're buying cat food obviously. You send eth to the contract and you will receive cat food tokens in return. It's pretty obvious.

## What do I do?

Ok, so you will need to create a basic webpage first. Probably using React. Then you will connect this page to the contract address, using web3.js. 

After this, the fun starts. 

There are a number of functions / calls but we'll focus on just four:

1. tccf - total consumed cat food
2. buy() - buy some cat food
3. eat(amount) - eat some cat food
4. supply(address) - how much is left of an address

**The Basic Challenge:**

- Call tccf and display the "total consumed cat food" on your webpage. This call is free. 

**The Advanced Challege:**

Everything in the basic challenge, plus:

- Buy some cat food. You can do this by sending at least 8888 wei to the contract, using the buy function.
- Eat some cat food. You can do this by sending an amount of food to eat.

**Super Advanced Challenge**

Do everything above and now figure out what you can and can't buy. And display these error messages on the page.
