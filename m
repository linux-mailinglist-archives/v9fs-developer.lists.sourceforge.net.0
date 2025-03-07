Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D57F5A56429
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Mar 2025 10:43:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tqUF1-00038G-NH;
	Fri, 07 Mar 2025 09:43:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <JCB@plagicvism.sbs>) id 1tqUF0-00038A-HO
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Mar 2025 09:43:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XNH8DPJumwt83yhAIbAeXhxvGnGqdYDnbpjoFLr2/hc=; b=UUmEZRogNucBhAwatC71rRZaSR
 DLJw0DLjKdnrl0ZkmAdn38LPf2JhsmOkl3gKYOdxhjHKIfIhEySINKcjqLdUJLpSeVUfAzAqJxIW3
 zbvNelDPOt4PwkyMX10KySH99cs98Deee8R9vtV9gagCEFdMbCYQ/GE7/h25O8QVDrg8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XNH8DPJumwt83yhAIbAeXhxvGnGqdYDnbpjoFLr2/hc=; b=g
 8vAWt1KzQg1hMnS1ih9+Q7wAtqKO86hw91ntJFyzN7VtELa2+iHBIks/OYEAUj7cYhQehVMIgfK9G
 nptgthZqcFCasNgo18OT2hdSsxUt22lSgT/Zd2Y42x3eSCtYg6+WkRw2hfi+DMlL8IJbO//CEKwSv
 0KrtaehOtkW2dqMw=;
