��    8      �  O   �      �  �  �  *   �  o   �  p   Z  #   �     �     	  )   #	  	   M	     W	      s	  ,   �	  $   �	     �	  #   �	     
      :
     [
     {
  #   �
  !   �
     �
     �
       <   -  %   j     �     �  *   �     �          #     <     \  &   {     �     �     �  �   �     �     �     �  H     (   [  E  �  �   �  �  �  -   c  F   �  8   �  -        ?     R     f     z  �  �    N  ?   l  �   �  �   L  0   �       +   4  N   `     �  !   �  3   �  J     7   `  %   �  >   �  "   �  )      2   J  *   }  5   �  1   �  /     9   @  =   z  ?   �  2   �  5   +   *   a   G   �   "   �   ;   �   C   3!  7   w!     �!  7   �!  &   "  "   *"  .   M"  �   |"  %   {#     �#  &   �#  h   �#  ;   C$  �  $  =  1&  Z  o'  K   �*  ^   +  i   u+  V   �+     6,     I,     ],  1   q,            *   %                                              5                                    /       6   4      '       $                ,      )   0      3      2   -   (      8             +                          1      #   &   !   
       	   7             "      .                   killall -l, --list
       killall -V, --version

  -e,--exact          require exact match for very long names
  -I,--ignore-case    case insensitive process name match
  -g,--process-group  kill process group instead of process
  -i,--interactive    ask for confirmation before killing
  -l,--list           list all known signal names
  -q,--quiet          don't print complaints
  -r,--regexp         interpret NAME as an extended regular expression
  -s,--signal SIGNAL  send this signal instead of SIGTERM
  -u,--user USER      kill only process(es) running as USER
  -v,--verbose        report if the signal was successfully sent
  -V,--version        display version information
  -w,--wait           wait for processes to die
     -Z     show SELinux security contexts
     PID    start at this PID; default is 1 (init)
    USER   show only trees rooted at processes of this user

   -Z,--context REGEXP kill only process(es) having context
                      (must precede other arguments)
 %*s USER        PID ACCESS COMMAND
 %s is empty (not mounted ?)
 %s: no process killed
 %s: unknown signal; %s -l lists signals.
 (unknown) Bad regular expression: %s
 Can't get terminal capabilities
 Cannot allocate memory for matched proc: %s
 Cannot find socket's device number.
 Cannot find user %s
 Cannot get UID from process status
 Cannot open /etc/mtab: %s
 Cannot open /proc directory: %s
 Cannot open /proc/net/unix: %s
 Cannot open a network socket.
 Cannot open protocol file "%s": %s
 Cannot resolve local port %s: %s
 Cannot stat %s: %s
 Cannot stat file %s: %s
 Cannot stat mount point %s: %s
 Copyright (C) 1993-2005 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Could not kill process %d: %s
 Error attaching to pid %i
 Internal error: MAX_DEPTH not big enough.
 Invalid namespace name Kill %s(%s%d) ? (y/N)  Kill process %d ? (y/N)  Killed %s(%s%d) with signal %d
 Maximum number of names is %d
 Namespace option requires an argument. No process specification given No processes found.
 No such user name: %s
 PSmisc comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it under
the terms of the GNU General Public License.
For more information about these matters, see the files named COPYING.
 Press return to close
 TERM is not set
 Unknown local port AF %d
 Usage: killall [-Z CONTEXT] [-u USER] [ -eIgiqrvw ] [ -SIGNAL ] NAME...
 Usage: killall [OPTION]... [--] NAME...
 Usage: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 output 8 bit clean streams.
    -n don't display read/write from fd headers.
    -c peek at any new child processes too.
    -d remove duplicate read/writes from the output.
    -V prints version info.
    -h prints this help.

  Press CTRL-C to end output.
 Usage: pidof [ -eg ] NAME...
       pidof -V

    -e      require exact match for very long names;
            skip if the command line is unavailable
    -g      show process group ID instead of process ID
    -V      display version information

 Usage: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | USER ]
       pstree -V
Display a tree of processes.

    -a     show command line arguments
    -A     use ASCII line drawing characters
    -c     don't compact identical subtrees
    -h     highlight current process and its ancestors
    -H PID highlight this process and its ancestors
    -G     use VT100 line drawing characters
    -l     don't truncate long lines
    -n     sort output by PID
    -p     show PIDs; implies -c
    -u     show uid transitions
    -U     use UTF-8 (Unicode) line drawing characters
    -V     display version information
 You can only use files with mountpoint option You cannot search for only IPv4 and only IPv6 sockets at the same time You cannot use the mounted and mountpoint flags together all option cannot be used with silent option. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 skipping partial match %s(%d)
 Project-Id-Version: psmisc 22.5
Report-Msgid-Bugs-To: csmall@small.dropbear.id.au
POT-Creation-Date: 2007-11-04 17:27+1100
PO-Revision-Date: 2007-05-31 18:04+0930
Last-Translator: Clytie Siddall <clytie@riverland.net.au>
Language-Team: Vietnamese <vi-VN@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: LocFactoryEditor 1.6.3b1
        killall -l, --list 		(_liệt kê_)
       killall -V --version 		(_phiên bản_)

  -e,--exact          		cần đến điều khớp _chính xác_ với mọi tên rất dài
  -I,--ignore-case    	_bỏ qua _chữ hoa/thường_ khi khớp tên tiến trình
  -g,--process-group  	buộc kết thúc _nhóm tiến trình_ thay thế tiến trình
  -i,--interactive    		xin xác nhận trước khi buộc kết thúc (_tương tác_)
  -l,--list           		_liệt kê_ mọi tên tín hiệu đã biết
  -q,--quiet          		không hiển thị lời than phiền (_im_)
  -r,--regexp        		giải thích TÊN là _biểu thức chính quy_ nối dài
  -s,--signal TÍN_HIỆU		gởi tín hiệu này thay thế SIGTERM
  -u,--user NG_DÙNG      	buộc kết thúc chỉ những tiến trình đang chạy
							với tư cách _người dùng_ này
  -v,--verbose        	thông báo khi đã gởi tín hiệu
  -V,--version        	hiện thông tin _phiên bản_
  -w,--wait           		_đợi_ tiến trình kết thúc

     -Z     hiện các ngữ cảnh bảo mật kiểu SELinux
     PID    	bắt đầu tại PID này; mặc định là 1 (init)
    USER   hiện chỉ các cây có gốc là tiến trình của _người dùng_ này

   -Z,--context BIỂU_THỨC_CHÍNH _QUY
		buộc kết thúc chỉ những tiến trình có ngữ cảnh
			(phải đi trước các đối số khác)
 %*s NGƯỜI_DÙNG        PID TRUY CẬP LỆNH
 %s trống (lắp chưa?)
 %s: chưa buộc kết thúc tiến trình
 %s: không biết tín hiệu; lệnh « %s -l » liệt kê các tín hiệu
 (không biết) Biểu thức chính quy sai: %s
 Không thể gọi khả năng thiết bị cuối
 Không thể cấp phát bộ nhớ cho tiến trình được khớp: %s
 Không tìm thấy số hiệu thiết bị ổ cắm.
 Không tìm thấy người dùng %s
 Không thể lấy UID từ trạng thái của tiến trình
 Không thể mở </etc/mtab>: %s
 Không thể mở thư mục </proc>: %s
 Không thể mở thư mục </proc/net/unix>: %s
 Không thể mở một ổ cắm mạng.
 Không thể mở tập tin giao thức « %s »: %s
 Không tìm thấy tên cổng cục bộ %s: %s
 Không thể lấy các thông tin về %s: %s
 Không thể lấy các thông tin về tập tin %s: %s
 Không thể lấy các thông tin về điểm lắp %s: %s
 Bản quyền © 1993-2005 Werner Almesberger và Craig Small

 Tác quyền © năm 2007 của Trent Waddington

 Không thể buộc kết thúc tiến trình %d: %s
 Gặp lỗi khi đính kèm đến PID %i
 Lỗi nội bộ : « MAX_DEPTH » (độ sâu tối đa) chưa đủ.
 Tên miền tên không hợp lệ Có buộc kết thúc %s(%s%d) không? (y/n) (có/không)  Có buốc kết thúc tiến trình %d không? (y/N) (có/không)  Mới buộc kết thúc %s(%s%d) với tín hiệu %d
 Số tên tối đa là %d
 Tùy chọn miền tên cần đến một đối số. Chưa nhập đặc tả tiến trình Không tìm thấy tiến trình.
 Không có tên người dùng như vậy: %s
 PSmisc không bảo đảm gì cả.
Đây là phần mềm tự do thì bạn có thể phân phối nó với điều kiện của
Quyền Công Chung Gnu (GPL).
Để tìm thấy thông tin thêm thì hãy xem tập tin có tên COPYING (cách chép)
 Hãy bấm phím Return để đóng
 Chưa lặp TERM
 Không biết cổng cục bộ AF %d
 Cách sử dụng: killall [-Z NGỮ_CẢNH] [-u NGƯỜI_DÙNG] [ -eIgiqrvw ] [ -TÍN_HIỆU ] TÊN...
 Cách sử dụng: killall [ TÙY_CHỌN ]... [--] TÊN...
 Cách sử dụng: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 	xuất luồng sạch 8-bit.
    -n 	khôNg hiển thị đọc/viết từ phần đầu fd.
    -c 	Cũng hé nhìn tiến trình con mới nào.
    -d 	gỡ bỏ đọc/viết trùng ra Dữ liệu xuất.
    -V 	hiển thị thông tin Về phiên bản.
    -h 	Hiển thị trợ giúp này.

  Bấm tổ hợp phím CTRL-C để thôi xuất.
 Cách sử dụng: pidof [ -eg ] TÊN ...
       pidof -V

    -e      cần đến điều khớp _chính xác_ với mọi tên rất dài
	bỏ qua nếu không có dòng lệnh sẵn sàng
    -g      hiện ID của _nhóm_ tiến trình thay thế ID tiến trình
    -V      hiện thông tin _phiên bản_

 Cách sử dụng: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | NGƯỜI_DÙNG]
       pstree -V

