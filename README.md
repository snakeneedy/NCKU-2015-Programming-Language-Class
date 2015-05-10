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

## hw03 (prolog)

### 參考資料

- KuoE0's Dots - Prolog 入門
http://kuoe0.logdown.com/tags/Prolog
- 集美大學計算機工程學院 (個人認為是進階篇)
http://210.34.136.253:8488/AIteach/chapt6.htm

### Problem 1 - Lowest Common Ancestor

#### 作業說明

給予節點數與節點之間相對的祖先關係(Ancestor)後，找尋某兩點間的最低位階的共同祖先(Lowest Common Ancestor, 簡稱 LCA)。

#### 輸入範例

	6
	1 2
	2 3
	1 4
	4 5
	4 6
	3
	3 4
	5 6
	1 2

**輸入說明**：第一個數字N(範例N=6)表示總共有幾個節點，編號由1~N，接下來會出現由兩個數字A, B組成的N-1行，表示A是B的祖先(即編號1為編號2的祖先)；接著會輸入一個數字M，表示有M行詢問句，每行由兩個數字K, L組成，要找出K和L的最低階共同祖先(LCA)。

#### 範例輸出

	1
	4
	1

#### 範例圖解與說明

範例輸入的祖先關係如下圖

	    1
	   / \
	  2   4
	 /   / \
	3   5   6

其中編號3跟4的祖先只有**1**；5跟6的祖先有1和4，但4相對低階，故選**4**；1即為2的祖先，其共同祖先故為**1**

