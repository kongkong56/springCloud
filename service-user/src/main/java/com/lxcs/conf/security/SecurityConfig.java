package com.lxcs.conf.security;

import com.lxcs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * Created by shuai on 2018/1/18.
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserService userService;
    @Autowired
    private MyUserDetailService myUserDetailService;

    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("bill").password("abc123").roles("USER");
        auth.inMemoryAuthentication().withUser("admin").password("123456").roles("ADMIN");
        auth.inMemoryAuthentication().withUser("dba").password("root123").roles("ADMIN","DBA");
    }

    /**
     *  @PreAuthorize 注解适合进入方法前的权限验证， @PreAuthorize可以将登录用户的roles/permissions参数传到方法中。

     @PostAuthorize 注解使用并不多，在方法执行后再进行权限验证。
     所以它适合验证带有返回值的权限。Spring EL 提供 返回对象能够在表达式语言中获取返回的对象returnObject。
      * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //要求登录者有 READER角色 设置登录表单 的路径
        // .antMatchers("/", "/home").access("hasRole('USER') or hasRole('ADMIN') or hasRole('DBA')")
        http.authorizeRequests()
                .and()
                .formLogin().loginPage("/")
                .usernameParameter("username").passwordParameter("password").permitAll()
                .loginProcessingUrl("/login")
                .usernameParameter("username").passwordParameter("password")
                .failureForwardUrl("/?error=true")
                .defaultSuccessUrl("/me")
                 //登录页面用户任意访问
                .and()
                .logout()
                .logoutUrl("/logout").permitAll()
                .logoutSuccessUrl("/?logout=true")//按顺序，第一个是登出的url，security会拦截这个url进行处理，所以登出不需要我们实现，第二个是登出url，logout告知登陆状态.permitAll()
                .and().exceptionHandling().accessDeniedPage("/Access_Denied")
                .and()
                .rememberMe()
                .tokenValiditySeconds(604800)//记住我功能，cookies有限期是一周
                .rememberMeParameter("remember-me")//登陆时是否激活记住我功能的参数名字，在登陆页面有展示
                .rememberMeCookieName("workspace");//cookies的名字，登陆后可以通过浏览器查看cookies名字; //注销行为任意访问
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(myUserDetailService);
    }
}