Hiện một cây tiến trình.

    -a     	hiện các _đối số_ dòng lệnh
    -A   	sử dụng các ký tự vẽ đờng kiểu _ASCII_
    -c     	không _gọn_ phụ cây trùng
    -h     	_nổi bật_ tiến trình hiện có và các tổ tiên của nó
    -H PID		_nổi bật_ tiến trình này và các tổ tiên của nó
     -G     	sử dụng các ký tự vẽ dòng kiểu VT100
    -l     	không chặt cụt _dòng dài_
    -n     	sắp xếp kết xuất theo PID
    -p     	hiện các PID; ngụ ý  tùy chọn « -c »
    -u	hiện các việc chuyển tiếp _UID
    -U	sử dụng các ký tự vẽ dòng UTF-8
    -V	hiện thông tin _phiên bản_
 Bạn có thể sử dụng chỉ tập tin với tùy chọn điểm lắp Không cho phép bạn tìm kiếm ổ cắm kiểu cả IPv4 lẫn IPv6 đều đồng thời Không cho phép bạn sử dụng cờ kiểu cả « được lắp » lẫn « điểm lắp » đều không cho phép bạn sử dụng chọn « tất cả » với tùy chọn « im ». fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 đang bỏ qua điều khớp bộ phần %s(%d)
 