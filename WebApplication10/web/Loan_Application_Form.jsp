<%-- 
    Document   : Loan_Application_Form
    Created on : 11 Oct, 2023, 9:18:13 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOAN APPLICATION FORM</title>
    </head>
    <body>
        <CENTER>
        <h3>LOAN APPLICATION FORM</h3>
        <p>
            Validation of a loan application form is a crucial step to ensure that the information provided by the applicant is accurate and meets the criteria set by the lender. This process helps reduce the risk of fraud and assess the applicant's creditworthiness.</br> Here are common validation checks for a loan application form:</br>

Required Fields: Ensure that all mandatory fields, such as name, contact information, income, loan amount, and purpose, are filled out. You can use HTML5's required attribute or JavaScript to validate this on the client side. Additionally, validate these fields on the server to prevent bypassing the client-side checks.</br>

Data Format: Check that the data format is correct for each field. For example, verify that phone numbers, email addresses, and dates are correctly formatted.</br>

Income Validation: Validate the applicant's income to ensure it meets the minimum income requirements for the requested loan. Income documents or pay stubs may need to be provided and validated.</br>

Credit Score: Assess the applicant's credit score to determine eligibility. The score should meet the minimum requirement set by the lender.</br>

Employment Verification: Verify the applicant's employment status, job stability, and employer information. This is crucial for assessing their ability to repay the loan.</br>

Debt-to-Income Ratio (DTI): Calculate the applicant's DTI by comparing their total debt (existing loans, credit card balances) to their income. A higher DTI may affect eligibility.</br>

Collateral Assessment: If the loan is secured, validate the collateral's value and ownership. This can include property appraisals or vehicle inspections.</br>

Document Verification: Validate identity documents, such as a driver's license or passport, to confirm the applicant's identity.</br>

Address Verification: Confirm the applicant's address, which can be done by reviewing utility bills or other official documents.</br>

Anti-Fraud Checks: Implement anti-fraud checks to identify any discrepancies in the information provided, such as conflicting addresses or identities.</br>

Regulatory Compliance: Ensure that the application complies with legal and regulatory requirements. This includes Know Your Customer (KYC) and Anti-Money Laundering (AML) checks.</br>

Credit Report: Obtain the applicant's credit report to assess their credit history and outstanding debts.</br>

Legal and Age Requirements: Ensure that the applicant is of legal age to enter into a loan agreement and that they meet other legal requirements, such as residency.</br>

Consistency Checks: Verify that the information provided is consistent across all documents and forms.</br>

Error Handling: Implement error handling to provide feedback to the applicant if there are issues with their application. Clearly communicate any required corrections</br>
        </p>
        <form action="NewServlet">
            <input type="password" name="id" placeholder="id" required></br></br>
            <input type="text" name="desiredloan" placeholder="Desired Loan" required></br></br>
            <div>
                 <input type="text" name="annualincome" placeholder="Annual Income" required></br></br></h6>
            </div>
            <input type="text" name="name" placeholder=" Name" required></br></br>
            <H6> DATE OF BIRTH <input type="date" name="dateofbirth" placeholder="Date Of Birth(DD/MM/YY)" id="newdate" required></br></br></H6>
            <input type="tel" name="contactnumber" placeholder="Contact Number" required></br></br>
            <input type="email" name="emailaddress" placeholder="email id" required></br></br>
            <input type="text" name="homeaddress" placeholder="Home Address" required></br></br>
            <input type="city" name="city"  placeholder="city"  required></br></br>
            <input type="region" name="state" placeholder="state" required></br></br>
           
            
            <input type="text" name="postalcode" placeholder="Postal Code" required></br></br>
            <input type="text" name="country" placeholder="Country" required></br></br>
             <input type="text" name="jobtitle" placeholder="Country" required></br></br>
          <input type="text" name="employername" placeholder="EMPLOYERNAME" required></br></br>
          <h6> EMPLOYEE SIGNATURE: <input type="file" name="employeesign" placeholder="Signature" required></br></br></h6>
          <h6>      **REASON SHOULD BE HANDWRITTEN WITH SAME SIGN  PROVIDED ,ANY DISCREPENCIES WOULD LED TO REJECTION**</h6>
          <h6>Valid Reason for applying Loan: <input type="file" name="confirmreasonofloan" placeholder="Reason Of Loan" required></br></br></h6>
            
<!--            <input type="submit" name="action" value ="Submit Loan Application"></br></br>-->
            
            <input type="submit" name="action" value ="save" style="color:white;background-color:blue"</br></br>
            <style>
            h3{
                background-color: lightcyan;
            }
           
            
        </style>
                        
        </form>
    </CENTER>
    </body>
</html>
