<%= _('About') %>
===============
<hr>

<h4> <%= _('What is the DMPTool?') %></h4>

<%= _("The DMPTool is a free, open-source, online application that helps researchers create data management plans. These plans, or DMPs, are now required by many funding agencies as part of the grant proposal submission process. The DMPTool provides a click-through wizard for creating a DMP that complies with funder requirements. It also has direct links to funder websites, help text for answering questions, and resources for best practices surrounding data management.") %>

<br>

<h4> <%= _('DMPTool Background') %></h4>
         
<%= raw _("The original DMPTool was a grassroots effort, beginning in 2011 with eight institutions partnering to provide in-kind contributions of personnel and development. The effort was in direct response to demands from funding agencies, such as the National Science Foundation and the National Institutes of Health, that researchers plan for managing their research data. By joining forces the contributing institutions were able to consolidate expertise and reduce costs in addressing data management needs. Representatives from these institutions participate on the <a href=\"https://github.com/CDLUC3/dmptool/wiki/DMPTool-Steering-Committee\" target=\"_blank\">DMPTool Steering Committee</a> that maintains monthly calls.") %>

<%= raw _("The original contributing institutions were: <a href=\"https://www.cdlib.org/services/uc3/\" target=\"_blank\">University of California Curation Center (UC3)</a> at the <a href=\"https://www.cdlib.org/\" target=\"_blank\">California Digital Library</a>, <a href=\"https://www.dataone.org/\" target=\"_blank\">DataONE</a>, <a href=\"https://www.dcc.ac.uk/\" target=\"_blank\">Digital Curation Centre (DCC-UK)</a>, <a href=\"https://www.si.edu/\" target=\"_blank\">Smithsonian Institution</a>, <a href=\"https://www.library.ucla.edu/\" target=\"_blank\">University of California, Los Angeles Library</a>, <a href=\"https://libraries.ucsd.edu/\" target=\"_blank\">University of California, San Diego Libraries</a>, <a href=\"https://www.library.illinois.edu/\" target=\"_blank\">University of Illinois, Urbana-Champaign Library</a>, and <a href=\"https://www.library.virginia.edu/\" target=\"_blank\">University of Virginia Library</a>. Given the success of the first version of the DMPTool, the founding partners obtained funding from the <a href=\"https://sloan.org/\" target=\"_blank\">Alfred P. Sloan Foundation</a> to create a second version of the tool, released in 2014.") %>

<%= _("More recently the proliferation of open data policies across the globe has led to an explosion of interest in the DMPTool and the UK-based version, DMPonline. In 2016 UC3 and DCC decided to formalize our partnership to codevelop and maintain a single open-source platform. The new platform—DMPRoadmap—is separate from the services each of our organizations runs on top of it. By providing a core infrastructure for DMPs we can extend our reach and move best practices forward, allowing us to participate in a truly global open science ecosystem.") %>

<%= raw _("Future enhancements will focus on making DMPs machine actionable so please continue sharing your use cases. We invite you to peruse the DMPRoadmap GitHub wiki to learn how to %{get_involved_link} in the project.") % { get_involved_link: link_to( "get involved", "https://github.com/DMPRoadmap/roadmap/wiki/get-involved", target: '_blank', id: "get_involved") } %>

<br>

<h4> <%= _('How to Participate in the DMPTool') %></h4>

<%= raw _("<p>DMPTool participants are institutions, profit and nonprofit organizations, individuals, or other groups that leverage the DMPTool as an effective and efficient way to create data management plans. Our community of participating organizations helps to sustain and support the DMPTool in the following ways:</p><ul><li>Establish institutional authentication with the DMPTool (Shibboleth)</li><li>Customize the tool with resources, help text, suggested answers, or other information</li><li>Contribute to the maintenance and enhancement of the DMPTool codebase</li><li>Help ensure that the DMPTool maintains its relevance and utility by notifying the DMPTool Helpdesk if:<ul><li>Funders release new requirements that are not reflected in the tool</li><li>Errors, mistakes, or misinformation are discovered in the tool</li><li>The tool's functionality is compromised (i.e., slow response times, poor performance, or software bugs)</li></ul></li></ul>") %>

<%= raw _("See a current list of <a href=\"https://dmptool-stg.cdlib.org/public_orgs\" target=\"_blank\">DMPTool participants</a>.") %>
<%= raw _("Use the contact form below if you are interested in adding your organization.") %>

<br>

<h4> <%= _('DMPTool Principles') %></h4>
<%= raw _("Our work on the DMPTool is guided by the following principles. Organizations that participate in the DMPTool community are expected to understand and abide by these principles.<ul><li>Continuous improvement of the DMPTool's utility and features</li><li>User-driven requirements and priorities for development</li><li>Enthusiasm for the DMPTool</li><li>Commitment to an open process for development, enhancement, and improvement (see <a href=\"https://pantonprinciples.org/\" target=\"_blank\">Panton Principles</a>)</li><li>Quality of code and materials created <a href=\"https://github.com/DMPRoadmap/roadmap/blob/development/CONTRIBUTING.md\" target=\"_blank\">(Contributor guidelines)</a></li></ul>") %>
