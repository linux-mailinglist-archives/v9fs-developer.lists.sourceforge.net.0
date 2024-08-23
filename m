Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A252595C311
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Aug 2024 04:00:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1shJbV-0003WV-T3;
	Fri, 23 Aug 2024 02:00:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <myjcb@aombkygklohk.com>) id 1shJbT-0003WN-Sc
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Aug 2024 02:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eJKOIOv0SBrdno7EEWxHqDygQjFLl5w0dzqfonatgI=; b=JMqtHiCHlqMn3jwtdgh5BT6FXW
 yF4UPjJKQydcWCQFHf2MqB/cin0S7WG2U+6dSAqkFBYNP/ChRs7lH54Zw4P10tcvKiTXLW+0/HXWh
 XrZlyV0lKwopirAeAP1cjDKIu7XaVkEzIL9OMl0tfpH3REH2uosrJyJKPFn9ntxpJRrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/eJKOIOv0SBrdno7EEWxHqDygQjFLl5w0dzqfonatgI=; b=B
 2zk3raTHH3vnKxySFqaW4m4kgJAdDLwm/vAyvtEfMVw3YeukwQg88lSjC1fyITlOvu0vgwCUTwhdc
 6l47XzQ/ZQs2mtLqymapWXwf2qvbw9CvnYRmE6EZTKCX2DLXj7yWsh0C0Vlk9BTXOq2Ua+A3uoVxC
 IO+Mq2YFmXqt4UoA=;
Received: from mail4.aombkygklohk.com ([104.168.35.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1shJbS-0005ig-0P for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Aug 2024 02:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default;
 d=aombkygklohk.com; 
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type;
 i=myjcb@aombkygklohk.com;
 bh=/eJKOIOv0SBrdno7EEWxHqDygQjFLl5w0dzqfonatgI=;
 b=IkXYFJmuvecMd9xnL2losaFEAvWjGh47DcXysJBJWrVchoAfZWo43iETPlngNMnDYE2gsmKX/eMN
 HVJsA+YChn66kWLn8gsUat5Yd18TMdP3b1v+GnDbXGOVVn++k0HzOyl3g7olepjc9fihMmnUkA8h
 y99ducxgOIDgar/Rc00=
Date: Fri, 23 Aug 2024 11:00:22 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202408231100323360075@aombkygklohk.com>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  このたびは、JCBカードをご利用いただきありがとうございます。
    ご本人様確認のための認証が行われましたので、お知らせいたします。
    本サービスは、万が一、ご本人様以外による不正ログイン・操作等があった�
    [...] 
 
 Content analysis details:   (-3.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: jcb.co.jp]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: pattyrbenson.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: pattyrbenson.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [104.168.35.10 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [104.168.35.10 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [104.168.35.10 listed in sa-accredit.habeas.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1shJbS-0005ig-0P
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
Reply-To: MyJCB <myjcb@aombkygklohk.com>
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
44GZ44KL44K144O844OT44K544Gn44GZ44CCDQogY1dNR3ogT3JVSFAgbFh5S3dPIFljcm1vQiAg
DQoo5pys5Lq656K66KqN44Gu5pa55rOVKQ0K44Oe44Kk44Oa44O844K444KI44KK5pys5Lq656K6
6KqN44KS5a6f5pa944GZ44KLDQpodHRwczovL215LmpjYi5jby5qcC9Mb2dpbg0KIEZBSE5PVkwg
T0pDV1dURUQgS1dUV0ZQVUUgU1pTREdJVlkgIA0K44GK5b+D5b2T44KK44Gu44Gq44GE5aC05ZCI
44KE5LiN5a+p44Gq54K5562J44GU44GW44GE44G+44GX44Gf44KJ44CB5b6h5pep44KB44Gr56K6
6KqN44GX44Gm44GP44Gg44GV44GE44CCDQrvvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ0NCuKWoOOBlOS+nemgvOOBruiDjOaZryDov5HlubTjgIHo
pIfpm5HljJbjg7vpq5jluqbljJbjgZnjgovph5Hono3jgrXjg7zjg5PjgrnjgpLmgqrnlKjjgZfj
gZ/jg57jg43jg7zjg7vjg63jg7zjg7Pjg4Djg6rjg7PjgrDjgoTjg4bjg63jg6rjgrnjg4jjgbjj
ga7os4fph5HkvpvkuI7jga7mnKrnhLbpmLLmraLjgbjjga7lr77lv5zjgYzjgb7jgZnjgb7jgZnp
h43opoHjgajjgarjgaPjgabjgY3jgabjgYrjgorjgb7jgZnjgIIg5byK56S+44Gr44GK44GN44G+
44GX44Gm44Gv44CB6YeR6J6N5bqB44GK44KI44Gz57WM5riI55Sj5qWt55yB44GM5YWs6KGo44GX
44Gm44GE44KL44CM44Oe44ON44O844O744Ot44O844Oz44OA44Oq44Oz44Kw44GK44KI44Gz44OG
44Ot6LOH6YeR5L6b5LiO5a++562W44Gr6Zai44GZ44KL44Ks44Kk44OJ44Op44Kk44Oz44CN562J
44KS6LiP44G+44GI44CB44GK5a6i44GV44G+44GM5byK56S+44Gr44GU55m76Yyy44GE44Gf44Gg
44GE44Gm44GE44KL5ZCE56iu5oOF5aCx562J44Gr44Gk44GE44Gm44CB54++5Zyo44Gu5oOF5aCx
44Gr5pu05paw44GV44KM44Gm44GE44KL44GL44Gp44GG44GL44KS56K66KqN44GV44Gb44Gm44GE
44Gf44Gg44GE44Gm44GK44KK44G+44GZ44CCIOOBiuWuouOBleOBvuOBq+OBr+OBiuaJi+aVsOOC
kuOBiuOBi+OBkeOBmeOCi+OBk+OBqOOBqOOBquOCiuOBvuOBmeOBjOOAgeOCiOOCjeOBl+OBj+OB
iumhmOOBhOeUs+OBl+OBguOBkuOBvuOBmeOAgg0KDQrjgZTkuI3mmI7jgarngrnjgoTjgZTos6rl
lY/jgYzjgZTjgZbjgYTjgb7jgZfjgZ/jgonjgIHjgYTjgaTjgafjgoLlvIrnpL7jgqvjgrnjgr/j
g57jg7zjgrXjg53jg7zjg4jjgb7jgafjgYrllY/jgYTlkIjjgo/jgZvjgY/jgaDjgZXjgYTjgILo
v4XpgJ/jgYvjgaTkuIHlr6fjgavlr77lv5zjgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgIIN
CiB6dWljIHhxaGJ5aCBvYnFzbiBqc2dnICANCuW8leOBjee2muOBjeOAgUpDQuOCq+ODvOODieOC
kuOBlOaEm+mhp+OBhOOBn+OBoOOBkeOBvuOBmeOCiOOBhuOBiumhmOOBhOeUs+OBl+S4iuOBkuOB
vuOBmeOAgg0KIDg2MjA3MTIgMDQ5MjAzIDQ2NDY1OCAwNzk4MjYgIA0K4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSADQrmoKrlvI/kvJrnpL7jgrjjgqfj
g7zjgrfjg7zjg5Pjg7wNCg0K5p2x5Lqs6YO95riv5Yy65Y2X6Z2S5bGxNS0xLTIyDQrilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIANCsKpSkNCIENvLiwg
THRkLiAyMDI0DQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=
