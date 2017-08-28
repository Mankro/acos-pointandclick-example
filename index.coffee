module.exports = PointandclickExample =
  meta: {
      'name': 'pointandclick-example',
      'shortDescription': 'Examples of point-and-click exercises',
      'description': 'Examples of point-and-click exercises',
      'author': 'Tapio Auvinen, Markku Riekkinen',
      'license': 'MIT',
      'version': '0.3.0',
      'url': '',
      'teaserContent': [],
      'contents': {},
    }
  
  namespace: 'pointandclick-example'
  contentTypeNamespace: 'pointandclick'
  packageType: 'content'

  getDir: () ->
    __dirname

  register: (handlers) ->
    handlers.contentPackages['pointandclick-example'] = PointandclickExample
    handlers.contentTypes.pointandclick.installedContentPackages.push(PointandclickExample)
    
    # Delegate the autodiscovery of exercises to pointandclick content type
    handlers.contentTypes.pointandclick.registerContentPackage(PointandclickExample, __dirname)
