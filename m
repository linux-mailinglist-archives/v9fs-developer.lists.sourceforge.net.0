Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9DEA01387
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Jan 2025 10:16:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tU0GE-00033Y-NX;
	Sat, 04 Jan 2025 09:15:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <JCB@tujupmujioo.com>) id 1tU0G1-000339-Qy
 for v9fs-developer@lists.sourceforge.net;
 Sat, 04 Jan 2025 09:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=acn2orsatNiI+6BdT9E89SjChRfTohTPD3nP++Zk1xU=; b=b0G0pGPB8hjseYUV4xFqGitu6z
 nRsbU+aooMAFN78WW3YG6Q0CjjbyVYfPTVvh6mF53QcUTVSwQr7Zg6D7qzYNWj2Zw8kWkKZJ23v0k
 NSQ3KKcxG+8h2piz0acg+JTR+FDUuzNdbiRFt4Raos4f8Wh866s5ZY7Grm0LWMIyf2YA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=acn2orsatNiI+6BdT9E89SjChRfTohTPD3nP++Zk1xU=; b=g
 kuj+Eh5LYuvrL82PZheFWOXCFE3aGBTFmOvDHWwZuYu8r/LylW0mTPg9QEy+xekbsT779BmsX9MdS
 v0zsS4s3fm54aLMw0LODvKsHJjSQhER6OrdqSwHHM/qRmAH8gLGxu3BqEWJvjOmwWn9x41GA02Np8
 n5ovQ7YeRtX6arDI=;
