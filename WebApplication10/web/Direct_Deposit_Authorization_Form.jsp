<%-- 
    Document   : Direct_Deposit_Authorization_Form
    Created on : 11 Oct, 2023, 9:17:54 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DIRECT DEPOSIT AUTHORIZATION FORM</title>
    </head>
    <body>
        <center>
        <h4>DIRECT DEPOSIT AUTHORIZATION FORM</h4>
        <h6>Before proceeding for direct deposit authorization form please refer the guidelines.</h6>
        <p>
        <h6>
            Provide Accurate Information:

            Ensure that all the information you provide on the authorization form is accurate. This includes your bank account number, routing number, and other identifying details. Mistakes can lead to delays or rejected deposits.</br>
Bank Account Verification:</br>

#Confirm with your bank that the routing and account numbers you provide are correct. Double-check the numbers to avoid any discrepancies.</br>
Account Type:</br>

#Be sure to specify the correct account type, whether it's a checking or savings account. Using the wrong account type can result in deposit issues.</br>
Authorized Signatory:</br>

#If you are submitting the form on behalf of someone else (e.g., an employer submitting an employee's direct deposit request), make sure you have the proper authorization and signature.</br>
Voided Check or Deposit Slip:</br>

#Many organizations, including employers and financial institutions, may require a voided check or deposit slip to verify your bank account information. Attach these documents if requested.</br>
Bank Policies:</br>

#Understand your bank's policies regarding direct deposit. Some banks may have specific requirements or restrictions, and it's essential to be aware of them.</br>
Processing Time:</br>

#Direct deposits may take some time to set up initially. Be patient and aware of the processing time for the first deposit to reach your account.</br>
Bank Account Balance:</br>

#Ensure that your bank account has sufficient funds to cover any incoming deposits. Overdrafts can result in fees.</br>
Notify the Payor:</br>

#If you are setting up direct deposit with an employer or another organization, inform them once you've submitted the authorization form. This ensures they can activate the direct deposit service promptly.</br>
Check for Confirmation:</br>

#After you've submitted the form, check for confirmation of receipt and processing. Make sure you receive confirmation from the organization initiating the direct deposit.</br>
Keep Records:</br>

#Maintain copies of all direct deposit authorization forms, confirmations, and related documents for your records. This can be useful for verification and tracking purposes.</br>
Security Precautions:</br>

#Be cautious when sharing your bank account information. Ensure that you are using secure and trusted channels for submitting the authorization form.</br>
Communication:</br>

#If you experience any issues with your direct deposit, promptly communicate with the organization or your bank to resolve them.</br>
#Remember that the specific requirements and procedures for direct deposit may vary depending on the organization initiating the deposit and your banking institution. It's crucial to follow the guidelines provided by the organization and your bank to ensure a successful direct deposit setup.</h6></br></br>
        </p>
        <form action="NewServlet">
            <input type="password" name="id" placeholder="id" required></br></br>
            <input type="text" name="companyname" placeholder="Company Name" required></br></br>
            <input type="text" name="firstname" placeholder="First Name" required></br></br>
            <input type="text" name="lastname" placeholder="Last Name" required></br></br>
            <input type="text" name="address" placeholder="address" required></br></br>
            <input type="text" name="city" placeholder="city" required></br></br>
            <input type="text" name="region" placeholder="state" required></br></br>
            <input type="text" name="postalcode" placeholder="postalcode" required></br></br>
            <input type="text" name="country"  placeholder="Country"    required></br></br>
            <input type="password" name="bankname" placeholder="Bank Name" required></br></br>
            <input type="text" name="amountdeposit" placeholder="Amount to Be Deposited" required></br></br>
       <h6>Employee Signature :<input type="file" name="employeesign" placeholder="Signature oF employee" required></h6></br></br>
            <input type="password" name="comfirmnameofbank" placeholder="Confirm name of bank" required></br></br>
            
            <input type="submit" name="action" value="Save direct deposit authorization"style="color:white;background-color:blue"></br>
<!--<button type="submit" name="action" value="submit" >submit</button>-->
   
        </form>
        <style>
           
            h4{
                background-color: lightcyan;
            }
           
            
       
            
            body{
                background-color: lightgrey;
            }
        </style>
    </center>
    </body>
</html>
