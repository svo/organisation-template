# Organisation Template

## Environment

### Structure

#### Definitions

| Term | Definition |
|--|--|
| Company | A legal entity that provides products and/or services. |
| Product | An item that a consumer is aware of when interacting with something to perform a task. |
| Location | A geographic location where the company has a person or people acting in a role. |
| Function | A problem domain within the organisation that is sufficiently differentiated to require it's own management. |
| Role | A set of responsibilities that define when the associated person is accountable, responsible, needs to be consulted or informed. <sup>\[1\]</sup> |
| Stream-aligned Team | A group of roles that provide external product experiences on top of internal product ones. <sup>\[2\]</sup> |
| Platform Team | A group of roles that provide internal product to accelerate delivery by stream-aligned team. <sup>\[2\]</sup> |
| Enabling Team | A group of roles that help stream-aligned teams overcome obstacles by providing additional capacity or capability. <sup>\[2\]</sup> |
| Complicated Subsystem Team | A group of roles where the individuals represent a specific niche capability. <sup>\[2\]</sup> |

<sup>\[1\]</sup> we use the [The RACI Model](https://racichart.org/the-raci-model/) to define the way a role participates in the completion of a task.

<sup>\[2\]</sup> we use the nomenclature from [Team Topologies](https://teamtopologies.com/key-concepts) to define team boundaries and interaction modes.

#### Legend

![Legend](environment/legend.png)

#### Function to Location Distribution

![Function to Location Distribution](environment/structure/function-location-distribution.png)

#### Role Distribution

![Role Distribution](environment/structure/role-distribution.png)

## Sensible Defaults

| Term | Definition |
|--|--|
| Default ring | Options that are considered a standard for new and existing projects. An Architectural Decision Record (ADR) is to be published to explain why it is a default. |
| Maintain ring | Options that we need to maintain a proficiency in due to e.g. maintenance requirements for components that are not rewrite appropriate. When there is a new project adjacent to one using it, a maintain option should be considered, and if chosen have a justification published in an Architectural Decision Record (ADR). |
| Trial ring | Options that we want to try and accept the use of on small projects i.e. projects small enough that we would consider rewrite over refactor. An Architectural Decision Record (ADR) is to be published justifying the use of a new option of this type, and completion of any project using it should trigger a retrospective to see if the option moves to another ring. |
| Remove ring | Options that have been used and we are actively working to, or wish to remove. An Architectural Decision Record (ADR) is to be published to explain why it is being removed from our options. |
| Languages quadrant | Programming languages used to implement algorithms in software to solve problems using a computer. |
| Tools quadrant | Software that is used in the development, repair, or enhancement of other software. |
| Platforms quadrant | A set of software and supporting resources that provides the ability to deliver software to a consumer. |
| Frameworks quadrant | A software component that provides a generic and consistent behaviour. This behaviour can be leveraged in the development of new software, and can provide efficiency and remove errors. |
| Patterns quadrant | A generic and reusable approach, that can be used to solve a common problem that can represent in the programming of a new software solution. |
| Practices quadrant | A reusable approach for the programming of software, that has a defined set of benefits and costs. |
| Methodologies quadrant | A set of processes used to describe the parts, phases, inputs, outputs and activities used to deliver software. |
| Ceremonies quadrant | A time when a collection of people gather for a purpose, to achieve a set of outcomes, and make decisions using a structured approach. |

### Engineering

We are using the [ThoughtWorks Radar](https://www.thoughtworks.com/radar/byor) approach for communicating the languages, tools, platforms and frameworks sensible defaults within the organisation.

The content is in the [engineering-radar.csv](engineering-radar.csv) file.

The live version is [here](http://engineering-sensible-defaults.qual.is/).

### Architecture

We are using the [ThoughtWorks Radar](https://www.thoughtworks.com/radar/byor) approach for communicating the patterns, practices, methodologies and ceremonies sensible defaults within the organisation.

The content is in the [architecture-radar.csv](architecture-radar.csv) file.

The live version is [here](http://architecture-sensible-defaults.qual.is/).

## How We Work

We use:

* [The RACI Model](https://racichart.org/the-raci-model/) to define the way a role participates in the completion of a task.
* [RAID Analysis](https://www.techagilist.com/agile/scrum/raid/) to document risks, assumptions, issues and dependencies when planning.
* [RAPID Model](https://www.bain.com/insights/rapid-tool-to-clarify-decision-accountability/) to clarify who does what in the decision making process.
* [Architecture Decision Records](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) to capture the data and rhetoric used to make our decisions.

### Our Risks, Assumptions, Issues and Dependencies

| Description | Type | Criticality |
|--|--|--|
| Decisions made without all the required interactions/information | Risk | High |

#### Proposed Mitigation

| Description | Mitigation |
|--|--|
| We want to be making good decisions | [0001-we-want-to-be-making-good-decisions.md](decisions/0001-we-want-to-be-making-good-decisions.md) |

## Our Team Charter

### Interaction Modes

The more repeated a task, the more we favour X-as-a-service over facilitation, and facilitation over collaboration.

#### Collaboration

Working with another person or team to achieve an outcome.

##### Guidelines

* use calendars
* we don't book on top of existing calendars
* we block out before 10:00 and after 16:00 in our calendars
* we block out from noon to 13:30 in our calendars
* meetings invites have a defined Purpose, set of Outcomes, Decisions to be made, and a Structure (PODS)

##### Managing Outliers

###### No Suitable Meeting Time

* create a channel with the mandatory participants in your messaging platform and organise a suitable time asynchronously

###### When Urgency Dictates Haste

* create a channel with the mandatory participants in your messaging platform
* determine Purpose, set of Outcomes, Decisions to be made, and a Structure (PODS) for any meeting required
* organise a suitable time for any meeting required, ensuring that the urgency is catered for

###### Receive Unexpected Calendar Conflict

* decline invite with message "I have another commitment scheduled for this time and will not be able to attend. Many apologies."

#### Facilitation

Providing another person or team assistance to achieve an outcome.

##### Guidelines

* anyone in the team can facilitate providing the assistance
* any supporting material is discoverable and has a degree of self-serve
* teams have a dedicated channel in your messaging platform for assistance requests

##### Managing Outliers

Escalate to collaboration.

#### X-as-a-Service

Providing an automated capability to another person or team to achieve an outcome.

##### Guidelines

* services provide any API assistance using an API interfacing approach that is consistent across the organisation
* services provide any User Interface assistance using a consistent design language
* services are discoverable in a consistent way across teams and have self-serve documentation

##### Managing Outliers

Escalate to facilitation.

## Our Technology Entropy Management

### Use Sensible Defaults

Capture sensible defaults for technology (languages, frameworks, tools and platforms) and architecture (patterns, practices, methodologies and ceremonies). These help guide teams to acceptable decisions on code, quality, software delivery approaches and architectural management, while still maintaining a degree of autonomy.

### Use Automation

Automate what we can to minimise bottlenecks in software development, delivery and project on-boarding. Examples of automation we expect from our teams are: tests, developer experiences, convention tests, infrastructure and continuous delivery.

### Use Machine Readable Specifications

Use standardised machine readable and structured specifications to document. As an example, we expect our teams to use: Architectural Decision Records (ADR), PlantUML and the Descriptor Format for Catalogue Entities used in Spotify Backstage for system cataloguing.

### Use Standard Processes

Use standard processes for documenting aspects of the software delivery process. As an example we expect our teams to use: RAID Analysis to document risks, assumptions, issues and dependencies; the RAPID Model to clarify who does what in the decision making process; and the RACI Model to define the way roles participate in the completion of a task.

### Use Contracts For Team Inputs And Outputs

Use consistent metrics as a contract for all our teams to report on e.g. software delivery performance using the DORA metrics. The metrics we use and the way we report on them can be aggregated so we can automate reporting at more coarse grained granularities.

### Measure How We Are Doing

Measure what we care about so we can favour data over rhetoric when making decisions and discussing our progress. Examples we expect our teams to use are the DORA metrics, Real User Monitoring (RUM) for e.g. performance, and analytics measures such as Daily Active Users (DAU).

## Our Software Development and Delivery Management

### Give Autonomy Over Giving The Approach

Teams develop and deliver using a combination of approaches they identify as suitable given the Problems, Opportunities, Objectives and Constraints of the team. The approach is to “trust, but verify”, through tracking whether the team is an Elite, High, Medium or Low performer based on the DORA Metrics: Lead Time to Changes (LTTC), Deployment Frequency (DF), Mean Time To Recovery (MTTR) and Change Failure Rate (CFR).

### Give Objectives To Achieve Over Solutions To Be Implemented

Teams are provided objectives representing problems to be solved for our customers or the business. The team is tasked with:

* documenting Architectural Decision Records with initiative options to achieve the objective
* proposing key results they have identified as achievable

### Use Automation over Manual Activity

Teams are to avoid manual activities and ruthlessly automate. Determining whether a team has an appropriate amount of automation is achieved via chaos engineering in their product infrastructure, and monitoring DORA Metrics to measure the team and on-boarding performance: Lead Time to Changes (LTTC), Deployment Frequency (DF), Mean Time To Recovery (MTTR) and Change Failure Rate (CFR).

### Use Consistent Reporting Formats over Inconsistent Ones

Teams are to report on e.g. Objectives and Key Result progress using a format that is consistent between them. This provides the leadership team with a ubiquitous language and reduces cognitive load.

## Our Technical Debt Management

### Deliberate

Maintain a register of decisions that deliberately incur debt. This is a table that has columns for: ‘Date’, ‘Repay By Date’, ‘Description’, ‘Justification’, ‘Estimated Effort’ and ‘Link to Related Architectural Decision Record’.

### Bit Rot

Development teams are required to create Architectural Decision Records (ADR) to avoid their products devolving into unnecessary complexity and/or suffering design drift. A team makes a recommendation, adjacent product teams and technology leaders need to agree, the team will perform any updates to their projects and/or processes, input will be sought from the technology function in the business, and the decision on the approaches to be utilised will be made by the team Technology Manager.

### Outdated Design

Quarterly ceremony to identify decisions or system characteristics that are no longer desirable/fit-for-purpose - "Our Technical Debt - Outdated Design Review".

## Our Cost Management

### Cost Of Goods Sold (COGS)

* Infrastructure costs
* Third-party platform costs for internal and external products
* Third-party library costs for components embedded in internal and external products
* Front office costs for sales, account management and customer support people, products and platforms
* Back office costs for analysis, technical, and administrative support people, products and platforms
* Product development and delivery people, products and  platforms

### Profitability

* We use Average Revenue Per User (ARPU) to measure our commercial health on a monthly cadence:
  * `Total Revenue / Number of Users`
* We use Customer Lifetime Value (LTV) to measure our per customer profitability:
  * `ARPU x Average Months User is Active – COGS`
* We use a standard account method to measure our overall profitability:
  * `Revenue – COGS – Expenses`

## Our Incident Management

* We use a “You build it, you run it” approach for our products
* We use operational support rosters within our product teams to determine the team members responsible when an incident occurs

The table below defines who is responsible, accountable, needs to be consulted or informed in our Incident Management and Operational Support process.

| Role  | Responsible?  | Accountable?  | Consulted?  | Informed?  |
|---|---|---|---|---|
| Chief Information Officer |   |   |   | `Y` |
| Delivery Manager <sup>\[1\]</sup> |   | `Y`  |   |   |
| Chief Product Officer |   |   |   | `Y` |
| Product Manager <sup>\[1\]</sup> |   |   | `Y` |   |
| Chief Technology Officer |   |   |   | `Y` |
| Technology Manager <sup>\[1\]</sup> |   |   | `Y` |   |
| Chief Creative Officer |   |   |   | `Y` |
| Design Manager <sup>\[1\]</sup> |   |   | `Y` |   |
| Stream-aligned Team <sup>\[2\]</sup> | `Y` |   |   |   |
| Platform Team <sup>\[2\]</sup> | `Y` |   |   |   |
| Enabling Team <sup>\[2\]</sup> | `Y` |   |   |   |
| Complicated Subsystem Team <sup>\[2\]</sup> | `Y` |   |   |   |

<sup>\[1\]</sup> managers involved in incident determined by products affected.

<sup>\[2\]</sup> teams involved in incident determined by accountable role and system catalogue consultation.

## Links

* [Architecture Decision Register](decisions)
