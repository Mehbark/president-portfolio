use std::{env, fs};

use liquid::{ObjectView, ValueView};
use serde::{Deserialize, Serialize};

const BATCH_DATA: &str = include_str!("../batch_data.json");
const MANUAL_DATA: &str = include_str!("../manual_data.json");

const HELPERS_TEMPLATE: &str = include_str!("helpers.liquid");
const HELPER_TEMPLATE: &str = include_str!("helper.liquid");

const PRESIDENT_TEMPLATE: &str = include_str!("president.liquid");
fn main() {
    match env::args().nth(1) {
        Some(sub) if &sub == "helper" => println!("{}", generate_helper()),
        Some(sub) if &sub == "create" => create(),
        _ => println!("give me helper or create"),
    }
}

#[derive(Debug, Serialize, Deserialize)]
struct BatchData {
    presidents: Vec<String>,
    served: Vec<String>,
    party: Vec<String>,
    vice_presidents: Vec<String>,
}

#[derive(Serialize, Deserialize, Debug, ObjectView, ValueView, Clone)]
struct ManualPresidentInfo {
    domestic_issues: String,
    electoral_summary: String,
    foreign_policy_issues: String,
    major_contributions: String,
    quote: String,
    quote_explanation: String,
}

#[derive(Debug, ObjectView, ValueView)]
struct PresidentInfo {
    name: String,
    id: String,
    link: String,
}

#[derive(Debug, ObjectView, ValueView)]
struct CompletePresidentInfo {
    pub name: String,
    pub served: String,
    pub vice_president: String,
    pub party: String,
    pub id: String,
    pub electoral_summary: String,
    pub domestic_issues: String,
    pub foreign_policy_issues: String,
    pub major_contributions: String,
    pub quote: String,
    pub quote_explanation: String,
}

impl PresidentInfo {
    pub fn new(name: String) -> Self {
        Self {
            name: name.clone(),
            id: name.replace(' ', "-"),
            link: format!("https://en.wikipedia.org/wiki/{}", name.replace(' ', "_")),
        }
    }
}

fn generate_helper() -> String {
    let data: BatchData = serde_json::from_str(BATCH_DATA).unwrap();

    let helper_template = liquid::ParserBuilder::with_stdlib()
        .build()
        .unwrap()
        .parse(HELPERS_TEMPLATE)
        .unwrap();
    let helpers: Vec<_> = data
        .presidents
        .iter()
        .map(|name| PresidentInfo::new(name.clone()))
        .map(|info| helper_template.render(&info).unwrap())
        .collect();

    HELPER_TEMPLATE.replace("{{ helpers }}", &helpers.join("\n"))
}

fn create() {
    let batch_data: BatchData = serde_json::from_str(BATCH_DATA).unwrap();
    let manual_data: Vec<ManualPresidentInfo> = serde_json::from_str(MANUAL_DATA).unwrap();
    let template = liquid::ParserBuilder::with_stdlib()
        .build()
        .unwrap()
        .parse(PRESIDENT_TEMPLATE)
        .unwrap();
    for id in 1..=45 {
        let ManualPresidentInfo {
            domestic_issues,
            electoral_summary,
            foreign_policy_issues,
            major_contributions,
            quote,
            quote_explanation,
        } = manual_data[id - 1].clone();
        let info = CompletePresidentInfo {
            name: batch_data.presidents[id - 1].clone(),
            served: batch_data.served[id - 1].clone(),
            vice_president: batch_data.vice_presidents[id - 1].clone(),
            party: batch_data.party[id - 1].clone(),
            id: id.to_string(),
            electoral_summary: electoral_summary.replace('\n', "<br>"),
            domestic_issues: domestic_issues.replace('\n', "<br>"),
            foreign_policy_issues: foreign_policy_issues.replace('\n', "<br>"),
            major_contributions,
            quote,
            quote_explanation,
        };
        fs::write(format!("out/{id}.html"), template.render(&info).unwrap()).unwrap();
    }
}
