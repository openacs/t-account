<master>

<hr>
This is right now combined requirements and design doc.
<ul>
<li>Requirements
  <ul>
  <li>
Introduction
<p>
This document describes the requirements for the t-account
package. This package has the following primary functions:
<ul>
<li>It allows applications to post, read, display and aggregate 
    financial transactions and other financial data.
<li>In the posting of a single financial transaction, it ensures that
    the incoming data is valid, primarily by ensuring that the sum of
    all debits is equal to the sum of all credits.
<li>It gives administrators the ability to run standard reports on this data.
<!-- <li>It offers a convenient repository for and the ability to run reports on data of this sort. -->
<li>It allows us to monitor the usage of financial data.
<li>It allows for the data to be on a separate database for security purposes.
</ul>
<p>
  <li>
Vision statement
<p>
This financial accounting package keeps track of a business's financial
condition. It can help by providing a standard method of keeping those
records and providing an API for other openacs packages that wish to 
use it. 
<p>
Some examples of financial data are:
<ul>
<li>Individual journal postings, showing money moving from account to
    account;
<li>Financial statements that show an abbreviated picture of the business,
    such as those you'd provide to income tax people or show to a bank so 
    you can apply for a loan; and
<li>Various ratios produced by aggregating the transactional data to 
    produce performance indicators, both in the short and the long term.
</ul>
<p>
One immediate use possibility is for ecommerce to use it to keep
track of ebusiness transactions.
  </ul>
<li>Design
  <ul>
  <li>Data Model Diagram (work in progress)
      <p>
      <img src="datamodel.png">
  </ul>
</ul>
