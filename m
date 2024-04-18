Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED588AA00F
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Apr 2024 18:32:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rxUgq-0005QD-Dw;
	Thu, 18 Apr 2024 16:32:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <order-update@tepco.co.jp>) id 1rxUgp-0005Q7-G9
 for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Apr 2024 16:32:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MV/lqBcOEBYGKMHBOol6YKGUoVxagWt9ogCI+WcBTtg=; b=CGriUTKl02mRwLZYQtmutY03Iq
 Qodu3MQa/aw+kyZb1PxeDw4WIl731mpF8Ws6mznx97ouwvyc6wFdZ5w2gPg7x4r/Iz3oYsVhAKKqy
 ZClX8bFVj8GU3rIrnreYRTLIQNeNXcBuuqWpRgJUO0Reu9naOZzq6lFcPjx3u6xkgMig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MV/lqBcOEBYGKMHBOol6YKGUoVxagWt9ogCI+WcBTtg=; b=h
 fp1WSk5bARcCMlfea2s3UZjJ/30uZ6JuKDI1T5GADR9oeaRgTCvKszvDzlK0dp8n1VCBJhqMcxR1F
 plRBpQj9quhR4Ans6PjJwZEVxUVODnWw4u6zZzvqdjUZypiYhKjQ+v/JEiR+9BVb4G4OXLGm9XuV4
 xWbSGKkRar9CS+T4=;
