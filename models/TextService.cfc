<cfcomponent>
	<cffunction name="getTagline" access="public" returntype="string" output="false">

		<cfset var tagLine = "Default quote from no database"/>
		<cfset var q = "" />

		<cftry>
			<cfquery name="q">
				SELECT line
				FROM tagline
			</cfquery>

			<cfset tagLine = q.line[randRange(1, q.recordCount)]/>
			<cfcatch type="any">
				<!--- do nothing --->
			</cfcatch>
		</cftry>

		<cfreturn tagLine/>
	</cffunction>

</cfcomponent>