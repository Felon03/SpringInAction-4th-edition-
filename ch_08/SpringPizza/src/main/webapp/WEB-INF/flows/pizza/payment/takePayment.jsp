<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Freed
  Date: 2018/6/25
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>

    <script>
        function showCreditCardField() {
            var ccNumberStyle = document.paymentForm.creditCardNumber.style;
            ccNumberStyle.visibility = 'visible';
        }
        
        function hideCreditCardField() {
            var ccNumberStyle = document.paymentForm.creditCardNumber.style;
            ccNumberStyle.visibility = 'hidden';
        }
    </script>

    <h2>Take Payment</h2>
    <form:form commandName="paymentDetails" name="paymentForm">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />

        <form:radiobutton path="paymentType"
                          value="CASH" label="Cash (taken at delivery)"
                          onclick="hideCreditCardField()" /><br/>
        <form:radiobutton path="paymentType"
                          value="CHECK" label="Check (taken at delivery)"
                          onclick="hideCreditCardField()" /><br/>
        <form:radiobutton path="paymentType"
                          value="CREDIT_CARD" label="Credit Card:"
                          onclick="showCreditCardField()" />

        <form:input path="creditCardNumber" cssStyle="visibility: hidden;" />

        <br/><br/>
        <input type="submit" class="button" name="_eventId_paymentSubmitted" value="Submit" />
        <input type="submit" class="button" name="_eventId_cancel" value="Cancel" />
    </form:form>
</div>
