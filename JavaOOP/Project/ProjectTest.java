class ProjectTest {
    public static void main(String[] args) {
        Project proj = new Project("Stuff", "Theres Stuff...& Things!");
        Project proj2 = new Project();
        String proj2Name = proj2.setName("asdf");
        String projDescription = proj.getDescription();
        }
}