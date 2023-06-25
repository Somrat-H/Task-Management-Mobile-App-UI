class ProjectData{
  String ?title;
  int ?numProject;
  bool ?isTap;
  ProjectData(this.title, this.numProject, this.isTap);
}

List<ProjectData> projectDummyData = [
  ProjectData('All', 16, true),
  ProjectData("Ongoing",  5,false),
  ProjectData("Under Review", 7, false),
];