Received: from mail1.nfmcjefhssqk.com ([192.227.221.130]
 helo=mail1.tujupmujioo.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tU0Fs-0003KV-Gb for v9fs-developer@lists.sourceforge.net;
 Sat, 04 Jan 2025 09:15:37 +0000
Date: Sat, 4 Jan 2025 18:15:14 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202501041815253230405@tujupmujioo.com>
X-Spam-Score: 5.7 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  平素よりJCBをご利用いただき、誠にありがとうございます
    お客様のセキュリティを最優先に考え、不正利用の防止に努めております。今般、不審なカード利用の可能性が検知されたため、迅速な対応をお願�
    [...] 
 
 Content analysis details:   (5.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
                             [URIs: inqwondair.shop]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [192.227.221.130 listed in zen.spamhaus.org]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [192.227.221.130 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [192.227.221.130 listed in bl.score.senderscore.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: inqwondair.shop]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: inqwondair.shop]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1tU0Fs-0003KV-Gb
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?SkNC44Kr44O844OJ44GM5Yi26ZmQ44GV44KM?=
 =?utf-8?b?44Gm44GE44KL5peo44Gu44GK55+l44KJ44Gb?=
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

DQoNCg0K5bmz57Sg44KI44KKSkNC44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC
44KK44GM44Go44GG44GU44GW44GE44G+44GZDQoNCuOBiuWuouanmOOBruOCu+OCreODpeODquOD
huOCo+OCkuacgOWEquWFiOOBq+iAg+OBiOOAgeS4jeato+WIqeeUqOOBrumYsuatouOBq+WKquOC
geOBpuOBiuOCiuOBvuOBmeOAguS7iuiIrOOAgeS4jeWvqeOBquOCq+ODvOODieWIqeeUqOOBruWP
r+iDveaAp+OBjOaknOefpeOBleOCjOOBn+OBn+OCgeOAgei/hemAn+OBquWvvuW/nOOCkuOBiumh
mOOBhOeUs+OBl+S4iuOBkuOBvuOBmSDjgIINCuOBiuWuouanmOOBruOCq+ODvOODieeVquWPt+OB
jOaCqueUqOOBleOCjOOCi+OBk+OBqOOCkumYsuOBkOOBn+OCgeOBq+OAgeW8iuekvuOBp+OBr+S4
jeato+aknOefpeOCt+OCueODhuODoOOCkuWwjuWFpeOBl+OAgTI05pmC6ZaTMzY15pel5L2T5Yi2
44Gn55uj6KaW44GX44Gm44GE44G+44GZ44CC5LiN5a+p44Gq5Yip55So44GM5qSc55+l44GV44KM
44Gf5aC05ZCIIOOAgeOCq+ODvOODieOBruWIqeeUqOOCkuS4gOaZguWBnOatouOBl+OBpuOAgeOB
iuWuouanmOOBq+mAo+e1oeOCkuWPluOCieOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAgg0KIDY1
NTA5IDc5MjY4IDE2OTczIDc2MDcxOSAgDQrjgZPjga7luqbjgIHkuI3lr6njgarjgqvjg7zjg4nl
iKnnlKjjga7nlpHjgYTjgYzjgYLjgovjgZ/jgoHjgIHjgYrlrqLmp5jjga7jgqvjg7zjg4njga7l
iKnnlKjjgpLkuIDmmYLnmoTjgavlgZzmraLjgZXjgZvjgabjgYTjgZ/jgaDjgYTjgabjgYrjgorj
gb7jgZnjgILjgZTmnKzkurrmp5jjga7liKnnlKjjgafjgYLjgovjgZPjgajjgpLnorroqo3jgZnj
govjgZ/jgoHjgavjgIHnt4og5oCl44Gu5omL57aa44GN44GM5b+F6KaB44Go44Gq44KK44G+44GZ
44CCDQogIOOCq+ODvOODieOBruWIqeeUqOOCkuWGjemWi+OBleOCjOOCi+mam+OBr+OAgeS7peS4
i+OBruODquODs+OCr+OCkuOCr+ODquODg+OCr+OBl+OBpuOCouOCr+OCu+OCueOBl+OAgeW/heim
geOBquaJi+e2muOBjeOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0KIHhyZWRzaCBqZ2Ru
bmMgb3BleXMgY3Z1ZGJ0ICANCuOBlOWIqeeUqOeiuuiqjeOBr+OBk+OBoeOCiQ0KIA0K44Gq44GK
44CB5LiN5a+p44Gq5Yip55So44GM56K66KqN44GV44KM44Gq44GL44Gj44Gf5aC05ZCI44CB5LiA
5pmC5YGc5q2i44Gv6Kej6Zmk44GV44KM44G+44GZ44Gu44Gn44CB44GU5a6J5b+D44GP44Gg44GV
44GE44CC44GK5a6i5qeY44Gu44K744Kt44Ol44Oq44OG44Kj44KS5a6I44KL44Gf44KB44Gr44CB
44GU55CG6Kej44Go44GU5Y2U5Yqb44KS6LOc44KK44G+44GZ44KI44GGIOOBiumhmOOBhOeUs+OB
l+S4iuOBkuOBvuOBmeOAgg0K5L2V44GL44GU6LOq5ZWP44KE44GU5LiN5piO54K544GM44GU44GW
44GE44G+44GX44Gf44KJ44CB6YGg5oWu44Gq44GP44Kr44K544K/44Oe44O844K144Od44O844OI
44G+44Gn44GK5ZWP44GE5ZCI44KP44Gb44GP44Gg44GV44GE44CCDQogRldXV0xUIFlVWFBCQ0Yg
SUZUQkJJIExPRkNBUiAgDQrilqDms6jmhI/kuovpoIUNCg0K4oC744Kr44O844OJ44Gu5YCL5Lq6
5oOF5aCx5qyh56ys44Gn44Gv44CB6Zu76Kmx44Gn44GU6YCj57Wh44GZ44KL44GT44Go44KC44GU
44GW44GE44G+44GZ44CCDQoNCuKAu+ato+eiuuOBquaDheWgseOCkuW/heOBmuOBlOiomOWFpeOB
j+OBoOOBleOBhOOAgg0KIHdmSFVYSEpQIHlSb05JYWsgYXptY213biBVZk5DVG5jICANCuKWoOac
rOS7tuOBq+mWouOBmeOCi+OBiuWVj+OBhOWQiOOCj+OBmw0KDQpKQ0LjgqTjg7Pjg5Xjgqnjg6Hj
g7zjgrfjg6fjg7Pjgrvjg7Pjgr/jg7zjgIA577yaMDBBTe+9njXvvJowMFBN44CA5bm05Lit54Sh
5LyR77yI5bm05pyr5bm05aeL44KS6Zmk44GP77yJDQogSHhxd3NheCBaZ3JqZGduIFh4b3poYmgg
UG1sc3hjeCAgDQrigLvmnKzjgZTmoYjlhoXjgavplqLjgZnjgotF44Oh44O844Or44Gn44Gu44GK
5ZWP44GE5ZCI44KP44Gb44Gv5Y+X44GR5LuY44GR44Gm44GK44KK44G+44Gb44KT44CCDQrvvJ3v
vJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ0NCuagquW8j+S8muekvuOCuOOCp+ODvOOCt+ODvOODk+ODvCAg5p2x5Lqs6YO95riv
5Yy65Y2X6Z2S5bGxNS0xLTIyDQpDb3B5cmlnaHQgSkNCIENvLiwgTHRkLiAyMDI0DQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
