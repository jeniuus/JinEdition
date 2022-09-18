package com.test.app2.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointcutCommon {
	@Pointcut("execution(* com.test.app2..*Impl.*(..))")
	public void aPointcut() {} // 참조 메서드
	@Pointcut("execution(* com.test.app2..*Impl.get*(..))")
	public void bPointcut() {}
}
