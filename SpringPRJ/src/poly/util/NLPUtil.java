package poly.util;

import java.util.Iterator;
import java.util.Properties;
import java.util.Scanner;

import edu.stanford.nlp.pipeline.CoreDocument;
import edu.stanford.nlp.pipeline.CoreSentence;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;

public class NLPUtil {
	
	public static Iterator<CoreSentence> sentence(String str) {
		
		Properties props = new Properties();
		
		props.setProperty("annotators", "tokenize, ssplit, pos, lemma");
		
		props.setProperty("coref.algorithm", "neural");
		
		StanfordCoreNLP pipeline = new StanfordCoreNLP(props);
		
		CoreDocument doc = new CoreDocument(str);
		
		pipeline.annotate(doc);
		
		Iterator<CoreSentence> it = doc.sentences().iterator();
		
		return it;
	}

	public static void main(String[] args)  {
		/*
		// nlp설정(거의 건드릴 필요 없음)
		// tokenize 어절 끈어서
		// ssplit 문장 끈어서
		// lemma 동사원형으로 바꾸기
		
		Properties props = new Properties();
		props.setProperty("annotators", "tokenize,ssplit,pos,lemma");
		props.setProperty("coref.algorithm", "neural");
		
		// 파이프라인
		StanfordCoreNLP pipeline = new StanfordCoreNLP(props);
		
		// 분석할 문장(뉴스)가 들어갈 객체
		CoreDocument doc = new CoreDocument("Hello, my name is Adam. I have two sisters. I went to California");
		
		// 분석 실행
		pipeline.annotate(doc);
		
		// 문장 분리 테스트
		Iterator<CoreSentence> it = doc.sentences().iterator();
		
		while(it.hasNext()) {
			
			CoreSentence sent = it.next();
			System.out.println(sent.text());
			// 단어 토큰(어절별로 나눈 리스트)
			
			System.out.println(sent.tokens().get(0).originalText());
			// 오리지날 텍스트 = 원래 단어 
			System.out.println(sent.tokens().get(0).index());
			// 단어 원형
			System.out.println(sent.lemmas());
		}
		*/
		
		/*
		int a, b;
		int result;
		
		a = 100;
		b = 50;
		
		result = a + b;
		System.out.println(a + "+" + b + "=" + result);
		
		result = a - b;
		System.out.println(a + "-" + b + "=" + result);
		
		result = a * b;
		System.out.println(a + "*" + b + "=" + result);
		
		result = a / b;
		System.out.println(a + "/" + b + "=" + result);
		*/
		/*
		int a, b;
		int result;
		
		Scanner s = new Scanner(System.in);
		
		System.out.println("첫 번째 숫자를 입력하세요.");
		a = s.nextInt();
		System.out.println("두 번째 숫자를 입력하세요.");
		b = s.nextInt();
		
		result = a + b;
		System.out.println("더한 값은 " + result + "입니다.");
		
		result = a - b;
		System.out.println("뺀 값은 " + result + "입니다.");
		
		result = a * b;
		System.out.println("곱한 값은 " + result + "입니다.");
		
		result = a / b;
		System.out.println("나눈 값은 " + result + "입니다.");
		*/
		
		// 이름, 나이, 성별, 취미를 입력받고 출력해보세요. 깔끔하게
		
		Scanner Scanner = new Scanner(System.in);
		String age = Scanner.nextLine();
	}
}
