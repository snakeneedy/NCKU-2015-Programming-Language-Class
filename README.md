# NCKU-2015-Programming-Language-Class

國立成功大學2015年程式語言課程

## hw01 (perl)

*deadline 2015/04/12 Sun. 22:00*
**作業需求**：使用`Perl`從影城網頁中擷取當日電影的演出時間

### 原始碼規則

#### 戲院名稱

三個網站的格式都一樣：
```html
<span class="at21b">XXX</span>
```
其中`XXX`是戲院的名稱。

#### 電影名稱

這部份格式也都一樣：
```html
<a href="/movie/YYY/">XXX</a>
```
其中`XXX`是電影名稱，`YYY`則是由英文跟數字組成的網頁連結。

#### 時刻表

這部份有兩種，一種是：
```html
<UL>
	<LI>10：40</LI><LI>13：00</LI><LI>15：20</LI>
</UL>
```
另一種是：
```html
<UL>
	<LI>10：40
		</LI>
	<LI>13：00
		</LI>
	<LI>15：20
		</LI>
</UL>
```
其中`<LI>`的數量可能為一個或數個。

### 指定網址

台南國賓影城
http://www.atmovies.com.tw/showtime/theater_t06608_a06.html

台南新光影城
http://www.atmovies.com.tw/showtime/theater_t06607_a06.html

台南威秀影城
http://www.atmovies.com.tw/showtime/theater_t06609_a06.html

## hw02 (lisp)
*deadline 2015/04/26 Sun. 22:00*

### 作業說明

給予一個正整數N，和N個整數，利用**mergesort**算出排序後的結果

### 參考教學與語法

- ANSI Common Lisp 中文翻譯版
http://acl.readthedocs.org/en/latest/
- SBCL User Manual
http://www.sbcl.org/manual/index.html
