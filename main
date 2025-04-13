#include <stdio.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
/* Routine to print titles of books */
void print_node_type(xmlNode *node) {
  if (node==NULL) {
    return;
  }

/* Look for only element nodes with name of title */

/* When found, print the content */
if (node->type == XML_ELEMENT_NODE) {
  if (xmlStrcmp(node->name, (const xmlChar *)"title") == 0) {
    xmlChar *content = xmlNodeGetContent(node);
    if (content != NULL) {
      printf("Title: %s\n", content);
      xmlFree(content);
    } else {
      printf("Content is null\n");
      }
    }
  }
}

/* Routine to traverse the node tree */

void process_node(xmlNode *node) {
  xmlNode *current_node = NULL;

/* for each node, go see if we want to print it */
print_node_type(node);

/* then find next node and process it */

  for (current_node = node->children; current_node; current_node = current_node->next) {
    process_node(current_node);
  }
}

int main() {
/* Open file */
const char *filename = "catalog.xml";
xmlDoc *document = xmlReadFile(filename, NULL, 0);

/* Make sure we can parse it */
if (document == NULL) {
  fprintf(stderr, "Failed to parse %s\n", filename);
  return 1;
}
