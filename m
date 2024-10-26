Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7989B1839
	for <lists+v9fs-developer@lfdr.de>; Sat, 26 Oct 2024 14:54:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t4gJB-0004QY-E2;
	Sat, 26 Oct 2024 12:54:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <MyJcb@craftboxmum.com>) id 1t4gJ9-0004QG-2f
 for v9fs-developer@lists.sourceforge.net;
 Sat, 26 Oct 2024 12:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=boV+KbS+BU2B4oWNzcqGVKwg5r7tpZewDK7lN+TeD8Y=; b=AyGaEDbOa4G/vZFI/pbKNMCYRk
 ItrcHCOrF+FGAxkLgYhwqA8Uh4N038kddRofcLoZGAOH0idoQ0OJLyPWoV5+dJd6Y+/ylipZqmk/5
 1/ccm9shZaJaViQU97ckvXzhTIO2OgNRJIX3r096H25tSZZCodB9wQwYqckC45P/3eek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=boV+KbS+BU2B4oWNzcqGVKwg5r7tpZewDK7lN+TeD8Y=; b=O
 g01YYEMclUHU7AdgQXsBSYyTHcZpSNoBv6S4JQJi8noQsdHjbhigkkKuHUrVlcRlF0o3NWemexSGp
 Wp4ZsaYn+ahU5yXUfDPCPKcu4GIDPLkQgY4vSoEWoh+B+FEJ+KPd+/CKS74B/Lxqum7kc6GRF9+hM
 kuBebndVXThCoSRs=;
Received: from mail5.craftboxmum.com ([107.173.213.58])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4gJ6-0001Lt-UL for v9fs-developer@lists.sourceforge.net;
 Sat, 26 Oct 2024 12:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default;
 d=craftboxmum.com; 
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type;
 i=MyJcb@craftboxmum.com;
 bh=boV+KbS+BU2B4oWNzcqGVKwg5r7tpZewDK7lN+TeD8Y=;
 b=R9QOW6Q1Ff1AoHbUDzD82m2B+c1OBz/b0Ku7Y6+7YMnCQ3E+mr/X3eTZguC7+KP/KgNVdhUjqFQY
 Ajc78//r86RXVQqnl9E600W6idNXS6dPf2M1Urb5E17/CldfAO+IxTZw3cChJ6sN4949/NADOg++
 kEXFS8GtOh2pu77+ZdA=
Date: Sat, 26 Oct 2024 21:33:46 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202410262133538602445@craftboxmum.com>
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  このたびは、JCBカードをご利用いただきありがとうございます。
    ご本人様確認のための認証が行われましたので、お知らせいたします。
    本サービスは、万が一、ご本人様以外による不正ログイン・操作等があった�
    [...] 
 
 Content analysis details:   (8.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: craftboxmum.com]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [107.173.213.58 listed in zen.spamhaus.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: craftboxmum.com]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [107.173.213.58 listed in wl.mailspike.net]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: craftboxmum.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: craftboxmum.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: craftboxmum.com]
