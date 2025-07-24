# Diataxis Framework Analysis Report for Shuttle Documentation

## Executive Summary

Your documentation shows a **moderate alignment** with the Diataxis framework, with some sections well-organized but significant room for improvement in content classification and structure. The documentation demonstrates good technical quality but lacks the clear separation of content types that Diataxis advocates for optimal user experience.

**Overall Score: 6.5/10**

## Current State Analysis

### 1. **Tutorials (Learning-oriented content)**

**Current State: Partially Implemented**

**What's Working:**

- Good tutorial content exists in `templates/tutorials/` with comprehensive guides like "REST HTTP Service with Axum" and "Discord Weather Forecast"
- Step-by-step approach with clear progression
- Practical, hands-on examples

**Issues:**

- Tutorials are buried under "Templates and Tutorials" tab, making them less discoverable
- Mixed with templates (which are different from tutorials)
- Quick-start guide is more of a how-to than a tutorial
- No clear learning progression from beginner to advanced

### 2. **How-to Guides (Problem-oriented content)**

**Current State: Well Implemented**

**What's Working:**

- Clear "Guides" section with focused problem-solving content
- CLI guide is comprehensive and well-structured
- Migration and upgrade guides address specific user needs

**Issues:**

- Some how-to content is scattered in other sections
- Troubleshooting is isolated in Support rather than integrated with relevant topics
- Examples section contains how-to style content mixed with reference examples

### 3. **Reference (Information-oriented content)**

**Current State: Good Foundation, Needs Organization**

**What's Working:**

- Comprehensive CLI reference in guides
- Good resource documentation
- Clear project and configuration information

**Issues:**

- Reference material is scattered across "Docs", "Resources", and "Integrations"
- No dedicated API reference section
- Missing comprehensive reference for all available macros and annotations
- Pricing information mixed with reference content

### 4. **Explanation (Understanding-oriented content)**

**Current State: Underdeveloped**

**What's Working:**

- Introduction provides good conceptual overview
- Infrastructure from Code concept is well explained

**Issues:**

- Lacks dedicated explanation content
- No architectural explanations
- Missing conceptual guides about Shuttle's design principles
- Community content is more about participation than understanding concepts

## Detailed Section Analysis

### Navigation Structure Issues

The current navigation mixes content types:

- "Documentation" tab contains mixed reference and explanation content
- "Examples" could be tutorials, how-tos, or reference depending on the example
- "Templates and Tutorials" combines two different content types

### Content Classification Problems

1. **Misclassified Content:**

   - Quick-start (currently in Getting Started) is more how-to than tutorial
   - Examples range from simple reference to complex how-tos
   - Some guides contain reference information

2. **Missing Content Types:**
   - No comprehensive beginner tutorial series
   - Limited architectural explanations
   - No troubleshooting integrated with relevant sections

## Recommendations for Diataxis Alignment

### 1. **Restructure Navigation**

**Proposed New Structure:**

```
├── Getting Started
│   ├── Introduction (explanation)
│   └── Installation (how-to)
├── Tutorials
│   ├── Your First Shuttle App
│   ├── Building a Web API
│   ├── Adding a Database
│   └── Deploying to Production
├── How-to Guides
│   ├── CLI Usage
│   ├── Local Development
│   ├── Deployment
│   ├── Database Management
│   ├── Custom Domains
│   └── Troubleshooting
├── Reference
│   ├── CLI Commands
│   ├── Resources & Annotations
│   ├── Configuration
│   ├── API Reference
│   └── Integrations
├── Explanation
│   ├── Architecture Overview
│   ├── Infrastructure from Code
│   ├── Resource Management
│   └── Deployment Process
```

### 2. **Content Restructuring**

#### **Create Proper Tutorials**

- **New: "Your First Shuttle App"** - True beginner tutorial starting from zero
- **Restructure existing tutorials** to focus on learning rather than just building
- **Add learning objectives** to each tutorial
- **Create tutorial series** with clear progression

#### **Enhance How-to Guides**

- **Move troubleshooting** into relevant how-to sections
- **Break down complex guides** into specific problem-solving pieces
- **Add quick reference cards** for common tasks

#### **Consolidate Reference Material**

- **Create comprehensive CLI reference**
- **Build complete resource annotation reference**
- **Add API documentation** if applicable
- **Standardize reference formatting**

#### **Develop Explanation Content**

- **Architecture deep-dive** explaining Shuttle's design
- **Conceptual guides** on Infrastructure from Code
- **Comparison guides** (vs traditional deployment, vs other platforms)
- **Best practices** and design patterns

### 3. **Specific File Changes Needed**

#### **Move Content:**

