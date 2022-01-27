Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB4949D928
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 04:22:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCvMz-0003LW-01; Thu, 27 Jan 2022 03:22:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Amazonjp-update@euwjqiy.cn>) id 1nCvMx-0003LM-MZ
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:22:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ynDai/p9xQ9g6vQZtwgCPUx/rRXoyUuFgGXMyCRBUnQ=; b=e+JyoUK/99R32bIWOU2kdaTT7V
 p0QGvAuTyaRXFMp7vy1Rqft/hJ3kGa8MuUo2FyU1b5PGSgcmZqOe/M5lWSQR4l7X8Nsfg14g6aGww
 J8PdHbPqjJjMtTEUJliII+krHuABDC5POOEETqtFqIrbP0zBRwCdS94oV5XHlQJXkpg4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ynDai/p9xQ9g6vQZtwgCPUx/rRXoyUuFgGXMyCRBUnQ=; b=c
 R/u1o8gahSImPMhdcKYcTsfaTIO6Kc/PtuJJvoZZ9wrsBrQu1x7PRBwa12dfmvDr1USyn+VlM2pvT
 MKAdkkQfqYcJy9oOThqDx5jejh7Tfza2092d4aIEkjAw73+bNv81z9QN5acXSzlP01Ke11GhtBcT4
 T8NnV8txvuo5MK+s=;
