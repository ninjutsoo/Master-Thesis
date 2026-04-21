# Reviewer-Grade Literature Scan: LLM/Agent-Based Healthcare AI Beyond Classification

Date of search: 2026-04-20  
Scope: LLM-based, agentic, tool-using, workflow-oriented, or benchmark/environment papers for realistic clinical tasks. ICU, longitudinal, MIMIC-only, and event-triggered constraints were treated as bonuses, not requirements.

## Search And Filtering Notes

The search used parallel venue-first, EHR/notes, tool-use/protocol, benchmark/environment, and broad recent scouting passes, followed by an adversarial filter. I kept papers only when there was evidence from a paper page, proceedings page, journal page, arXiv page, project page, GitHub, PhysioNet, or dataset page. I down-ranked static medical QA, one-shot prompting, pure prediction, mortality/readmission-only, and generic "agent" branding unless there was meaningful workflow, tool use, planning, environment interaction, or realistic clinical data interaction.

Score interpretation used internally:

- Agentic depth: 0 = not agentic, 5 = strong environment/tool/planner workflow.
- Beyond-classification: 0 = pure prediction/classification, 5 = deep workflow/environment/decision process.
- Data accessibility: 0 = proprietary-only, 5 = public/reproducible benchmark or public dataset.
- Clinical realism: 0 = toy, 5 = highly realistic clinical workflow/data/decision process.
- Topical closeness: 0 = weak, 5 = extremely close.

## Output 1: Master Ranked Table

