Prolog
==========

此**README.md**僅為此作業用途之教學，沒有較為高深之程式編寫技巧。

## 使用程式 swipl

	$ swipl
	Welcome to SWI-Prolog (Multi-threaded, 64 bits, Version 6.6.4)
	Copyright (c) 1990-2013 University of Amsterdam, VU Amsterdam
	SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
	and you are welcome to redistribute it under certain conditions.
	Please visit http://www.swi-prolog.org for details.
	
	For help, use ?- help(Topic). or ?- apropos(Word).
	
	?- 

## 文件編寫與執行

範例程式`demo.pl`

```prolog
demo :- write('Hello! Prolog'), nl, halt.
:- initialization(demo).
```

執行

	swipl -q -s demo.pl

輸出

	Hello! Prolog
	

**說明**：<br/>
`demo`可以看成一個function，為`initialization`所呼叫；`write`是輸出到螢幕上；`nl`是換行；`halt`是終止程式。

## 概念

一句敘述可為**事實**和**推斷**

- 事實如`isDad(D, S).`，句意上可想成D是S的爸爸
- 推斷如`isParent(P, S) :- isDad(P, S).`，句意上可想成當P是S的爸爸時，P是S的雙親之一
	- 推斷`:-`後面的條件可不為一，其中以`,`(逗號)連接的視為**and**，以`;`(分號)連接的視為**or**

### and 和 or 補充

- 條件上多個**and**連接的，只要前面出現**false**，後面便不會判斷/執行
- 條件上多個**or**連接的，只要前面出現**true**，後面便不會判斷/執行
- 自己的觀察是：
	- 若**當前的條件為true**時，會尋找最近的and，遇到or則結束<br/>
	如`cond1, cond2; cond3`，若cond1為true，會找到and(`,`)連接的cond2；若cond2也為true，碰到or(`;`)結束
	- 若**當前的條件為false**時，會尋找最近的or，沒有or則結束<br/>
	如`cond1, cond2; cond3`，若cond1為false，會找到or(`,`)連接的cond3；若cond3也為false，沒有or(`;`)結束

## 參考資料

- KuoE0's Dots - Prolog 入門
http://kuoe0.logdown.com/tags/Prolog
- 集美大學計算機工程學院 (個人認為是進階篇)
http://210.34.136.253:8488/AIteach/chapt6.htm
