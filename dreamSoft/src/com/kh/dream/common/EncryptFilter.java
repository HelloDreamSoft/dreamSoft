package com.kh.dream.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.kh.dream.common.EncryptWrapper;

/**
 * Servlet Filter implementation class EncryptFilter
 */

// 수정이 필요한 부분이니까 꼭 봐주세요!
@WebFilter({"/mJoin.me", "/mLogin.me", "/oJoin.ow", "/oLogin.ow"})
public class EncryptFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncryptFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 서블릿에 도착하기 전 수행할 코드
		// 원본 request 받기
		HttpServletRequest req = (HttpServletRequest)request;
		
		// 비밀번호 확인용 값 저장
		request.setAttribute("originPw", req.getParameter("pw"));
		
		// 암호화 모듈 적용하기 (필터 안에서 수행할 래퍼 작성하기)
		EncryptWrapper ew = new EncryptWrapper(req);
		
		chain.doFilter(ew, response);
		
		
		
		// 서블릿 동작 후 수행할 코드
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
