<?xml version="1.0" ?>

<TestCase name="Test-AccountsFP" version="5">

<meta>
   <create version="10.3.0" buildNumber="10.3.0.297" author="admin" date="08/29/2018" host="DTServer1" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="karl_miller" date="12/14/2023" host="karlm-dt107reg03" />
</meta>

<id>B5D5827E9AC411EEA40142010AD2ED43</id>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xODU3NDAwMDQ2</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.itko.lisa.test.FailTestCaseCompanion" >
      </Companion>

    <Node name="Neg /accounts/54321" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B5D5827F9AC411EEA40142010AD2ED43" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Happy /accounts/12345" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert Response Code Equals" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Assertion name: Assert Response Code Equals checks for: false is of type: HTTP Response Code.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert Response Equals" type="com.ca.lisa.apptest.json.AssertJSONEquals2">
<log>Actual response does not match expected response.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <jsonPath>$</jsonPath>
        <expectedValue>{&quot;message&quot;:&quot;No such account&quot;}&#13;&#10;</expectedValue>
        <ignoreArrayOrder>true</ignoreArrayOrder>
</CheckResult>

<url>https://{{WSSERVER}}:{{WSPORT}}/v1/accountsimtestserv/accounts/54321</url>
<content-type></content-type>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="Happy /accounts/12345" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B5D582809AC411EEA40142010AD2ED43" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Error /accounts/67890" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert Response Code Equals" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Assertion name: Assert Response Code Equals checks for: false is of type: HTTP Response Code.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert Response Equals" type="com.ca.lisa.apptest.json.AssertJSONEquals2">
<log>Actual response does not match expected response.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <jsonPath>$</jsonPath>
        <expectedValue>{&quot;account_id&quot;:&quot;12345&quot;,&quot;last_name&quot;:&quot;Smith&quot;,&quot;first_name&quot;:&quot;Pat&quot;}&#13;&#10;</expectedValue>
        <ignoreArrayOrder>true</ignoreArrayOrder>
</CheckResult>

<url>https://{{WSSERVER}}:{{WSPORT}}/v1/accountsimtestserv/accounts/12345</url>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="Error /accounts/67890" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="B5D582819AC411EEA40142010AD2ED43" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert Response Code Equals" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Assertion name: Assert Response Code Equals checks for: false is of type: HTTP Response Code.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>500</param>
</CheckResult>

<url>https://{{WSSERVER}}:{{WSPORT}}/v1/accountsimtestserv/accounts/67890</url>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
<encode-test-props-in-url>true</encode-test-props-in-url>
    </Node>


    <Node name="abort" log="The test was aborted"
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="B5D582849AC411EEA40142010AD2ED43" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="B5D582859AC411EEA40142010AD2ED43" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="B5D582869AC411EEA40142010AD2ED43" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
