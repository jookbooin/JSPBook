package webdb.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.util.Date;

import jakarta.servlet.ServletException;

public class BBSItem {
	private int seqNo;         // 순번
    private String title;      // 제목
    private String content;    // 내용
    private String writer;     // 작성자
    private Date date;         // 저장일자
    private Time time;         // 저장시각
    public BBSItem() {
    }
    public void setSeqNo(int seqNo) {
        this.seqNo = seqNo;
    }
    public String getTitle() {
         return title;
    }
    public String getContent() {
         return content;
    }
    public String getWriter() {
         return writer;
    }
    public Date getDate() {
         return date;
    }
    public Time getTime() {
         return time;
    }
    
    /** webdb 접근 메서드 */
    public void readDB() throws ServletException {      // 데이터베이스로부터 게시글을 읽는 메서드
        Connection conn = null;  // mysql 과 연결하는 connection
        Statement stmt = null;  // 쿼리문 시작하기 위한 변수
        
        try {
            //Class.forName("org.apache.commons.dbcp.PoolingDriver");
            //conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
        
        	// java용 드라이버 이름
        	Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL 드라이버 로드
        	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul", "root", "worldcup7!"); // JDBC 연결
        	
            if (conn == null)
                throw new Exception("데이터베이스에 연결할 수 없습니다.");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(
            		"select * from bbs where seqNo = '" + seqNo + "';");
            if (rs.next()) {
                title = rs.getString("title");         // 제목
                content = rs.getString("content");     // 내용
                writer = rs.getString("writer");       // 작성자
                date = rs.getDate("wdate");            // 저장일자
                time = rs.getTime("wtime");            // 저장시각
            }
        }
        catch (Exception e) {
            throw new ServletException(e);
        }
        finally {
            try { 
                stmt.close();
            } 
            catch (Exception ignored) {
            }
            try { 
                conn.close();
            } 
            catch (Exception ignored) {
            }
        }
    }
}