Received: from [134.122.198.200] (helo=euwjqiy.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCvMs-00FVnv-NQ
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:22:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=euwjqiy.cn; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=Amazonjp-update@euwjqiy.cn;
 bh=ynDai/p9xQ9g6vQZtwgCPUx/rRXoyUuFgGXMyCRBUnQ=;
 b=dFswo1g3wV95jMA6P5A/h9tF7fcYRGoD95eICpNBQLVdI9mnjTlw4ICEzGbkhX5uryH7LFPvkQ1C
 T/QTBuxlEgymWlA1Qk4OFXdx4nrcEB0kewAEiUncPM/lxZbXZtqrAFlWlWmoznir8dTAO60kW1Fc
 /bKrfam5eOQnhRZQ8lM=
From: Amazon.co.jp <Amazonjp-update@euwjqiy.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Thu, 27 Jan 2022 11:02:10 +0800
Message-ID: <00eedb31af15$aff66b41$5ad7b152$@htasco>
MIME-Version: 1.0
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お客様のご登録のお支払い方法にエラーが発生しました。
    お支払方法に問題があり、プライム特典をご利用いただけない状況です。
    様 Amazonプライムをご利用いただきありがとうございます。
    プライムへ登録の際に設定いただいたお支払い方法認証の段階にエラーが発生しました。そ�
    [...] 
 
 Content analysis details:   (5.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nCvMs-00FVnv-NQ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W+mHjeimgV3vvJrjgJBBbWF6b27jg5fjg6k=?=
	=?utf-8?b?44Kk44Og5Lya6LK744Gu44GK5pSv5omV44GE5pa55rOV44Gr5ZWP6aGM?=
	=?utf-8?b?44GM44GC44KK44G+44GZ44CR?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
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

44GK5a6i5qeY44Gu44GU55m76Yyy44Gu44GK5pSv5omV44GE5pa55rOV44Gr44Ko44Op44O844GM
55m655Sf44GX44G+44GX44Gf44CCDQoNCg0KDQoNCg0KIA0KDQrjgYrmlK/miZXmlrnms5Xjgavl
lY/poYzjgYzjgYLjgorjgIHjg5fjg6njgqTjg6DnibnlhbjjgpLjgZTliKnnlKjjgYTjgZ/jgaDj
gZHjgarjgYTnirbms4HjgafjgZnjgIIg5qeYDQoNCkFtYXpvbuODl+ODqeOCpOODoOOCkuOBlOWI
qeeUqOOBhOOBn+OBoOOBjeOBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgiDjg5fjg6nj
gqTjg6DjgbjnmbvpjLLjga7pmpvjgavoqK3lrprjgYTjgZ/jgaDjgYTjgZ/jgYrmlK/miZXjgYTm
lrnms5Xoqo3oqLzjga7mrrXpmo7jgavjgqjjg6njg7zjgYznmbrnlJ/jgZfjgb7jgZfjgZ/jgILj
gZ3jga7jgZ/jgoHjgIHnj77lnKjjgIHjgYrlrqLmp5jjgavjga/jg5fjg6njgqTjg6DkvJrlk6Hn
ibnlhbjjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgZHjgb7jgZvjgpPjgILnibnlhbjjgpLjgZTliKnn
lKjjgYTjgZ/jgaDjgY/jgavjga/jgIEg77yT5pel6ZaT5Lul5YaF44Gr44GK5pSv5omV44GE5pa5
5rOV44Gu5YaN55m76Yyy44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CC44GK5a6i5qeY44Gu
44GK5pSv5omV44GE5pa55rOV44Gr44Ki44Kv44K744K5ICBBbWF6b27jg5fjg6njgqTjg6Djgavn
mbvpjLLjgZfjgZ9BbWF6b24uY28uanDjga7jgqLjgqvjgqbjg7Pjg4jjgpLkvb/nlKjjgZfjgabj
grXjgqTjg7PjgqTjg7MgIOeZu+mMsua4iOOBv+OBruOBiuaUr+aJleaJi+auteOBruacieWKueac
n+mZkOOCkuabtOaWsOOAgeOBvuOBn+OBr+aWsOOBl+OBhOaUr+aJleOBhOaJi+auteOCkui/veWK
oOOBl+OAgeOAjOS8muWToeeJueWFuOOBqOOBiuaUr+aJleOBhOaWueazleOBrueiuuiqjeOAjeOD
nOOCv+ODs+OCkuOCr+ODquODg+OCrw0KDQogIOS8muWToeeJueWFuOOBqOOBiuaUr+aJleOBhOaW
ueazleOBrueiuuiqjSAgDQoNCg0K44Ko44Op44O844Gu5Y6f5Zug44Gv5qeY44CF44Gn44GZ44GM
44CB5pys44Ko44Op44O844GM55m655Sf44GZ44KL5L6L44Go44GX44Gm44Gv44CB44GK5pSv5omV
44GE5pa55rOV44Gu5pyJ5Yq55pyf6ZmQ44GM5YiH44KM44Gm44GE44KL5aC05ZCI44GM5aSa44GP
6KaL5Y+X44GR44KJ44KM44G+44GZ44CC6Kmz57Sw44Gu5Y6f5Zug44Gr44Gk44GN44G+44GX44Gm
44Gv44GU55m76Yyy44GE44Gf44Gg44GE44Gf44GK5pSv5omV5omL5q6144Gu5o+Q5L6b5Lya56S+
77yI44Kv44Os44K444OD44OI5Lya56S+562J77yJ44Gr44GK5ZWP5ZCI44Gb5LiL44GV44GE44CC
IA0KDQrvvJPml6XplpPku6XlhoXjgavjgYrmlK/miZXjgYTmlrnms5XjgYzlho3nmbvpjLLjgZXj
gozjgarjgYTloLTlkIjjgIHjgZTnmbvpjLLjga5BbWF6b24g44OX44Op44Kk44Og5Lya5ZOh6LOH
5qC844Gv6Ieq5YuV55qE44Gr44Kt44Oj44Oz44K744Or44GV44KM44G+44GZ44CCDQrku4rlvozj
gajjgoJBbWF6b24uY28uanDjgpLjgojjgo3jgZfjgY/jgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZnj
gIINCg0KDQoNCg0KwqkgMjAyMiBBbWF6b24uY29tLCBJbmMuIG9yIGl0cyBhZmZpbGlhdGVzLiBB
bGwgcmlnaHRzIHJlc2VydmVkLiBBbWF6b24sIA0KQW1hem9uLmNvLmpwLCBBbWF6b24gUHJpbWUs
IFByaW1lIOOBiuOCiOOBs0FtYXpvbi5jby5qcCDjga7jg63jgrTjga9BbWF6b24uY29tLCBJbmMu
DQrjgb7jgZ/jga/jgZ3jga7plqLpgKPkvJrnpL7jga7llYbmqJnjgafjgZnjgIINCkFtYXpvbi5j
b20sIDQxMCBUZXJyeSBBdmVudWUgTi4sIFNlYXR0bGUsIFdBIDk4MTA5LTUyMTAgDQoNCuOBk+OB
ruODoeODg+OCu+ODvOOCuOOBryAg44Gr6YCB5L+h44GV44KM44G+44GX44Gf44CCDQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