Received: from [183.166.147.208] (helo=tepco.co.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1rxUgi-0002vP-3p for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Apr 2024 16:32:47 +0000
Date: Fri, 19 Apr 2024 00:32:28 +0800
From: =?utf-8?B?5p2x5Lqs6Zu75Yqb44Ko44OK44K444O844OR44O844OI44OK44O8?=
 <order-update@tepco.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20240419003236415065@tepco.co.jp>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  このメールは、未払いの電気料金についてご連絡させていただくものです。お手数ですが、以下の内容をご確認いただき、早急にお支払いいただけ�
    [...] 
 
 Content analysis details:   (2.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: mercari.com]
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [183.166.147.208 listed in dnsbl-1.uceprotect.net]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                           [183.166.147.208 listed in bl.score.senderscore.com]
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [183.166.147.208 listed in list.dnswl.org]
  0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  2.0 MIXED_HREF_CASE        Has href in mixed case
  0.0 TVD_SPACE_RATIO_MINFP  Space ratio (vertical text obfuscation?)
X-Headers-End: 1rxUgi-0002vP-3p
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44Gq44GK55+l44KJ44Gb44CR?=
	=?utf-8?b?5pyq5omV44GE44Gu6Zu75rCX5paZ6YeR44Gr44Gk44GE44Gm44GU6YCj?=
	=?utf-8?b?57Wh44GV44Gb44Gm44GE44Gf44Gg44GP44KC44Gu44Gn44GZ44CC44GK?=
	=?utf-8?b?5a6i5qeY44Gu44GK5pSv5omV44GE5pa55rOV44GM5om/6KqN44GV44KM?=
	=?utf-8?b?44G+44Gb44KT?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

44GT44Gu44Oh44O844Or44Gv44CB5pyq5omV44GE44Gu6Zu75rCX5paZ6YeR44Gr44Gk44GE44Gm
44GU6YCj57Wh44GV44Gb44Gm44GE44Gf44Gg44GP44KC44Gu44Gn44GZ44CC44GK5omL5pWw44Gn
44GZ44GM44CB5Lul5LiL44Gu5YaF5a6544KS44GU56K66KqN44GE44Gf44Gg44GN44CB5pep5oCl
44Gr44GK5pSv5omV44GE44GE44Gf44Gg44GR44G+44GZ44KI44GG44GK6aGY44GE55Sz44GX5LiK
44GS44G+44GZ44CCDQrjgYrmlK/miZXjgYTmnJ/pmZA6IDIwMjQvNC8xOQ0K44GK5pSv5omV44GE
44GM56K66KqN44Gn44GN44Gm44GK44KK44G+44Gb44KT44Gu44Gn44CB44GK5pep44KB44Gr44GK
5pSv5omV44GE44GP44Gg44GV44GE44CCDQrjgqrjg7Pjg6njgqTjg7Pjgafjga7jgYrmlK/miZXj
gYQ6IOS7peS4i+OBruODnOOCv+ODs+OCkuOCr+ODquODg+OCr+OBl+OBpuOAgeOCquODs+ODqeOC
pOODs+OBp+OBiuaUr+aJleOBhOOBj+OBoOOBleOBhOOAgg0K4pag44GU5Yip55So56K66KqN44Gv
44GT44Gh44KJDQrigLvmm7TmlrDjga7mnInlirnmnJ/pmZDjga/jgIEyNOaZgumWk+OBp+OBmeOA
gg0K44GK5pSv5omV44GE5YmN44Gr44CB5re75LuY44Gu6KuL5rGC5pu444KS44GU56K66KqN44GE
44Gf44Gg44GN44CB44GK5pSv5omV44GE6YeR6aGN44GM5q2j56K644Gn44GC44KL44GT44Go44KS
44GU56K66KqN44GP44Gg44GV44GE44CCDQrml6LjgavjgYrmlK/miZXjgYTjgYTjgZ/jgaDjgYTj
gZ/loLTlkIjjga/jgIHjgZPjga7jgYrnn6XjgonjgZvjgpLnhKHoppbjgZfjgabjgYTjgZ/jgaDj
gYTjgabntZDmp4vjgafjgZnjgILjgZTkuI3mmI7jgarngrnjgoTjgZTos6rllY/jgYzjgYLjgovl
oLTlkIjjga/jgIHjgYrmsJfou73jgavjgYrllY/jgYTlkIjjgo/jgZvjgY/jgaDjgZXjgYTjgILj
gYrlrqLmp5jjgrXjg53jg7zjg4jjg4Hjg7zjg6DjgYzjgYrmiYvkvJ3jgYTjgYTjgZ/jgZfjgb7j
gZnjgIINCuOBlOWNlOWKm+OBqOOBlOeQhuino+OBq+aEn+isneOBhOOBn+OBl+OBvuOBmeOAguaX
qeacn+OBruOBiuaUr+aJleOBhOOCkuOBiuW+heOBoeOBl+OBpuOBiuOCiuOBvuOBmeOAgg0K57Sg
5pm044KJ44GX44GE5LiA5pel44KS44GK6YGO44GU44GX44GP44Gg44GV44GE44CCDQrlvJXotorj
gZfnlLPovrzlvozjga7lhoXlrrnjga7nhafkvJrjg7vlpInmm7Tjg7vlj5bmtogNCumbu+awl+OD
u+OCrOOCueOBruS9v+eUqOmWi+Wni+ODu+WBnOatouOBruOBiueUs+i+vOOBv+W+jOOBrueiuuiq
je+8iOeFp+S8mu+8ieODu+WkieabtOODu+WPlua2iOOBr+OAgeODgeODo+ODg+ODiOOBp+aJv+OC
iuOBvuOBmeOAgg0K44OB44Oj44OD44OI44GU5Yip55So5pa55rOVDQoxLiDnlLvpnaLlj7PkuIvj
gavooajnpLrjgZXjgozjgovjg4Hjg6Pjg4Pjg4jjga7jgqLjgqTjgrPjg7Pjga7lkLnjgY3lh7rj
gZfjgojjgorjgIHjgIzlvJXotorjgZfnlLPovrzlvozjga7norroqo3jg7vlpInmm7Tjg7vlj5bm
tojjgI3jgpLpgbjmip7jgZnjgosNCuKAu+WQueOBjeWHuuOBl+OBjOihqOekuuOBleOCjOOBquOB
hOWgtOWQiOOBr+OAgeODgeODo+ODg+ODiOOBruOCouOCpOOCs+ODs+OCkuOCr+ODquODg+OCr+OB
l+OAgeODoeODg+OCu+ODvOOCuOWFpeWKm+ashOOBq+OAjOW8lei2iuOBl+eiuuiqjeOAjeOAjOW8
lei2iuOBl+WPlua2iOOAjeOAjOW8lei2iuOBl+WkieabtOOAjeetieOBqOWFpeWKm+OAgg0KMi4g
5Lul6ZmN44Gv44Ks44Kk44OJ44Gu5qGI5YaF44Gr5rK/44Gj44Gm44CB44GU5biM5pyb44Gu44GK
5omL57aa44GN44KS6YG45oqe44GX44CB5b+F6KaB44Gq5oOF5aCx44KS5YWl5YqbDQrigLtXZWLj
gYvjgonjga7jgYrnlLPovrzjgb/jgafjgIExMeahgeOBruWPl+S7mOeVquWPt++8iOOBiueUs+i+
vOOBv+WujOS6huODoeODvOODq+OBq+iomOi8ieOBl+OBpuOBhOOCi1dlYuWPl+S7mOeVquWPt++8
ieOBjOOBlOS4jeaYjuOBquWgtOWQiOOBr+OAjOOCj+OBi+OCieOBquOBhOOAjeOCkumBuOaKnuOB
l+OBpuOBj+OBoOOBleOBhOOAgg0KMS4g5a6a576pDQrmnKzliKnnlKjopo/ntITjgavjgYrjgYTj
gabjgIHku6XkuIvjga7nlKjoqp7jga/jgIHliKXpgJTlrprnvqnjgZXjgozjgabjgYTjgovloLTl
kIjlj4rjgbPmlofohIjkuIrliKXnlbDjgavop6PjgZnjgbnjgY3loLTlkIjjgpLpmaTjgY3jgIHk
u6XkuIvjga7mhI/lkbPjgpLmnInjgZnjgovjgoLjga7jgajjgZfjgb7jgZnjgIINCmh0dHBzOi8v
Y2FyZWVycy5tZXJjYXJpLmNvbS9qcC8NCjIuIOmBqeeUqA0K5pys5p2h44Gu5a6a576p44Gv44CB
5Yil6YCU5a6a576p44GV44KM44Gm44GE44KL5aC05ZCI5Y+K44Gz5paH6ISI5LiK5Yil55Ww44Gr
6Kej44GZ44G544GN5aC05ZCI44KS6Zmk44GN44CB5pys5Yip55So6KaP57SE44Gu44G744GL44CB
44OX44Op44Kk44OQ44K344O844Od44Oq44K344O85Y+K44Gz44Ks44Kk44OJ44Gr44GK44GE44Gm
44KC44CB6YGp55So44GV44KM44KL44KC44Gu44Go44GX44G+44GZ44CCDQpodHRwczovL2Fib3V0
Lm1lcmNhcmkuY29tL3ByZXNzL3ByZXNzLWtpdC9tZXJjYXJpLw0K56ysIDMg5p2hIOacrOimj+e0
hOOBuOOBruWQjOaEj+WPiuOBs+acrOimj+e0hOOBruWkieabtA0KMS4g5pys6KaP57SE44G444Gu
5ZCM5oSP5Y+K44Gz6YGp55SoDQrmnKzopo/ntITjga/jgIHmnKzjgrXjg7zjg5Pjgrnjga7liKnn
lKjjgavplqLjgZnjgovmnaHku7bjgpLjg6bjg7zjgrbjg7zjgajlvIrnpL7jgajjga7plpPjgafl
rprjgoHjgovjgZPjgajjgpLnm67nmoTjgajjgZfjgIHjg6bjg7zjgrbjg7zjgajlvIrnpL7jga7p
lpPjga7mnKzjgrXjg7zjg5Pjgrnjga7liKnnlKjjgavplqLjgo/jgovkuIDliIfjga7plqLkv4Lj
gavpgannlKjjgZXjgozjgb7jgZnjgILjg6bjg7zjgrbjg7zjga/jgIHmnKzopo/ntITjgavlkIzm
hI/jgpLjgZfjgZ/jgYbjgYjjgafjgIHmnKzopo/ntITjga7lrprjgoHjgavlvpPjgaPjgabmnKzj
grXjg7zjg5PjgrnjgpLliKnnlKjjgZnjgovjgoLjga7jgajjgZfjgIHjg6bjg7zjgrbjg7zjga/j
gIHmnKzjgrXjg7zjg5PjgrnjgpLliKnnlKjjgZnjgovjgZPjgajjgavjgojjgormnKzopo/ntITj
gavlkIzmhI/jgpLjgZfjgZ/jgoLjga7jgajjgb/jgarjgZXjgozjgb7jgZnjgIINCmh0dHBzOi8v
aGVscC5qcC5tZXJjYXJpLmNvbS8/X2dsPTEqMXJmOXJhbypfZ2EqTWpBNU9USXpOekkxTGpFM01E
ZzVNREU1T0RBLipfZ2FfNE5MUjdUMkxFTipNVGN3T0Rrek5ETTFOaTR5TGpFdU1UY3dPRGt6TnpR
Mk1TNHhOUzR3TGpBLg0K5p2x5Lqs6Zu75Yqb44Ko44OK44K444O844OR44O844OI44OK44O85qCq
5byP5Lya56S+DQoyNOaZgumWk+e1jOmBjuW+jOOBr+OAgeWGjeW6puOBiuaJi+e2muOBjeOBjOW/
heimgeOBqOOBquOCiuOBvuOBmeOBruOBp+OAgeOBlOazqOaEj+OBj+OBoOOBleOBhOOAggpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