```bash
# Reorganize tutorials
mv templates/tutorials/* tutorials/
mv getting-started/quick-start.mdx how-to-guides/quick-deployment.mdx

# Restructure examples as reference
mkdir reference/examples/
mv examples/* reference/examples/

# Create explanation section
mkdir explanation/
# Move conceptual content from introduction
```

#### **Create New Content:**

1. **tutorials/your-first-app.mdx** - Comprehensive beginner tutorial
2. **explanation/architecture.mdx** - System architecture explanation
3. **explanation/infrastructure-from-code.mdx** - Concept deep-dive
4. **reference/complete-cli-reference.mdx** - Comprehensive CLI documentation
5. **how-to-guides/troubleshooting/** - Distributed troubleshooting guides

#### **Update Navigation (docs.json):**

```json
{
  "navigation": {
    "tabs": [
      {
        "tab": "Getting Started",
        "groups": [
          {
            "group": "Welcome",
            "pages": ["welcome/introduction", "getting-started/installation"]
          }
        ]
      },
      {
        "tab": "Tutorials",
        "groups": [
          {
            "group": "Learning Path",
            "pages": [
              "tutorials/your-first-app",
              "tutorials/web-api-tutorial",
              "tutorials/database-tutorial",
              "tutorials/production-deployment"
            ]
          }
        ]
      },
      {
        "tab": "How-to Guides",
        "groups": [
          {
            "group": "Development",
            "pages": ["how-to/cli-usage", "how-to/local-development"]
          },
          {
            "group": "Deployment",
            "pages": ["how-to/deployment", "how-to/custom-domains"]
          }
        ]
      },
      {
        "tab": "Reference",
        "groups": [
          {
            "group": "CLI",
            "pages": ["reference/cli-commands"]
          },
          {
            "group": "Resources",
            "pages": ["reference/annotations", "reference/integrations"]
          }
        ]
      },
      {
        "tab": "Explanation",
        "groups": [
          {
            "group": "Concepts",
            "pages": [
              "explanation/architecture",
              "explanation/infrastructure-from-code"
            ]
          }
        ]
      }
    ]
  }
}
```

### 4. **Content Quality Improvements**

#### **For Tutorials:**

- Add learning objectives at the beginning
- Include prerequisites
- Provide complete, working code examples
- Add "what you learned" summaries
- Create logical progression between tutorials

#### **For How-to Guides:**

- Start with the problem being solved
- Provide step-by-step instructions
- Include alternative approaches
- Add troubleshooting sections
- Focus on practical outcomes

#### **For Reference:**

- Use consistent formatting
- Include all available options
- Add code examples for each feature
- Provide cross-references
- Maintain alphabetical or logical ordering

#### **For Explanation:**

- Focus on the "why" not the "how"
- Provide context and background
- Include diagrams and visual aids
- Connect concepts to practical usage
- Avoid step-by-step instructions

## Implementation Priority

### **Phase 1: Quick Wins (1-2 weeks)**

1. Reorganize navigation structure in `docs.json`
2. Move obviously misplaced content
3. Add content type indicators to existing pages
4. Create basic explanation pages from existing content

### **Phase 2: Content Development (4-6 weeks)**

1. Create comprehensive beginner tutorial
2. Develop explanation content
3. Consolidate reference material
4. Enhance how-to guides

### **Phase 3: Refinement (2-3 weeks)**

1. Add cross-references between content types
2. Improve content discovery
3. User testing and feedback integration
4. SEO and navigation optimization

## Expected Benefits

Following this restructuring will provide:

1. **Better User Experience**: Users can quickly find the right type of content for their needs
2. **Improved Onboarding**: Clear learning path for new users
3. **Enhanced Productivity**: Developers can quickly solve problems with targeted how-to guides
4. **Better Retention**: Users understand concepts better with dedicated explanation content
5. **Reduced Support Burden**: Self-service becomes more effective

This restructuring aligns with Diataxis principles and will significantly improve the usability and effectiveness of your documentation.

## Appendix: Diataxis Framework Overview

### The Four Content Types

| Type              | Purpose         | User Intent                   | Content Focus               |
| ----------------- | --------------- | ----------------------------- | --------------------------- |
| **Tutorials**     | Learning        | "I want to learn"             | Step-by-step lessons        |
| **How-to Guides** | Problem-solving | "I want to solve a problem"   | Goal-oriented instructions  |
| **Reference**     | Information     | "I want to look something up" | Dry, factual descriptions   |
| **Explanation**   | Understanding   | "I want to understand"        | Context, background, theory |

### Content Characteristics

- **Tutorials**: Learning-oriented, safe environment, meaningful examples, minimum necessary steps
- **How-to Guides**: Problem-oriented, practical steps, flexible paths, real-world scenarios
- **Reference**: Information-oriented, accurate, complete, consistent structure
- **Explanation**: Understanding-oriented, theoretical, context-rich, connections between concepts
