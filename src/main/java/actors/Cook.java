package actors;

/**
 * Created by Mihun on 30.11.2015.
 */
public class Cook extends User {
    private int rank;
    private String skillInfo;

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public String getSkillInfo() {
        return skillInfo;
    }

    public void setSkillInfo(String skillInfo) {
        this.skillInfo = skillInfo;
    }
}
