#!/usr/local/bin/node

const FileSystem = require('fs');

const CommandLineArguments = require('command-line-args');
const CommandLineUsage = require('command-line-usage');
const StripJSONComments = require('strip-json-comments');
const ParseJSON = require('parse-json');
const HandleBars = require('handlebars');

if(require.main === module){
	var _return = [0,null];
	const OptionDefinitions = [
		{name: 'help', alias: 'h', type: Boolean, description: 'Print this help text to stdout and exit.'},
		{name: 'input', alias: 'I', type: String, description: 'The file to use for input; defaults to "./input.json".'},
		{name: 'output', alias: 'O', type: String, description: 'The file to write output to; defaults to "./output".'},
		{name: 'template', alias: 'T', type: String, description: 'The template to use; defaults to the file specified in the input-file\'s property, "templatename".'}
	];
	const Options = CommandLineArguments(OptionDefinitions);
	if(Options.help === true){
		const help_sections_array = [
			{
				header: 'FunctionFactory',
				content: 'Quick, minimalist text-templating from the command line.',
			},
			{
				header: 'Options',
				optionList: OptionDefinitions
			}
		]
		var help_message = CommandLineUsage(help_sections_array);
		console.log(help_message);
	} else{
		var input_filename = './input.json';
		if(Options.input != null) input_filename = Options.input;
		var input_data = FileSystem.readFileSync(input_filename, 'utf8');
		if(input_data != null){
			var json_input = StripJSONComments(input_data);
			if(json_input != null){
				var json_object = ParseJSON(json_input);
				if(json_object != null){
					var template_filename = json_object.templatename;
					if(Options.template != null) template_filename = Options.template;
					if(template_filename != null){
						var template_data = FileSystem.readFileSync(template_filename, 'utf8');
						if(template_data != null){
							var template_function = HandleBars.compile(template_data);
							if(template_function != null){
								var output_data = template_function(json_object);
								if(output_data != null){
									if(json_object.post_re != null){
										var regex = new RegExp(json_object.post_re[0].search,json_object.post_re[0].flags);
										output_data = output_data.replace(regex,json_object.post_re[0].replace);
									}
									var output_filename = 'output';
									if(Options.output != null) output_filename = Options.output;
									FileSystem.writeFileSync(output_filename, output_data);
								} else _return = [1,'Problem with template_function.'];
							} else _return = [1,'Problem with compiling template_data: '+template_data];
						} else _return = [1,'Problem couldn\'t open template_filename: '+template_filename];
					} else _return = [1,'Property \'templatename\' invalid: '+json_object.toString()];
				} else _return = [1,'Problem with parsing json_input: '+json_input];
			} else _return = [1,'Problem with stripping JSON comments: '+input_data];
		} else _return = [1,'Couldn\'t open input file: '+input_filename];
		console.log(_return[1]);
	}
	process.exitCode = _return[0];
}
