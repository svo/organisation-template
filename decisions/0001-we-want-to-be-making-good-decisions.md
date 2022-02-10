# 1. We want to be making good decisions

Date: 2022-01-25

## Status

Proposed

## Context

### Ideal

We have traceability and can share across the organisation the decisions being made on how we leverage people, processes, data and technology to meet our business objectives.

### Reality

We have not got this currently and lack the data to make informed decisions, this is causing entropy and inefficiency in our delivery.

### Consequences

* decisions made without the appropriate input and/or agreement
* recommendations made by inappropriate stakeholders
* decisions made by inappropriate stakeholders
* implementation being performed by inappropriate individual contributors
* decisions made without broad visibility

### Roles

| Role | Owner |
|--|--|
| Recommend | Technology Manager |
| Agree | Delivery Manager, Product Manager, Design Manager |
| Perform | Technology Manager |
| Input | Chief Information Officer, Chief Operating Officer, Chief Product Officer, Chief Creative Officer |
| Decide | Chief Technology Officer |

### Options

#### Option 1: Do Nothing

##### +

* no short-term effort
* no change management required

##### -

* the documented consequences above

#### Option 2: Document in a Wiki

##### +

* ubiquitous mechanisms to create, read, update, delete and search
* built in mechanisms to communicate change

##### -

* vendor lock-in
* general purpose tool i.e. not specifically answering the problem at hand, and missing structure to help solve it

#### Option 3: Use [Architecture Decision Records](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions)

##### +

* specific to problem i.e. tooling and format specific to the problem at hand
* uses agnostic tooling to communicate change i.e. can avoid vendor lock-in
* machine readable allowing for automated summary reporting

##### -

* requires training people on how to use the tooling/format
* need to wire-in mechanisms to provide additional behaviours e.g. communicating change

## Decision

Option 3: Use [Architecture Decision Records](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions)

A systematic and fit-for-purpose approach to guide/record decisions on how we leverage people, processes, data and technology to meet our business objectives. We will use [adr-tools](https://github.com/npryce/adr-tools) to record decisions within this repository.

To help guide the process we will use some additional structure in the 'Context' section of the ADR:

* Problem statement used to describe the problem
* [RAPID Model](https://www.bain.com/insights/rapid-tool-to-clarify-decision-accountability/) role table to clarify who does what in the decision making process
* Options considered during process

The 'Context' section of this ADR acts as a reference.

## Consequences

* additional effort to maintain decision register
* may need to consider forking the [adr-tools](https://github.com/npryce/adr-tools) to add the desired additional structure to the 'Context' section
* central repository of decisions for sharing journey/context

