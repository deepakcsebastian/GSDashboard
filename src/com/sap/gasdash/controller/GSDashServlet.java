package com.sap.gasdash.controller;

import java.io.BufferedReader;
import java.io.IOException;

import java.io.InputStreamReader;
import java.io.InvalidObjectException;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import sun.management.ExtendedPlatformComponent;




/**
 * Servlet implementation class GSDashServlet
 */
@WebServlet("/GSDashServlet")
public class GSDashServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GSDashServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("https://gsd.cfapps.eu10.hana.ondemand.com/GSDashServlet?req=dashboard").append(request.getContextPath());
		/*Map params = request.getParameterMap();
	    Iterator itr = params.keySet().iterator();*/

		try
		{

		      /*Adding elements to HashMap*/
		     
			/*while ( itr.hasNext() )
		      {
		        String key = (String) itr.next();
		        String value = ((String[]) params.get( key ))[ 0 ];
		        if(!key.contentEquals("req"))
		        {
		        	throw new InvalidObjectException("Invalid Request Key");
		        }
		        
		      }*/
			
		String req = "null";
		req = request.getParameter("req");

		
	   if (req.equalsIgnoreCase("taasus2_2")) {

			String api = "https://api.us2.hana.ondemand.com/monitoring/v1/accounts/d577daf1d/apps/taxservice/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557834");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			request.setAttribute("usageArr", usage("taasus2_2usage.txt"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
			
		} 
	   
		else if (req.equalsIgnoreCase("taaseu1")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a30e284f1/apps/taxservice/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("2606958");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			request.setAttribute("usageArr", usage("taaseu1usage.txt"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("smirsap1")) {
			String api = "https://api.ap1.hana.ondemand.com/monitoring/v1/accounts/c86b00db6/apps/smirs/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557759");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			request.setAttribute("usageArr", usage("smirsap1usage.txt"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("smirscn1")) {
			String api = "https://api.cn1.hana.ondemand.com/monitoring/v1/accounts/fdb4715bd/apps/smirsapp/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("2606981");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			request.setAttribute("usageArr", usage("smirscn1usage.txt"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("acrseu11")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a9cb41d3c/apps/acrscore/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557744");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("acrseu12")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a6ccc8948/apps/acrscore/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557738");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("acrseu13")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a9cb41d3c/apps/acrsmanagedatacore/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557741");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("acrseu14")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a6ccc8948/apps/acrsmanagedatacore/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557735");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("eosmap1")) {
			String api = "https://api.ap1.hana.ondemand.com/monitoring/v1/accounts/ca02ae044/apps/eow/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557765");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("pfsus1")) {
			String api = "https://api.us1.hana.ondemand.com/monitoring/v1/accounts/bfc0f9af3/apps/formsservice/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("4557759");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("pfseu1")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/afe36a32d/apps/formsservice/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability",0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("lmseu11")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a965f6fe8/apps/sflmsext/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("2606978");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("lmseu12")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a965f6fe8/apps/sflmclient/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = availabilityPingdom("2606979");
			request.setAttribute("availability", temp.getString("availabilityRate"));
			request.setAttribute("psl", temp.getJSONArray("psl"));
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("stheu11")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a7d9108fa/apps/cleatranslation/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("stheu12")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a7d9108fa/apps/cdi/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("stheu13")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a7d9108fa/apps/mtservice4sth/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("stheu14")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a7d9108fa/apps/lqe/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("stheu15")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a7d9108fa/apps/conversionservice/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONArray temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else if (req.equalsIgnoreCase("stheu16")) {
			String api = "https://api.hana.ondemand.com/monitoring/v1/accounts/a7d9108fa/apps/sap/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}else if (req.equalsIgnoreCase("sthus11")) {
			String api = "https://api.us1.hana.ondemand.com/monitoring/v1/accounts/bedc362a1/apps/cdi/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}else if (req.equalsIgnoreCase("sthus12")) {
			String api = "https://api.us1.hana.ondemand.com/monitoring/v1/accounts/bedc362a1/apps/sap/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}else if (req.equalsIgnoreCase("sthus21")) {
			String api = "https://api.us2.hana.ondemand.com/monitoring/v1/accounts/deefb0b0b/apps/sap/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}else if (req.equalsIgnoreCase("sthus22")) {
			String api = "https://api.us2.hana.ondemand.com/monitoring/v1/accounts/deefb0b0b/apps/cdi/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}else if (req.equalsIgnoreCase("sthap11")) {
			String api = "https://api.ap1.hana.ondemand.com/monitoring/v1/accounts/c79c67af6/apps/sap/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}else if (req.equalsIgnoreCase("sthap12")) {
			String api = "https://api.ap1.hana.ondemand.com/monitoring/v1/accounts/c79c67af6/apps/cdi/metrics/";
			request.setAttribute("jmxJsonArr", monitoringAPIJson(api));
			JSONObject temp = null;
			request.setAttribute("availability", 0);
			request.setAttribute("psl", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}else if (req.equalsIgnoreCase("dashboard")) {

			try {
				
				JSONArray arr = pingdomDash();
				request.setAttribute("pingdomArr", arr); 
				float kpi=0,rKpi=0,pKpi=0;
				for(int i=0;i<arr.length();i++)
				{
					kpi=kpi+Float.parseFloat(arr.getJSONObject(i).getString("value"));
					rKpi=rKpi+Float.parseFloat(arr.getJSONObject(i).getString("rValue"));
					pKpi=pKpi+Float.parseFloat(arr.getJSONObject(i).getString("pValue"));
				}
				request.setAttribute("kpi", String.format("%.2f", kpi/arr.length()));
				request.setAttribute("rKpi", String.format("%.2f", rKpi/2));
				request.setAttribute("pKpi", String.format("%.2f", pKpi/2));
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
			rd.forward(request, response);
			
		}
		else if(req.equalsIgnoreCase("status"))
		{
			request.setAttribute("pingdomStatusArr",pingdomStatusPage("https://api.pingdom.com/api/2.1/checks?tags=gsall"));
			request.setAttribute("taasPingdomStatusArr",pingdomStatusPage("https://api.pingdom.com/api/2.1/checks?tags=gstaas"));
			request.setAttribute("smirPingdomStatusArr",pingdomStatusPage("https://api.pingdom.com/api/2.1/checks?tags=gssmir"));
			request.setAttribute("nfePingdomStatusArr",pingdomStatusPage("https://api.pingdom.com/api/2.1/checks?tags=gsnfe"));
			request.setAttribute("acrsPingdomStatusArr",pingdomStatusPage("https://api.pingdom.com/api/2.1/checks?tags=gsacrs"));
			request.setAttribute("eosmPingdomStatusArr",pingdomStatusPage("https://api.pingdom.com/api/2.1/checks?tags=gseosm"));
			RequestDispatcher rd = request.getRequestDispatcher("statuspage.jsp");
			rd.forward(request, response);
		}
		else if(req.equalsIgnoreCase("taashome"))
		{
			JSONArray arr = homeDash("taas");
			request.setAttribute("kpiArr", arr);
			request.setAttribute("usageArr", usage("taasinternalusage.txt"));
			RequestDispatcher rd = request.getRequestDispatcher("servicedashboard.jsp");
			rd.forward(request, response);
		}
		else if(req.equalsIgnoreCase("smirhome"))
		{
			JSONArray arr = homeDash("smir");
			request.setAttribute("kpiArr", arr);
			RequestDispatcher rd = request.getRequestDispatcher("servicedashboard.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("error404.html");
			rd.forward(request, response);
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("error404.html");
			rd.forward(request, response);
		}
		
		

	}
	
	
	public static JSONArray homeDash(String app) throws JSONException, IOException
	{
		
		
		JSONArray arr = new JSONArray();
		JSONArray arr1=reliability(app+"reliability.txt");
		JSONArray arr2=performance(app+"performance.txt");
		
		for(int i=0,j=0;i<arr1.length()||j<arr2.length();i++,j++)
		{
			JSONObject obj= new JSONObject();
			obj.put("service", arr1.getJSONObject(i).getString("service").toUpperCase());
			obj.put("account", arr1.getJSONObject(i).getString("account"));
			obj.put("app", arr1.getJSONObject(i).getString("app"));
			obj.put("rhits", arr1.getJSONObject(i).getString("hits"));
			obj.put("rsuccess", arr1.getJSONObject(i).getString("success"));
			obj.put("phits", arr2.getJSONObject(j).getString("hits"));
			obj.put("psuccess", arr2.getJSONObject(j).getString("success"));
			obj.put("rValue", String.format("%.2f", Float.parseFloat(arr1.getJSONObject(i).getString("rValue"))));
			obj.put("pValue", String.format("%.2f", Float.parseFloat(arr2.getJSONObject(j).getString("pValue"))));
			obj.put("url", "https://gsd.cfapps.eu10.hana.ondemand.com/GSDashServlet?req="+arr1.getJSONObject(i).getString("service"));
			arr.put(obj);
		}
		
		
		
		return arr;
		
	}
	
	public static JSONArray pingdomDash() throws JSONException, IOException
	{
		
		
		JSONObject taaseu1Obj=availabilityPingdom("2606958");
		//JSONObject taasus1Obj=availabilityPingdom("2606950");
		JSONObject taasus2Obj=availabilityPingdom("4557834");
		JSONObject smirsap1Obj=availabilityPingdom("4557759");
		//JSONObject smirscn1Obj=availabilityPingdom("2606981");
		JSONObject acrseu11Obj=availabilityPingdom("4557744");
		JSONObject acrseu12Obj=availabilityPingdom("4557738");
		JSONObject eosmap1Obj=availabilityPingdom("4557765");
	
		
		
		float taaseu1=Float.parseFloat(taaseu1Obj.getString("availabilityRate"));
		//float taasus1=Float.parseFloat(taasus1Obj.getString("availabilityRate"));
		float taasus2=Float.parseFloat(taasus2Obj.getString("availabilityRate"));
		float smirsap1=Float.parseFloat(smirsap1Obj.getString("availabilityRate"));
		//float smirscn1=Float.parseFloat(smirscn1Obj.getString("availabilityRate"));
		float acrseu11=Float.parseFloat(acrseu11Obj.getString("availabilityRate"));
		float acrseu12=Float.parseFloat(acrseu12Obj.getString("availabilityRate"));
		float eosmap1=Float.parseFloat(eosmap1Obj.getString("availabilityRate"));

		
		float taas=(taaseu1+taasus2)/2;
		float smirs=smirsap1;
		float acrs=(acrseu11+acrseu12)/2;
		float eosm=eosmap1;
		
		JSONArray arr = new JSONArray();
		JSONArray arr1=reliability("reliability.txt");
		JSONArray arr2=performance("performance.txt");
		
		
		JSONObject obj1= new JSONObject();
		obj1.put("label", "Tax Service");
		obj1.put("value", String.format("%.2f", taas));
		obj1.put("rValue", String.format("%.2f", Float.parseFloat(arr1.getJSONObject(0).getString("rValue"))));
		obj1.put("pValue", String.format("%.2f", Float.parseFloat(arr2.getJSONObject(0).getString("pValue"))));
		obj1.put("url", "https://gsd.cfapps.eu10.hana.ondemand.com/GSDashServlet?req=taashome");
		
		JSONObject obj2= new JSONObject();
		obj2.put("label", "SMIRS");
		obj2.put("value", String.format("%.2f", smirs));
		obj2.put("rValue", String.format("%.2f", Float.parseFloat(arr1.getJSONObject(1).getString("rValue"))));
		obj2.put("pValue", String.format("%.2f", Float.parseFloat(arr2.getJSONObject(1).getString("pValue"))));
		obj2.put("url", "https://gsd.cfapps.eu10.hana.ondemand.com/GSDashServlet?req=smirhome");
		
		JSONObject obj3= new JSONObject();
		obj3.put("label", "ACRS");
		obj3.put("value", String.format("%.2f", acrs));
		obj3.put("rValue", "0");
		obj3.put("pValue", "0");
		obj3.put("url", "https://gsd.cfapps.eu10.hana.ondemand.com/GSDashServlet?req=acrseu11");
		
		JSONObject obj4= new JSONObject();
		obj4.put("label", "Social Media ESS");
		obj4.put("value", String.format("%.2f", eosm));
		obj4.put("rValue", "0");
		obj4.put("pValue", "0");
		obj4.put("url", "https://gsd.cfapps.eu10.hana.ondemand.com/GSDashServlet?req=eosmap1");
		
		JSONObject obj5= new JSONObject();
		obj5.put("label", "SAP Translation Hub");
		obj5.put("value", 99.92);
		obj5.put("rValue", "0");
		obj5.put("pValue", "0");
		obj5.put("url", "https://gsd.cfapps.eu10.hana.ondemand.com/GSDashServlet?req=stheu14");
		

		
		arr.put(obj1);
		arr.put(obj2);
		arr.put(obj3);
		arr.put(obj4);
		arr.put(obj5);
		
		
		return arr;
		
	}
	
	public static ArrayList<JSONObject> monitoringAPIJsonAll(ArrayList<String> apis)
	{
		ArrayList<JSONObject> jmxObj = new ArrayList<>();
		try {
			for(int i=0;i<apis.size();i++)
			{
				JSONObject json = null;
			json = readMonitoringAPI(apis.get(i));
			jmxObj.add(json);
			}
			
		} catch (IOException | JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jmxObj;
	}
	
	public static JSONArray monitoringAPIJson(String api)
	{
		JSONObject json = null;
		JSONArray arr= null;
		try {
			json = readMonitoringAPI(api);
			arr=json.getJSONArray("processes");
			System.out.println(json.getString("application")+":"+json.getString("account")+":"+json.getString("state"));
			
		} catch (IOException | JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
		
	}
	
	public static JSONArray pingdomStatusPage(String api)
	{
		JSONObject json;
		JSONArray arr;
		JSONArray arr1= new JSONArray();
		
		int flag=1;
		
		try {
			json = readPingdomAPI(api);
			arr = json.getJSONArray("checks");
			
			for (int i = 0; i < arr.length(); i++) {
				JSONObject json1=new JSONObject();
				
				String id = arr.getJSONObject(i).getString("id");
				String name = arr.getJSONObject(i).getString("name");
				String hostname = arr.getJSONObject(i).getString("hostname");
				String lastresponsetime = arr.getJSONObject(i).getString("lastresponsetime");
				String status = arr.getJSONObject(i).getString("status");
				
				if(status.equalsIgnoreCase("down"))
				{
					flag=0;
				}
				
				json1.put("id", id);
				json1.put("name", name);
				json1.put("hostname", hostname);
				json1.put("lastresponsetime", lastresponsetime);
				json1.put("status", status);
				arr1.put(json1);

			}
			JSONObject tempJson = new JSONObject();
			tempJson.put("flag", flag);
			arr1.put(tempJson);
			
			
			
		} catch (JSONException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arr1;
	}
	public static JSONObject availabilityPingdom(String checkid)
	{
		JSONObject json;
		JSONObject pingdomAvailability = new JSONObject();
		JSONArray arr;
		JSONArray arr1=new JSONArray();
		float availability=0;
		try {
			json = readPingdomAPI(
					"https://api.pingdom.com/api/2.1/summary.performance/"+checkid+"?from=1514764800&resolution=week&includeuptime=true");
			arr = json.getJSONObject("summary").getJSONArray("weeks");
		
			
			float totalDowntime=0;
			float totalUptime=0;
			for (int i = 0; i < arr.length(); i++) {
				JSONObject json2=new JSONObject();
				
				int avgresponse = Integer.parseInt(arr.getJSONObject(i).getString("avgresponse"));
				int downtime = Integer.parseInt(arr.getJSONObject(i).getString("downtime"));
				int uptime = Integer.parseInt(arr.getJSONObject(i).getString("uptime"));
				
				Date date = new java.util.Date(Long.parseLong(arr.getJSONObject(i).getString("starttime"))*1000L); 
				SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd"); 
				sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT +0")); 
				String starttime = sdf.format(date);
				json2.put("starttime", starttime);
				json2.put("avgresponse", avgresponse);
				try
				{
				float availabilityRate=((float)(uptime)/(uptime+downtime))*100;
				json2.put("availabilityRate",String.format("%.2f", availabilityRate));
				arr1.put(json2);
				totalDowntime=totalDowntime+(downtime/60);
				totalUptime=totalUptime+(uptime/60);
				}
				catch(Exception e)
				{
					continue;
				}

				
			}
			
			availability=((totalUptime-totalDowntime)/totalUptime)*100;
			
			pingdomAvailability.put("availabilityRate", availability);
			pingdomAvailability.put("psl", arr1);
			
			
		} catch (JSONException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pingdomAvailability;
	}
	
	public static JSONObject readPingdomAPI(String apiurl) throws IOException, JSONException {
		String name = "sfhana.dashboard@sap.com";
		String password = "P12Rac24x";

		String authString = name + ":" + password;
		byte[] authEncBytes = Base64.encodeBase64(authString.getBytes());
		String authStringEnc = new String(authEncBytes);

		URL url = new URL(apiurl);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("Authorization", "Basic " + authStringEnc);
		con.setRequestProperty("App-Key", "p9fgzgh49gok8goy2y1l1pjwkt8f994g");
		con.setRequestProperty("Account-Email", "sunil.mampatta@sap.com");
		con.setRequestProperty("Content-length", "0");
		con.setUseCaches(false);
		con.setAllowUserInteraction(false);
		/*
		 * con.setConnectTimeout(timeout); con.setReadTimeout(timeout);
		 */
		con.connect();
		try {
			BufferedReader rd = new BufferedReader(
					new InputStreamReader(con.getInputStream(), Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} finally {

		}
	}
	
	public static JSONObject readMonitoringAPI(String apiurl) throws IOException, JSONException {
		String name = "i330037";
		String password = "mADADIS$%@@15";

		String authString = name + ":" + password;
		byte[] authEncBytes = Base64.encodeBase64(authString.getBytes());
		String authStringEnc = new String(authEncBytes);

		URL url = new URL(apiurl);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("Authorization", "Basic " + authStringEnc);
		con.setRequestProperty("Content-length", "0");
		con.setUseCaches(false);
		con.setAllowUserInteraction(false);
		/*
		 * con.setConnectTimeout(timeout); con.setReadTimeout(timeout);
		 */
		con.connect();
		try {
			BufferedReader rd = new BufferedReader(
					new InputStreamReader(con.getInputStream(), Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			jsonText=jsonText.substring(1, jsonText.length()-1);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} finally {

		}
	}

	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private static JSONArray reliability(String file) throws IOException, JSONException
	{
		String urlString = "https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/"+file;
	    
	    // create the url
	    URL url = new URL(urlString);
	    // open the url stream, wrap it an a few "readers"
	    BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
	    // write the output to stdout
	    String line;
	    
	    JSONArray arr = new JSONArray();
		
	    while ((line = reader.readLine()) != null)
	    {
	      String[] str=line.split(" ");
	      JSONObject obj= new JSONObject();
	      obj.put("service", str[0]);
	      obj.put("account", str[1]);
	      obj.put("app", str[2]);
	      obj.put("hits", str[3]);
	      obj.put("success", str[4]);
	      obj.put("rValue", str[5]);
	      arr.put(obj);
	    }
	    // close our reader
	    reader.close();
	    
	    
		return arr;
	}
	
	private static JSONArray usage(String file) throws IOException, JSONException
	{
		String urlString = "https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/"+file;
	    
	    // create the url
	    URL url = new URL(urlString);
	    // open the url stream, wrap it an a few "readers"
	    BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
	    // write the output to stdout
	    String line;
	    JSONArray arr = new JSONArray();
	    if(file.equalsIgnoreCase("taasinternalusage.txt"))
	    {
	 		
	 	    while ((line = reader.readLine()) != null)
	 	    {
	 	      String[] str=line.split(" ");
	 	      JSONObject obj= new JSONObject();
	 	     obj.put("customer", str[0]);
	 	      obj.put("count", str[1]);
	 	     obj.put("Ok200", str[2]);
	 	      obj.put("Error500", str[3]);
	 	     obj.put("Error400", str[4]);
	 	      arr.put(obj);
	 	    }
	    }
	    else
	    {
	   
		
	    while ((line = reader.readLine()) != null)
	    {
	      String[] str=line.split(" ");
	      JSONObject obj= new JSONObject();
	      obj.put("date", str[0]);
	      obj.put("count", str[1]);
	      arr.put(obj);
	    }
	    }
	    // close our reader
	    reader.close();
	    
	    
		return arr;
	}
	
	
	private static JSONArray performance(String file) throws IOException, JSONException
	{
		String urlString = "https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/"+file;
	    
	    // create the url
	    URL url = new URL(urlString);
	    // open the url stream, wrap it an a few "readers"
	    BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
	    // write the output to stdout
	    String line;
	    
	    JSONArray arr = new JSONArray();
		
	    while ((line = reader.readLine()) != null)
	    {
	      String[] str=line.split(" ");
	      JSONObject obj= new JSONObject();
	      obj.put("service", str[0]);
	      obj.put("account", str[1]);
	      obj.put("app", str[2]);
	      obj.put("hits", str[3]);
	      obj.put("success", str[4]);
	      obj.put("pValue", str[5]);
	      arr.put(obj);
	    }
	    // close our reader
	    reader.close();
	    
	    
		return arr;
	}
	
	

	
}
