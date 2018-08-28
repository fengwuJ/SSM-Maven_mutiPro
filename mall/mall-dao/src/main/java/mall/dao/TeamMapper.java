package mall.dao;

import java.util.List;
import mall.entity.Team;
import mall.entity.TeamExample;
import org.apache.ibatis.annotations.Param;

public interface TeamMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int countByExample(TeamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int deleteByExample(TeamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int insert(Team record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int insertSelective(Team record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    List<Team> selectByExample(TeamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    Team selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int updateByExampleSelective(@Param("record") Team record, @Param("example") TeamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int updateByExample(@Param("record") Team record, @Param("example") TeamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int updateByPrimaryKeySelective(Team record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table team
     *
     * @mbggenerated Wed Aug 15 10:25:09 CST 2018
     */
    int updateByPrimaryKey(Team record);
}