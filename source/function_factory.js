#!/usr/local/bin/node

const FileSystem = require('fs');

const ParseJSON = require('parse-json');
const HandleBars = require('handlebars');

if(require.main === module){
	var input_data = FileSystem.readFileSync('./input.json', 'utf8');
	var json_object = ParseJSON(input_data);
	var template_filename = json_object.templatename;
	var template_data = FileSystem.readFileSync(template_filename, 'utf8');
	var template_function = HandleBars.compile(template_data);
	var output_data = template_function(json_object);
	FileSystem.writeFileSync('output', output_data);
}
