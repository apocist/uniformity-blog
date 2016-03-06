module.exports = function() {
	return {
		name: 'Blog',
		description: 'Tests at install blog function',
		models: {
			blog: __dirname+'/app/models/routable/blog.routable.server.model.js'
		},
		controllers: {
			blog: __dirname+'/app/controllers/routable/blog.routable.server.controller.js'
		},
		routes: {},
		views: {
			blog: __dirname+'/app/views'
		},
		loadOrder:{
			'model.postRoutable': [{
				order: 2000,
				item: models.blog
			}],
			'view.postSite': [{
				order: 2000,
				item: views.blog
			}]
		}
	};
};