Received: from mail6.plagicvism.sbs ([23.95.129.87])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tqUEq-0008G4-6Y for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Mar 2025 09:43:38 +0000
Date: Fri, 7 Mar 2025 18:43:07 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202503071843170846852@plagicvism.sbs>
X-Spam-Score: 4.6 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  このたびは、JCBカードをご利用いただきありがとうございます。
    ご本人様確認のための認証が行われましたので、お知らせいたします。
    本サービスは、万が一、ご本人様以外による不正ログイン・操作等があった�
    [...] 
 
 Content analysis details:   (4.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: sphxenite.sbs]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [23.95.129.87 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [23.95.129.87 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: sphxenite.sbs]
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1tqUEq-0008G4-6Y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQTXkgSkNC44CR44GU5Yip55So56K66KqN?=
 =?utf-8?b?44Gu44GK6aGY44GE?=
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
From: JCB via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: JCB <mail@qa.jcb.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0K44GT44Gu44Gf44Gz44Gv44CBSkNC44Kr44O844OJ44KS44GU5Yip55So44GE44Gf44Gg
44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCuOBlOacrOS6uuanmOeiuuiq
jeOBruOBn+OCgeOBruiqjeiovOOBjOihjOOCj+OCjOOBvuOBl+OBn+OBruOBp+OAgeOBiuefpeOC
ieOBm+OBhOOBn+OBl+OBvuOBmeOAgg0K5pys44K144O844OT44K544Gv44CB5LiH44GM5LiA44CB
44GU5pys5Lq65qeY5Lul5aSW44Gr44KI44KL5LiN5q2j44Ot44Kw44Kk44Oz44O75pON5L2c562J
44GM44GC44Gj44Gf5aC05ZCI44Gr44CB44GK5a6i5qeY44GM6YCf44KE44GL44Gr56K66KqN44Gn
44GN44KL44KI44GG44CB6L+95Yqg6KqN6Ki844Gu6YO95bqm44CB44Oh44O844Or44KS6YCB5L+h
44GZ44KL44K144O844OT44K544Gn44GZ44CCDQogU2VRSCBkb2NpIENZV2ggWW95UCAgDQoo5pys
5Lq656K66KqN44Gu5pa55rOVKQ0K44Oe44Kk44Oa44O844K444KI44KK5pys5Lq656K66KqN44KS
5a6f5pa944GZ44KLDQpodHRwczovL215LmpjYi5jby5qcC9Mb2dpbg0KIHRGTkwgTnZUIFJYWCBF
U1IgIA0K44GK5b+D5b2T44KK44Gu44Gq44GE5aC05ZCI44KE5LiN5a+p44Gq54K5562J44GU44GW
44GE44G+44GX44Gf44KJ44CB5b6h5pep44KB44Gr56K66KqN44GX44Gm44GP44Gg44GV44GE44CC
DQrvvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ0N
CuKWoOOBlOS+nemgvOOBruiDjOaZryDov5HlubTjgIHopIfpm5HljJbjg7vpq5jluqbljJbjgZnj
govph5Hono3jgrXjg7zjg5PjgrnjgpLmgqrnlKjjgZfjgZ/jg57jg43jg7zjg7vjg63jg7zjg7Pj
g4Djg6rjg7PjgrDjgoTjg4bjg63jg6rjgrnjg4jjgbjjga7os4fph5HkvpvkuI7jga7mnKrnhLbp
mLLmraLjgbjjga7lr77lv5zjgYzjgb7jgZnjgb7jgZnph43opoHjgajjgarjgaPjgabjgY3jgabj
gYrjgorjgb7jgZnjgIIg5byK56S+44Gr44GK44GN44G+44GX44Gm44Gv44CB6YeR6J6N5bqB44GK
44KI44Gz57WM5riI55Sj5qWt55yB44GM5YWs6KGo44GX44Gm44GE44KL44CM44Oe44ON44O844O7
44Ot44O844Oz44OA44Oq44Oz44Kw44GK44KI44Gz44OG44Ot6LOH6YeR5L6b5LiO5a++562W44Gr
6Zai44GZ44KL44Ks44Kk44OJ44Op44Kk44Oz44CN562J44KS6LiP44G+44GI44CB44GK5a6i44GV
44G+44GM5byK56S+44Gr44GU55m76Yyy44GE44Gf44Gg44GE44Gm44GE44KL5ZCE56iu5oOF5aCx
562J44Gr44Gk44GE44Gm44CB54++5Zyo44Gu5oOF5aCx44Gr5pu05paw44GV44KM44Gm44GE44KL
44GL44Gp44GG44GL44KS56K66KqN44GV44Gb44Gm44GE44Gf44Gg44GE44Gm44GK44KK44G+44GZ
44CCIOOBiuWuouOBleOBvuOBq+OBr+OBiuaJi+aVsOOCkuOBiuOBi+OBkeOBmeOCi+OBk+OBqOOB
qOOBquOCiuOBvuOBmeOBjOOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOeUs+OBl+OBguOBkuOBvuOB
meOAgg0KDQrjgZTkuI3mmI7jgarngrnjgoTjgZTos6rllY/jgYzjgZTjgZbjgYTjgb7jgZfjgZ/j
gonjgIHjgYTjgaTjgafjgoLlvIrnpL7jgqvjgrnjgr/jg57jg7zjgrXjg53jg7zjg4jjgb7jgafj
gYrllY/jgYTlkIjjgo/jgZvjgY/jgaDjgZXjgYTjgILov4XpgJ/jgYvjgaTkuIHlr6fjgavlr77l
v5zjgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgIINCiBDaGYgbFBOQyBId1IgTUZRaiAgDQrl
vJXjgY3ntprjgY3jgIFKQ0Ljgqvjg7zjg4njgpLjgZTmhJvpoafjgYTjgZ/jgaDjgZHjgb7jgZnj
gojjgYbjgYrpoZjjgYTnlLPjgZfkuIrjgZLjgb7jgZnjgIINCiBEWnJyIHd3UEUgTkppWCBBTUtv
ICANCuKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgA0K
5qCq5byP5Lya56S+44K444Kn44O844K344O844OT44O8DQoNCuadseS6rOmDvea4r+WMuuWNl+md
kuWxsTUtMS0yMg0K4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSADQrCqUpDQiBDby4sIEx0ZC4gMjAyNQ0KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