| Rank | Title | Year | Venue | URL | Verified? | Public data or accessible benchmark? | LLM-based? | Agentic? | Beyond classification? | Tool use / planning / iterative reasoning | Clinical task | Dataset / benchmark | Relevance summary | Novelty threat | Final label |
|---:|---|---:|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | MedAgentBench: A Realistic Virtual EHR Environment to Benchmark Medical LLM Agents | 2025 | NEJM AI / arXiv | [arXiv](https://arxiv.org/abs/2501.14654), [project](https://stanfordmlgroup.github.io/projects/medagentbench/) | yes | partial/yes: public framework; patient profiles are deidentified realistic data | yes | yes | yes | FHIR actions, retrieval, orders, medications, multi-step task execution | EHR workflow tasks | MedAgentBench, FHIR virtual EHR | Closest established benchmark for medical LLM agents operating inside an EHR-like environment. | high | must_cite |
| 2 | AgentEHR: Advancing Autonomous Clinical Decision-Making via Retrospective Summarization | 2026 | arXiv | [arXiv](https://arxiv.org/abs/2601.13918), [HF dataset](https://huggingface.co/datasets/BlueZeros/AgentEHR-Bench) | yes | yes/credentialed: MIMIC-IV and MIMIC-III derived | yes | yes | yes | MCP-style toolbox, SQL, temporal filters, semantic search, memory, retrospective summarization | diagnosis and treatment planning over raw EHR | AgentEHR-Bench, MIMIC-IV/Common/Rare, MIMIC-III OOD | Extremely close if the target involves autonomous EHR navigation over public hospital data. | high | must_cite |
| 3 | From Conversation to Query Execution: Benchmarking User and Tool Interactions for EHR Database Agents / EHR-ChatQA | 2026 | ICLR 2026 | [arXiv](https://arxiv.org/abs/2509.23415), [OpenReview PDF](https://openreview.net/pdf/afec103d9f085ec1dd35ee4a1442f9c2bf4d5970.pdf) | yes | yes: code/data reported public | yes | yes | yes | clarification dialogue, tool use for value mismatch, SQL execution | conversational EHR database QA | EHR-ChatQA | Very close for interactive EHR agents that must clarify, retrieve, and execute queries. | high | must_cite |
| 4 | FHIR-AgentBench: Benchmarking LLM Agents for Realistic Interoperable EHR Question Answering | 2025 | arXiv / ML4H 2025 | [arXiv](https://arxiv.org/abs/2509.19319), [GitHub](https://github.com/glee4810/FHIR-AgentBench) | yes | yes | yes | yes | yes | FHIR API calls, specialized tools, multi-turn vs single-turn, code vs natural language reasoning | patient-level clinical QA over FHIR | FHIR-AgentBench | Strong companion to MedAgentBench, focused on interoperable FHIR QA and retrieval. | high | must_cite |
| 5 | MedAgentBench v2: Improving Medical LLM Agent Design | 2026 | Pacific Symposium on Biocomputing | [PSB PDF](https://psb.stanford.edu/psb-online/proceedings/psb26/chen_eric.pdf) | yes | partial | yes | yes | yes | better prompts, safer tools, memory, expanded task design | EHR agent task execution | MedAgentBench v2 | Important follow-up on failure modes and agent design for virtual EHR tasks. | high | must_cite |
| 6 | EHRAgent: Code Empowers Large Language Models for Few-shot Complex Tabular Reasoning on Electronic Health Records | 2024 | EMNLP | [ACL](https://aclanthology.org/2024.emnlp-main.1245/), [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC11867733/) | yes | yes: EHRSQL/TREQS from MIMIC-III/eICU | yes | yes | yes | autonomous code generation/execution, iterative refinement, long-term memory | tabular EHR reasoning | EHRSQL, TREQS, MIMIC-III, eICU | Closest published EHR tool/code-execution agent before the 2025-2026 benchmark wave. | high | must_cite |
| 7 | AgentMD: Empowering Language Agents for Risk Prediction with Large-Scale Clinical Tool Learning | 2025 | Nature Communications | [Nature](https://www.nature.com/articles/s41467-025-64430-x) | yes | partial/yes: RiskQA, RiskCalcs, MIMIC-III notes | yes | yes | yes | clinical calculator/tool selection, execution, summarization | risk calculator use over notes | RiskQA, 2,164 RiskCalcs, MIMIC-III | Strongest public-facing medical calculator/tool-learning agent paper. | high | must_cite |
| 8 | MeNTi: Bridging Medical Calculator and LLM Agent with Nested Tool Calling | 2025 | NAACL | [ACL](https://aclanthology.org/2025.naacl-long.263/) | yes | partial/yes: CalcQA and toolkit reported | yes | yes | yes | meta-tool selection, nested tool calling, slot filling, unit conversion | medical calculator workflows | CalcQA, 281 medical tools | Very close for protocol/calculator/tool-use methodology. | high | must_cite |
| 9 | CDR-Agent: Intelligent Selection and Execution of Clinical Decision Rules Using LLM Agents | 2025 | arXiv | [arXiv](https://arxiv.org/abs/2505.23055), [GitHub](https://github.com/zhenxianglance/medagent-cdr-agent) | yes | partial/yes: synthetic and CDR-Bench | yes | yes | yes | selects and executes clinical decision rules from unstructured notes | ED clinical decision rules and imaging decisions | CDR-Bench | Very close to protocol-grounded decision support beyond classification. | high | must_cite |
| 10 | MedMCP-Calc: Benchmarking LLMs for Realistic Medical Calculator Scenarios via MCP Integration | 2026 | arXiv | [arXiv](https://arxiv.org/abs/2601.23049), [GitHub](https://github.com/SPIRAL-MED/MedMCP-Calc) | yes | yes/partial | yes | yes | yes | MCP integration, EHR database access, retrieval, process-level evaluation | realistic calculator scenarios | MedMCP-Calc | Newest strong calculator-agent benchmark; preprint status lowers venue strength. | medium-high | strong_related |
| 11 | AgentClinic: A Multimodal Agent Benchmark to Evaluate AI in Simulated Clinical Environments | 2024 | arXiv | [arXiv](https://arxiv.org/abs/2405.07960), [GitHub](https://github.com/SamuelSchmidgall/AgentClinic) | yes | yes/partial: open benchmark, MIMIC-IV extension reported | yes | yes | yes | simulated patient interaction, tool use, multimodal data collection under incomplete information | diagnosis through interaction | AgentClinic-MedQA, NEJM, MIMIC-IV extension | Canonical simulated clinical environment; less EHR-native than MedAgentBench. | medium-high | must_cite |
| 12 | MedChain: Bridging the Gap Between LLM Agents and Clinical Practice with Interactive Sequence | 2025 | NeurIPS | [NeurIPS](https://neurips.cc/virtual/2025/poster/121580), [arXiv](https://arxiv.org/abs/2412.01605) | yes | partial | yes | yes | yes | sequential workflow, feedback, retrieval over cases | clinical workflow reasoning across stages | MedChain cases, MCase-RAG | Strong venue and workflow orientation; dataset access less central than method/benchmark framing. | medium-high | must_cite |
| 13 | ClinicalLab: Aligning Agents for Multi-Departmental Clinical Diagnostics in the Real World | 2025 | NeurIPS | [NeurIPS](https://neurips.cc/virtual/2025/poster/121407), [arXiv](https://arxiv.org/abs/2406.13890) | yes | partial | yes | yes | yes | ClinicalAgent, diagnostic practice alignment, multi-department workflow | multi-department diagnosis | ClinicalBench | Strong diagnostic-agent benchmark, but less public-EHR grounded than AgentEHR/EHRAgent. | medium-high | must_cite |
| 14 | ReflecTool: Towards Reflection-Aware Tool-Augmented Clinical Agents | 2025 | ACL | [ACL](https://aclanthology.org/2025.acl-long.663/) | yes | yes/partial: code/datasets reported | yes | yes | yes | long-term memory, tool-wise experience, verifier, iterative refinement | broad clinical agent tasks | ClinicalAgent Bench | Broad tool-augmented clinical agent benchmark; useful methodology citation. | medium | must_cite |
| 15 | AI Hospital: Benchmarking LLMs in a Multi-agent Medical Interaction Simulator | 2025 | COLING | [ACL](https://aclanthology.org/2025.coling-main.680/), [arXiv](https://arxiv.org/abs/2402.09742) | yes | yes: code/data/results reported | yes | yes | yes | doctor/patient/examiner NPCs, multi-agent simulation | symptom collection, exam recommendations, diagnosis | MVME, Chinese medical records | Strong simulated interaction benchmark; language/data setting differs. | medium | strong_related |
| 16 | ART: Action-based Reasoning Task Benchmarking for Medical AI Agents | 2026 | arXiv | [arXiv](https://arxiv.org/abs/2601.08988) | yes | partial | yes | partial/yes | yes | action-oriented threshold, temporal, and conditional EHR tasks | structured EHR reasoning | ART, 600 tasks | Useful benchmark for structured action reasoning, but less of a full agent environment. | medium | strong_related |
| 17 | EHRNavigator: Multi-Agent Patient-Level Clinical QA over Heterogeneous EHR | 2026 | arXiv | [arXiv](https://arxiv.org/abs/2601.10020) | yes | partial/yes: public benchmarks plus institutional data | yes | yes | yes | multi-agent routing over notes and structured tables | patient-level EHR QA | EHRSQL, EHRNoteQA, DrugEHRQA, OMOP-style hospital QA | Strong multi-agent EHR QA architecture; preprint and institutional component. | medium | strong_related |
| 18 | DynamiCare: Dynamic Multi-Agent Framework for Interactive and Open-Ended Medical Decision-Making | 2025 | arXiv | [arXiv](https://arxiv.org/abs/2507.02616) | yes | partial: MIMIC-III derived, release unclear | yes | yes | yes | multi-round specialists query a patient system and adapt strategy | open-ended diagnosis | MIMIC-Patient | Very relevant dynamic diagnosis setup; access status and venue are weaker. | medium | strong_related |
| 19 | MedAgentBoard: Benchmarking Multi-Agent Collaboration with Conventional Methods for Diverse Medical Tasks | 2025 | NeurIPS Datasets & Benchmarks | [GitHub/project](https://github.com/yhzhu99/medagentboard), [arXiv](https://arxiv.org/abs/2505.12371) | yes | yes | yes | yes | partial/yes | multi-agent vs single LLM vs conventional models | QA, VQA, summaries, EHR prediction, workflow automation | MedAgentBoard | Good sanity-check paper showing where multi-agent collaboration does and does not help. | medium | strong_related |
| 20 | MDAgents: An Adaptive Collaboration of LLMs for Medical Decision-Making | 2024 | NeurIPS | [NeurIPS PDF](https://proceedings.neurips.cc/paper_files/paper/2024/file/90d1fc07f46e31387978b88e7e057a31-Paper-Conference.pdf), [project](https://mdagents2024.github.io/) | yes | yes: mostly public QA/VQA benchmarks | yes | yes | partial | adaptive solo/group LLM collaboration by task complexity | medical decision questions | 10 medical benchmarks | Foundational multi-agent medical reasoning baseline, but less realistic workflow/EHR. | medium | strong_related |
| 21 | MedAgents: LLMs as Collaborators for Zero-shot Medical Reasoning | 2024 | ACL Findings | [ACL](https://aclanthology.org/2024.findings-acl.33/) | yes | yes: public medical QA benchmarks | yes | yes | partial | multi-disciplinary debate/report/consultation | medical reasoning QA | MedQA-style public benchmarks | Important early baseline, but mostly static QA. | low-medium | background_only |
| 22 | HealthAdminBench: Evaluating Computer-Use Agents on Healthcare Administration Tasks | 2026 | arXiv/OpenReview | [arXiv](https://arxiv.org/abs/2604.09937), [project](https://som-shahlab.github.io/health-admin-bench-website/) | yes | yes: hosted/self-hostable environments reported | yes | yes | yes | GUI computer-use agents over EHR, payer portals, fax | prior auth, denials, DME order processing | HealthAdminBench | Workflow-relevant and highly realistic, but administrative rather than clinical reasoning. | medium | strong_related |
| 23 | CarePilot / CareFlow: Long-Horizon Computer Task Automation in Healthcare | 2026 | arXiv / CVPR Findings claim | [arXiv](https://arxiv.org/abs/2603.24157) | yes | partial: public release unclear | yes | yes | yes | actor-critic multi-agent GUI automation, memory | DICOM/EHR/lab software workflows | CareFlow | Strong healthcare GUI-agent direction; clinical reasoning overlap is indirect. | medium | strong_related |
| 24 | ER-REASON: Benchmark Dataset for LLM-Based Clinical Reasoning in the ER | 2025 | arXiv / PhysioNet | [arXiv](https://arxiv.org/abs/2505.22919), [PhysioNet](https://physionet.org/content/er-reason/) | yes | yes/credentialed: PhysioNet restricted access | yes | no/partial | yes | workflow-stage evaluation, physician rationales | triage, assessment, treatment, disposition, final diagnosis | ER-REASON | Not agentic itself, but one of the best public-ish workflow reasoning datasets. | medium | strong_related |
| 25 | DiReCT: Diagnostic Reasoning for Clinical Notes / MIMIC-IV-Ext-DiReCT | 2024 | NeurIPS Datasets & Benchmarks / PhysioNet | [NeurIPS PDF](https://proceedings.nips.cc/paper_files/paper/2024/file/892850bf793e03b5c410dfd9425b94c8-Paper-Datasets_and_Benchmarks_Track.pdf), [PhysioNet](https://physionet.org/content/mimic-iv-ext-direct/) | yes | yes/credentialed | yes | no | yes | diagnostic reasoning annotations | diagnosis from clinical notes | MIMIC-IV-Ext-DiReCT | Not an agent paper; highly useful for public-data reasoning/evaluation. | low-medium | strong_related |
| 26 | EHRNoteQA: LLM Benchmark for Real-World Clinical Practice Using Discharge Summaries | 2024 | NeurIPS Datasets & Benchmarks / PhysioNet | [PhysioNet](https://physionet.org/content/ehr-notes-qa-llms/), [NeurIPS PDF](https://papers.nips.cc/paper_files/paper/2024/file/e15c4afff22f12c4986c1fcb4e941e03-Paper-Datasets_and_Benchmarks_Track.pdf) | yes | yes/credentialed | yes | no | yes | evidence-grounded patient QA over notes | discharge-summary QA | EHRNoteQA, MIMIC-IV | Strong public-data benchmark; not agentic but supports EHR reasoning evaluation. | low-medium | strong_related |
| 27 | EHRSQL: A Practical Text-to-SQL Benchmark for EHRs | 2022/2023 | NeurIPS Datasets & Benchmarks / arXiv | [arXiv](https://arxiv.org/abs/2301.07695), [GitHub](https://github.com/glee4810/EHRSQL) | yes | yes/credentialed | partial | no | yes | SQL generation with time expressions/unanswerable questions | EHR database QA | MIMIC-III, eICU | Foundational structured EHR QA resource used by later agents. | low | background_only |
| 28 | MedJourney: Benchmark and Evaluation of LLMs over Patient Clinical Journey | 2024 | NeurIPS Datasets & Benchmarks | [NeurIPS PDF](https://proceedings.nips.cc/paper_files/paper/2024/file/9f80af32390984cb709cdeb014d0df41-Paper-Datasets_and_Benchmarks_Track.pdf) | yes | partial | yes | no/partial | yes | journey-stage evaluation | planning, access, delivery, ongoing care | MedJourney | Good workflow benchmark context, less agentic and less EHR-native. | low | background_only |
| 29 | AIPatient: Simulating Patients with EHRs and LLM Powered Agentic Workflow | 2024 | arXiv | [arXiv](https://arxiv.org/abs/2409.18924) | yes | partial: MIMIC-III credentialed; release unclear | yes | yes | yes | six-agent reasoning RAG, KG query, checking, rewriting | simulated EHR patient QA | MIMIC-III-derived AIPatient KG | Useful virtual patient environment, but less benchmark-standardized. | medium | strong_related |
| 30 | Med.ai ASK: An Agentic System for Biomedical Question Answering | 2026 | JAMIA | [JAMIA](https://academic.oup.com/jamia/advance-article/doi/10.1093/jamia/ocag038/8559661) | yes | partial: public QA benchmarks plus in-house | yes | yes | yes | ReAct-inspired orchestration over biomedical sources | biomedical QA | BioASQ-12B and others | Strong informatics venue, but biomedical QA rather than EHR workflow. | low-medium | background_only |
| 31 | Tool-wielding Language Model-based Agent for Conversational Exploration of Clinical Tabular Data | 2026 | npj Artificial Intelligence | [Nature](https://www.nature.com/articles/s44387-025-00070-2) | yes | partial: benchmark curated, access unclear | yes | yes | yes | Python/table tools for data analysis | clinical tabular data analysis | ChatDA benchmark | Relevant to clinical data-analysis agents, not direct decision support. | low-medium | background_only |
| 32 | Benchmarking LLM-based Agent Systems for Clinical Decision Tasks | 2026 | npj Digital Medicine | [Nature](https://www.nature.com/articles/s41746-026-02443-6) | yes | yes: uses AgentClinic, MedAgentsBench, HLE | yes | yes | yes | evaluates external agent systems with tool access | clinical decision benchmark evaluation | AgentClinic, MedAgentsBench, HLE | Important adversarial/reality-check citation about limited gains and high token cost. | medium | must_cite |
| 33 | Healthcare Agent: Eliciting the Power of LLMs for Medical Consultation | 2025 | npj Artificial Intelligence | [Nature](https://www.nature.com/articles/s44387-025-00021-x) | yes | partial | yes | yes | yes | dialogue planning, memory, report generation | medical consultation | virtual patients/doctor evaluation | Good consultation workflow paper; less public-data/EHR grounded. | low-medium | strong_related |
| 34 | MALADE: Orchestration of LLM-powered Agents with RAG for Pharmacovigilance | 2024 | MLHC | [PMLR](https://proceedings.mlr.press/v252/choi24a.html) | yes | partial | yes | yes | yes | multi-agent orchestration and RAG | pharmacovigilance synthesis/extraction | pharmacovigilance sources | Strong MLHC agentic workflow outside direct EHR decision support. | low-medium | strong_related |
| 35 | Autonomous agentic workflow for clinical detection of cognitive concerns using LLMs | 2025 | npj Digital Medicine | [Nature](https://www.nature.com/articles/s41746-025-02324-4) | yes | no/partial | yes | yes | partial | five-agent workflow over clinical notes | cognitive concern detection | clinical notes | Agentic workflow but mostly detection/screening; down-ranked for classification-like endpoint. | low | background_only |

## Output 2: Top 15 Closest Papers

1. **MedAgentBench**  
   Summary: Virtual FHIR EHR benchmark with physician-written tasks and realistic patient profiles.  
   Why close: Directly evaluates LLM agents performing EHR actions rather than answering static questions.  
   Not identical: Uses a simulated/deidentified FHIR environment rather than public MIMIC-style raw hospital tables.  
   Overlap: LLM agents, EHR interaction, tool/API use, workflow evaluation, realistic clinical tasks.  
   Threat: high. Must cite: yes.

2. **AgentEHR**  
   Summary: Autonomous EHR-navigation benchmark over MIMIC-IV/MIMIC-III-derived raw/noisy databases with RetroSum memory/summarization.  
   Why close: Closest public-data-style work for agentic diagnosis/treatment planning over EHR data.  
   Not identical: 2026 preprint; exact task formulation may differ if your work is protocol/event-triggered or prospective.  
   Overlap: EHR interaction, tool use, temporal retrieval, public/credentialed data, decision workflow.  
   Threat: high. Must cite: yes.

3. **EHR-ChatQA**  
   Summary: Interactive EHR database benchmark where agents clarify user intent, resolve value mismatches, and generate SQL.  
   Why close: Captures realistic ambiguity and tool-user interaction missing from static text-to-SQL.  
   Not identical: QA/query execution rather than diagnosis/treatment recommendation.  
   Overlap: interactive EHR agent, tools, SQL execution, workflow-level evaluation.  
   Threat: high. Must cite: yes.

4. **FHIR-AgentBench**  
   Summary: FHIR-grounded benchmark with 2,931 clinical questions and comparisons of API/tool/reasoning strategies.  
   Why close: Strong interoperable EHR-agent framing with public evaluation suite.  
   Not identical: QA-centered rather than full clinical protocol execution.  
   Overlap: FHIR API use, agent retrieval, EHR QA, public benchmark.  
   Threat: high. Must cite: yes.

5. **MedAgentBench v2**  
   Summary: Follow-up that expands MedAgentBench and studies better prompts, tools, memory, and failure modes.  
   Why close: Directly informs how to design and evaluate medical EHR agents.  
   Not identical: Mostly extends one benchmark family.  
   Overlap: EHR tool agents, memory, workflow reliability.  
   Threat: high. Must cite: yes.

6. **EHRAgent**  
   Summary: EMNLP paper where an LLM agent generates and executes code for complex tabular EHR reasoning on MIMIC/eICU benchmarks.  
   Why close: Strong public EHR data and real tool execution.  
   Not identical: Focuses on tabular QA rather than broader clinical workflow/protocols.  
   Overlap: code tools, EHRSQL/TREQS, iterative reasoning, public datasets.  
   Threat: high. Must cite: yes.

7. **AgentMD**  
   Summary: Nature Communications paper on LLM agents learning/selecting/executing large-scale clinical risk calculators.  
   Why close: Strongest clinical tool-use paper with public-style calculator corpus and MIMIC-III note application.  
   Not identical: Risk-calculator axis, not full EHR workflow.  
   Overlap: LLM agent, tool selection/execution, MIMIC notes, realistic clinical calculations.  
   Threat: high. Must cite: yes.

8. **MeNTi**  
   Summary: NAACL nested tool-calling agent for medical calculator selection, slot filling, and unit conversion.  
   Why close: Cleanly addresses calculator/protocol tool-use failure modes.  
   Not identical: Narrow calculator benchmark, small CalcQA case set.  
   Overlap: tool calling, structured execution, medical calculators.  
   Threat: high for calculator/protocol novelty. Must cite: yes.

9. **CDR-Agent**  
   Summary: LLM agent that selects and executes clinical decision rules from ED notes.  
   Why close: Very close to protocol-grounded clinical decision support.  
   Not identical: Preprint; ED CDR-specific.  
   Overlap: unstructured notes, clinical decision rules, action recommendation, CDR benchmark.  
   Threat: high if your work uses protocols/rules. Must cite: yes.

10. **AgentClinic**  
    Summary: Simulated clinical environment with doctor/patient/measurement agents, multimodal cases, and sequential diagnosis.  
    Why close: Canonical clinical agent benchmark beyond static QA.  
    Not identical: Simulated clinic rather than real EHR database; less public hospital table structure.  
    Overlap: agentic clinical workflow, interaction, tools, incomplete information.  
    Threat: medium-high. Must cite: yes.

11. **MedChain**  
    Summary: NeurIPS workflow benchmark/agent spanning five clinical workflow stages with retrieval/feedback.  
    Why close: Strong workflow/sequential clinical decision framing.  
    Not identical: Less EHR-database/tool-environment grounded.  
    Overlap: interactive sequence, clinical workflow, retrieval, agent method.  
    Threat: medium-high. Must cite: yes.

12. **ClinicalLab**  
    Summary: NeurIPS clinical diagnosis agent alignment suite with ClinicalBench and ClinicalAgent.  
    Why close: End-to-end multi-department diagnostic agent evaluation.  
    Not identical: Less tied to public MIMIC/EHR data and less tool/protocol-focused.  
    Overlap: clinical agent, diagnosis workflow, benchmark.  
    Threat: medium-high. Must cite: yes.

13. **ReflecTool / ClinicalAgent Bench**  
    Summary: ACL clinical agent benchmark and reflection-aware tool-augmented method.  
    Why close: Strong method paper for tool selection, memory, and verification.  
    Not identical: Broad benchmark spanning many dimensions; not specifically EHR/protocol.  
    Overlap: tool use, verifier, memory, clinical agent evaluation.  
    Threat: medium. Must cite: yes.

14. **AI Hospital**  
    Summary: COLING multi-agent simulator with doctor/player and patient/examiner/chief-physician NPCs.  
    Why close: Tests dynamic clinical interaction, exam recommendations, and diagnosis.  
    Not identical: Chinese medical records and simulation; not public EHR environment.  
    Overlap: multi-agent clinical simulation, workflow, diagnosis.  
    Threat: medium. Must cite: likely.

15. **MedMCP-Calc**  
    Summary: 2026 MCP benchmark for realistic medical calculator scenarios with process-level evaluation.  
    Why close: Current work on agent-tool integration for clinical calculators and structured EHR interaction.  
    Not identical: Preprint and calculator-centric.  
    Overlap: MCP/tools, calculators, EHR DB, retrieval.  
    Threat: medium-high for protocol/tool-use work. Must cite: yes if calculators/protocols are in scope.

## Output 3: Benchmark / Environment Shortlist

- **MedAgentBench**: strongest direct EHR agent benchmark.
- **MedAgentBench v2**: benchmark expansion and agent design lessons.
- **AgentEHR**: strongest public/credentialed MIMIC-style autonomous EHR benchmark.
- **EHR-ChatQA**: strongest conversational EHR database-agent benchmark.
- **FHIR-AgentBench**: strongest FHIR QA/tool benchmark.
- **AgentClinic**: canonical simulated clinical interaction benchmark.
- **AI Hospital**: strong multi-agent medical interaction simulator.
- **ClinicalLab**: strong NeurIPS clinical diagnostic agent suite.
- **ReflecTool / ClinicalAgent Bench**: broad tool-augmented clinical-agent benchmark.
- **HealthAdminBench**: strongest healthcare GUI/admin computer-use benchmark.
- **CarePilot / CareFlow**: long-horizon healthcare software automation benchmark; public access less clear.
- **MedAgentBoard**: useful comparison of multi-agent, single LLM, and conventional methods.
- **ER-REASON, DiReCT, EHRNoteQA**: not agent environments, but strong public/credentialed clinical reasoning benchmarks.

## Output 4: Tool-Use / Protocol Shortlist

- **AgentMD**: clinical calculator/risk-tool learning at large scale; Nature Communications.
- **MeNTi**: nested medical calculator tool calling; NAACL.
- **CDR-Agent**: clinical decision rule selection and execution from ED notes.
- **MedMCP-Calc**: MCP-based realistic calculator scenarios.
- **EHRAgent**: code execution for tabular EHR reasoning.
- **FHIR-AgentBench**: FHIR API and tool strategies.
- **EHR-ChatQA**: user clarification plus SQL/tool execution.
- **ReflecTool**: memory and verifier for clinical tool use.
- **TxAgent**: therapeutic reasoning over ToolUniverse; strong biomedical tool-use preprint, but less bedside/EHR.
- **Med.ai ASK**: JAMIA biomedical QA agent with multiple knowledge-source tools; useful background.

## Output 5: Public-Data Shortlist

- **AgentEHR**: MIMIC-IV Common/Rare and MIMIC-III OOD via Hugging Face/credentialed setup.
- **EHRAgent**: EHRSQL/TREQS over MIMIC-III and eICU.
- **EHRSQL**: MIMIC-III/eICU structured EHR text-to-SQL.
- **EHRNoteQA**: PhysioNet MIMIC-IV discharge-summary QA.
- **DiReCT / MIMIC-IV-Ext-DiReCT**: PhysioNet diagnostic reasoning over MIMIC-IV notes.
- **MIMIC-IV-Ext-CDS**: PhysioNet ED triage/referral/diagnosis dataset.
- **ER-REASON**: PhysioNet restricted ER reasoning dataset.
- **EHRXQA**: MIMIC-IV structured EHR plus MIMIC-CXR/Chest ImaGenome.
- **DrugEHRQA**: MIMIC-III structured and unstructured medication QA.
- **AgentMD**: MIMIC-III admission notes plus RiskCalcs/RiskQA.
- **AgentClinic-MIMIC-IV extension**: reported MIMIC-IV clinical simulation variant.
- **DynamiCare / MIMIC-Patient**: MIMIC-III-derived interactive patient dataset; release unclear.

## Output 6: Novelty Threat Report

### High Novelty Threat

- **MedAgentBench / MedAgentBench v2**: covers interactive EHR tasks, FHIR tool use, physician-authored tasks, and agent design/failure modes. Remaining gap: public MIMIC/eICU reproducibility, local protocol-specific logic, prospective workflow, and richer temporal/longitudinal triggers.
- **AgentEHR**: covers autonomous decision-making over raw/noisy MIMIC-style EHR databases with tool use and memory. Remaining gap: peer-reviewed venue, broader clinical workflow/protocol evaluation, and direct real-world user/workflow integration.
- **EHR-ChatQA**: covers interactive ambiguity resolution and query execution. Remaining gap: diagnosis/treatment planning and protocol execution.
- **FHIR-AgentBench**: covers FHIR API/tool QA over real clinical questions. Remaining gap: decision interventions, protocol actions, and non-QA workflows.
- **EHRAgent**: covers executable-code EHR reasoning on public EHR benchmarks. Remaining gap: full clinical-agent environment and intervention/protocol workflow.
- **AgentMD / MeNTi / CDR-Agent**: cover medical calculators and clinical decision-rule execution. Remaining gap: broader EHR interaction, multi-visit context, and integrated workflow evaluation.

### Medium Novelty Threat

- **AgentClinic, AI Hospital, ClinicalLab, MedChain**: strong simulated/interacting clinical-agent or workflow benchmarks. They threaten broad novelty claims about "medical agents beyond QA," but less so if your contribution is EHR/table/tool/protocol grounded with public datasets.
- **ReflecTool / ClinicalAgent Bench**: threatens method novelty around memory, reflection, verification, and tool-use evaluation in clinical agents.
- **ART, EHRNavigator, DynamiCare**: threaten claims around structured EHR reasoning, heterogeneous EHR QA, and dynamic patient simulation, but are preprint/partial-access or narrower.
- **HealthAdminBench / CarePilot**: threaten healthcare workflow automation claims, not core clinical reasoning claims.
- **MedAgentBoard / MDAgents**: threaten broad multi-agent medical reasoning claims but are less close to realistic clinical data interaction.

### Low Novelty Threat

- **EHRNoteQA, DiReCT, ER-REASON, EHRSQL, EHRXQA**: strong datasets and likely supporting citations, but not agent systems.
- **MedJourney**: workflow framing benchmark, less agentic.
- **Med.ai ASK, ChatDA, MALADE**: tool/workflow-adjacent but outside the core EHR/clinical-decision target.

### Background Only

- Static medical QA papers, general medical LLM benchmark papers, summarization-only papers, RAG-only consumer health QA papers, and classification/prediction-only EHR papers.

## Output 7: Literature Map

### EHR / Structured Clinical Reasoning

- AgentEHR
- MedAgentBench and MedAgentBench v2
- EHR-ChatQA
- FHIR-AgentBench
- EHRAgent
- ART
- EHRNavigator
- EHRSQL
- EHRNoteQA
- DiReCT
- ER-REASON
- EHRXQA
- DrugEHRQA

### Tool-Using Clinical Agents

- AgentMD
- MeNTi
- CDR-Agent
- MedMCP-Calc
- EHRAgent
- ReflecTool
- Med.ai ASK
- TxAgent
- ChatDA

### Benchmark / Environment Papers

- MedAgentBench
- MedAgentBench v2
- AgentEHR
- EHR-ChatQA
- FHIR-AgentBench
- AgentClinic
- AI Hospital
- ClinicalLab
- ReflecTool / ClinicalAgent Bench
- HealthAdminBench
- CarePilot / CareFlow
- MedAgentBoard
- MedAgentsBench
- MedJourney

### Public-Data LLM / Agent Papers

- AgentEHR
- EHRAgent
- AgentMD
- EHRNoteQA
- DiReCT
- ER-REASON
- EHRSQL
- EHRXQA
- MIMIC-IV-Ext-CDS
- DrugEHRQA
- AgentClinic-MIMIC-IV extension

### Workflow-Oriented Clinical AI Beyond Classification

- MedAgentBench
- AgentEHR
- EHR-ChatQA
- FHIR-AgentBench
- AgentMD
- MeNTi
- CDR-Agent
- AgentClinic
- MedChain
- ClinicalLab
- AI Hospital
- HealthAdminBench
- CarePilot
- MALADE

## What Remains Missing In The Literature

1. A fully public, reproducible benchmark that combines raw EHR navigation, unstructured notes, structured tables, and executable clinical actions in one environment.
2. Strong evaluation of protocol adherence where the agent must decide when a protocol applies, retrieve required variables, handle missing data, and abstain safely.
3. Benchmarks that combine calculators, decision rules, medications, labs, temporal trends, and clinician-facing explanations in one workflow.
4. Prospective or near-prospective evaluations with realistic clinician-in-the-loop constraints rather than retrospective task replay only.
5. Fine-grained process evaluation for each agent step: retrieval, tool selection, variable extraction, calculation, reasoning, action proposal, and uncertainty handling.
6. Better public baselines for error recovery when tools fail, EHR schemas mismatch, or clinical variables are absent/contradictory.
7. Evaluation of multi-visit and cross-encounter reasoning with temporal triggers, changing patient states, and care transitions.
8. Head-to-head comparisons against strong non-agent baselines, including conventional CDS/rules engines and specialized retrieval/query systems.
9. Safety evaluations targeted to clinical workflow failures, not just answer correctness or hallucination.
10. Clear evidence that agentic complexity improves outcomes enough to justify latency, token cost, audit burden, and operational risk.

## Aggressively Down-Ranked Or Excluded

- **ClinicRealm, CliniBench, MIMIC-IV-ICD, Revisiting the MIMIC-IV Benchmark**: useful EHR benchmarks, but primarily classification/prediction/coding.
- **RAM-EHR, EHR-RAG, REALM**: interesting retrieval/EHR modeling, but mostly prediction-focused rather than agentic workflow.
- **Generic MedQA/MedMCQA multi-agent prompting papers**: often agentic in form but weakly realistic as clinical workflow benchmarks.
- **Simple RAG consumer health QA papers**: useful background at most unless they add tool execution, workflow evaluation, or public clinical data grounding.
- **Medical summarization-only papers**: background unless they include verifiable workflow, agentic evaluation, or EHR-grounded factuality with iterative evidence use.
