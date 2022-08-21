package rules

deny[msg] {
	resource := input.resource.aws_instance[name]
	not resource.tags.Owner

	msg := {
		# Mandatory fields
		"publicId": "MY-RULE",
		"title": "Missing an Owner from tag",
		"severity": "low",
		"msg": sprintf("input.resource.aws_instance[%s].tags", [name]), # must be the JSON path to the resource field that triggered the deny rule
		# Optional fields
		"issue": "",
		"impact": "",
		"remediation": "",
		"references": [],
	}
}
