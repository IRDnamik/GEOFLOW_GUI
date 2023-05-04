// class WorklowParameters {
//   Profile? profile;
//   Metadata? metadata;
//   List<Software>? software;
//   List<Actions>? actions;

//   WorklowParameters({this.profile, this.metadata, this.software, this.actions});

//   WorklowParameters.fromJson(Map<String, dynamic> json) {
//     profile =
//         json['profile'] != null ? Profile.fromJson(json['profile']) : null;
//     metadata =
//         json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
//     if (json['software'] != null) {
//       software = <Software>[];
//       json['software'].forEach((v) {
//         software!.add(Software.fromJson(v));
//       });
//     }
//     if (json['actions'] != null) {
//       actions = <Actions>[];
//       json['actions'].forEach((v) {
//         actions!.add(Actions.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (profile != null) {
//       data['profile'] = profile!.toJson();
//     }
//     if (metadata != null) {
//       data['metadata'] = metadata!.toJson();
//     }
//     if (software != null) {
//       data['software'] = software!.map((v) => v.toJson()).toList();
//     }
//     if (actions != null) {
//       data['actions'] = actions!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Profile {
//   String? id;
//   String? name;
//   String? project;
//   String? organization;
//   List<Uri>? logos;
//   String? mode;
//   Options? options;

//   Profile(
//       {this.id,
//       this.name,
//       this.project,
//       this.organization,
//       this.logos,
//       this.mode,
//       this.options});

//   Profile.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     project = json['project'];
//     organization = json['organization'];
//     if (json['logos'] != null) {
//       logos = <Uri>[];
//       json['logos'].forEach((v) {
//         logos!.add(Uri.fromJson(v));
//       });
//     }
//     mode = json['mode'];
//     options =
//         json['options'] != null ? Options.fromJson(json['options']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['name'] = name;
//     data['project'] = project;
//     data['organization'] = organization;
//     if (logos != null) {
//       data['logos'] = logos!.map((v) => v.toJson()).toList();
//     }
//     data['mode'] = mode;
//     if (options != null) {
//       data['options'] = options!.toJson();
//     }
//     return data;
//   }
// }

// class Options {
//   String? lineSeparator;

//   Options({this.lineSeparator});

//   Options.fromJson(Map<String, dynamic> json) {
//     lineSeparator = json['line_separator'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['line_separator'] = this.lineSeparator;
//     return data;
//   }
// }

// class Metadata {
//   List<Entities>? entities;
//   List<Contacts>? contacts;

//   Metadata({this.entities, this.contacts});

//   Metadata.fromJson(Map<String, dynamic> json) {
//     if (json['entities'] != null) {
//       entities = <Entities>[];
//       json['entities'].forEach((v) {
//         entities!.add(Entities.fromJson(v));
//       });
//     }
//     if (json['contacts'] != null) {
//       contacts = <Contacts>[];
//       json['contacts'].forEach((v) {
//         contacts!.add(Contacts.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (entities != null) {
//       data['entities'] = entities!.map((v) => v.toJson()).toList();
//     }
//     if (contacts != null) {
//       data['contacts'] = contacts!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Entities {
//   String? handler;
//   String? source;

//   Entities({this.handler, this.source});

//   Entities.fromJson(Map<String, dynamic> json) {
//     handler = json['handler'];
//     source = json['source'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['handler'] = handler;
//     data['source'] = source;
//     return data;
//   }
// }

// class Software {
//   String? id;
//   String? type;
//   String? softwareType;
//   Parameters? parameters;
//   Properties? properties;

//   Software(
//       {this.id,
//       this.type,
//       this.softwareType,
//       this.parameters,
//       this.properties});

//   Software.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     type = json['type'];
//     softwareType = json['software_type'];
//     parameters = json['parameters'] != null
//         ? Parameters.fromJson(json['parameters'])
//         : null;
//     properties = json['properties'] != null
//         ? Properties.fromJson(json['properties'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['type'] = type;
//     data['software_type'] = softwareType;
//     if (parameters != null) {
//       data['parameters'] = parameters!.toJson();
//     }
//     if (properties != null) {
//       data['properties'] = properties!.toJson();
//     }
//     return data;
//   }
// }

// class Parameters {
//   String? url;
//   String? user;
//   String? pwd;
//   String? version;
//   String? logger;
//   String? email;

//   Parameters(
//       {this.url, this.user, this.pwd, this.version, this.logger, this.email});

//   Parameters.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     user = json['user'];
//     pwd = json['pwd'];
//     version = json['version'];
//     logger = json['logger'];
//     email = json['email'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['url'] = url;
//     data['user'] = user;
//     data['pwd'] = pwd;
//     data['version'] = version;
//     data['logger'] = logger;
//     data['email'] = email;
//     return data;
//   }
// }

// class Properties {
//   String? workspace;
//   String? store;

//   Properties({this.workspace, this.store});

//   Properties.fromJson(Map<String, dynamic> json) {
//     workspace = json['workspace'];
//     store = json['store'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['workspace'] = workspace;
//     data['store'] = store;
//     return data;
//   }
// }

// class Actions {
//   String? id;
//   Options? options;
//   bool? run;

//   Actions({this.id, this.options, this.run});

//   Actions.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     options =
//         json['options'] != null ? Options.fromJson(json['options']) : null;
//     run = json['run'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     if (options != null) {
//       data['options'] = options!.toJson();
//     }
//     data['run'] = run;
//     return data;
//   }
// }

// class Options {
//   bool? logo;
//   bool? createWorkspace;
//   bool? createStore;

//   Options({this.logo, this.createWorkspace, this.createStore});

//   Options.fromJson(Map<String, dynamic> json) {
//     logo = json['logo'];
//     createWorkspace = json['createWorkspace'];
//     createStore = json['createStore'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['logo'] = logo;
//     data['createWorkspace'] = createWorkspace;
//     data['createStore'] = createStore;
//     return data;
//   }
// }
