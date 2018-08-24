package com.kx.dao;
/**
 * 帖子的dao层
 * @author 王令飞
 *
 */

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.kx.pojo.Post;
public interface PostMapper {
	List<Post> getAllPost(@Param("pageCode") Integer pageCode, @Param("pageSize") Integer pageSize);//获取所有帖子(分页)
	
	List<Post> getByTitle(@Param("post_type") int post_type, @Param("post_title") String post_title, @Param("pageCode") Integer pageCode, @Param("pageSize") Integer pageSize);//根据模块、标题的模糊查询
	
	List<Post> getByPostId(@Param("post_id") int post_id, @Param("pageCode") Integer pageCode, @Param("pageSize") Integer pageSize);//根据帖子的ID获取帖子，用于用户查看收藏的帖子
	
	int addPost(Post post);//发表帖子
	
	
	
}
