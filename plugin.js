module.exports = function() {
	return {
		name: 'Blog',
		description: 'Tests at install blog function',
		models: {
			blog: 'app/models/routable/blog.routable.server.model.js'
		},
		controllers: {
			blog: 'app/controllers/routable/blog.routable.server.controller.js'
		},
		routes: {},
		views: {
			blog: __dirname+'/views'
		},
		order:{
			'model.postRoutable': {
				2000: models.blog
			},
			'view.postSite': {
				1000: views.blog
			}
		}
	};
};