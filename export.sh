mongoexport --db safir --collection answerquizz --out categories.json
wait
mongoexport --db safir --collection users --out users.json
wait
mongoexport --db safir --collection products --out products.json
wait
mongoexport --db safir --collection attribute --out attribute.json
wait
mongoexport --db safir --collection attribute_value --out attribute_value.json
wait
mongoexport --db safir --collection cfs.images.filerecord --out cfs.images.filerecord.json
wait
mongoexport --db safir --collection contents --out contents.json
wait
mongoexport --db safir --collection contents_type --out contents_type.json
wait
mongoexport --db safir --collection journey --out journey.json
wait
mongoexport --db safir --collection linkselling --out linkselling.json
wait
mongoexport --db safir --collection list_product --out list_product.json
wait
mongoexport --db safir --collection parent_tags --out parent_tags.json
wait
mongoexport --db safir --collection parentattr --out parentattr.json
wait
mongoexport --db safir --collection question --out question.json
wait
mongoexport --db safir --collection roles --out roles.json
wait
mongoexport --db safir --collection shops --out shops.json
wait
mongoexport --db safir --collection tags --out tags.json
wait
mongoexport --db safir --collection users --out users.json