X-Headers-End: 1t4gJ6-0001Lt-UL
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
From: MyJCB via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: MyJCB <MyJcb@craftboxmum.com>
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
44GZ44KL44K144O844OT44K544Gn44GZ44CCDQogY3R1ZXNvIGFuenViIGZpcGFpcXEgbGdkbmYg
IA0KKOacrOS6uueiuuiqjeOBruaWueazlSkNCuODnuOCpOODmuODvOOCuOOCiOOCiuacrOS6uuei
uuiqjeOCkuWun+aWveOBmeOCiw0KaHR0cHM6Ly9teS5qY2IuY28uanAvTG9naW4NCiBNWVFNVUcg
U1ZNUCBYTUVYQyBXTkhVTlkgIA0K44GK5b+D5b2T44KK44Gu44Gq44GE5aC05ZCI44KE5LiN5a+p
44Gq54K5562J44GU44GW44GE44G+44GX44Gf44KJ44CB5b6h5pep44KB44Gr56K66KqN44GX44Gm
44GP44Gg44GV44GE44CCDQrvvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ3vvJ3vvJ0NCuKWoOOBlOS+nemgvOOBruiDjOaZryDov5HlubTjgIHopIfpm5HljJbj
g7vpq5jluqbljJbjgZnjgovph5Hono3jgrXjg7zjg5PjgrnjgpLmgqrnlKjjgZfjgZ/jg57jg43j
g7zjg7vjg63jg7zjg7Pjg4Djg6rjg7PjgrDjgoTjg4bjg63jg6rjgrnjg4jjgbjjga7os4fph5Hk
vpvkuI7jga7mnKrnhLbpmLLmraLjgbjjga7lr77lv5zjgYzjgb7jgZnjgb7jgZnph43opoHjgajj
garjgaPjgabjgY3jgabjgYrjgorjgb7jgZnjgIIg5byK56S+44Gr44GK44GN44G+44GX44Gm44Gv
44CB6YeR6J6N5bqB44GK44KI44Gz57WM5riI55Sj5qWt55yB44GM5YWs6KGo44GX44Gm44GE44KL
44CM44Oe44ON44O844O744Ot44O844Oz44OA44Oq44Oz44Kw44GK44KI44Gz44OG44Ot6LOH6YeR
5L6b5LiO5a++562W44Gr6Zai44GZ44KL44Ks44Kk44OJ44Op44Kk44Oz44CN562J44KS6LiP44G+
44GI44CB44GK5a6i44GV44G+44GM5byK56S+44Gr44GU55m76Yyy44GE44Gf44Gg44GE44Gm44GE
44KL5ZCE56iu5oOF5aCx562J44Gr44Gk44GE44Gm44CB54++5Zyo44Gu5oOF5aCx44Gr5pu05paw
44GV44KM44Gm44GE44KL44GL44Gp44GG44GL44KS56K66KqN44GV44Gb44Gm44GE44Gf44Gg44GE
44Gm44GK44KK44G+44GZ44CCIOOBiuWuouOBleOBvuOBq+OBr+OBiuaJi+aVsOOCkuOBiuOBi+OB
keOBmeOCi+OBk+OBqOOBqOOBquOCiuOBvuOBmeOBjOOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOeU
s+OBl+OBguOBkuOBvuOBmeOAgg0KDQrjgZTkuI3mmI7jgarngrnjgoTjgZTos6rllY/jgYzjgZTj
gZbjgYTjgb7jgZfjgZ/jgonjgIHjgYTjgaTjgafjgoLlvIrnpL7jgqvjgrnjgr/jg57jg7zjgrXj
g53jg7zjg4jjgb7jgafjgYrllY/jgYTlkIjjgo/jgZvjgY/jgaDjgZXjgYTjgILov4XpgJ/jgYvj
gaTkuIHlr6fjgavlr77lv5zjgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgIINCiBLWk9lRiBI
TmNUeXBTIEZzdk9lQSByS2N3VGFPTCAgDQrlvJXjgY3ntprjgY3jgIFKQ0Ljgqvjg7zjg4njgpLj
gZTmhJvpoafjgYTjgZ/jgaDjgZHjgb7jgZnjgojjgYbjgYrpoZjjgYTnlLPjgZfkuIrjgZLjgb7j
gZnjgIINCiBDaHJsZ3RucyBLd3R0Y3J3aCBVend6eGloIE1nbm9nbGsgIA0K4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSADQrmoKrlvI/kvJrnpL7jgrjj
gqfjg7zjgrfjg7zjg5Pjg7wNCg0K5p2x5Lqs6YO95riv5Yy65Y2X6Z2S5bGxNS0xLTIyDQrilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIANCsKpSkNCIENv
LiwgTHRkLiAyMDI0DQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by92OWZzLWRldmVsb3Blcgo=
