package com.example.pay.game.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/lib/css/**","/lib/img/**","/lib/js/**","/lib/scss/**","/lib/vendor/**");
    }
 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/login").permitAll().anyRequest().authenticated().and().formLogin()
                .loginPage("/login").defaultSuccessUrl("/",true).and().logout().logoutUrl("/logout")
				.logoutSuccessUrl("/login");;
    }
 
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	
        //auth.inMemoryAuthentication().withUser("admin").password(passwordEncoder().encode("1234")).authorities("ADMIN");
        auth.inMemoryAuthentication().withUser("admin").password("password").roles("ADMIN");
    }
    
//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
}
