Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3D3901B5F
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jun 2024 08:42:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sGYj5-0004lA-SE;
	Mon, 10 Jun 2024 06:41:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nhkplus-update@ecy984.com>) id 1sGYj4-0004l3-W8
 for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Jun 2024 06:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UuWlO1UwlKlYRXTyTgbztt/D0ExA7cEpmjmtMkuB64s=; b=m7brA+8QZorXSoE6mJATekAC1e
 1TnkF92TxcMY8q04yrxgkBeozDgmQ3y72HnwAFIxdlz3+M967u0uAdARVZp6acWBWlWOYBg5/8iuk
 9YKNQbhQGJ1dW0KXOUor2WvHFNhbdE7w71WiV0MhEfKnmf5J42sjrSk322o7OTdFsvfQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UuWlO1UwlKlYRXTyTgbztt/D0ExA7cEpmjmtMkuB64s=; b=l
 TWRAT3vJ5Pb6Yth3KrrWfuVojYDU0HYn+C+FcVsgb7RLWRDRI0pyfGTYi8v8n2QLG3XjcppT6K4Vq
 2pVw2MBoCp4DO59zObrNdRpGg1Kzy5lvF8hcZzD08vkK+iFV8O3/Glkm2wffYqBaLhg0jr0hXrVgZ
 YZH1nDidcNdvX4Is=;
Received: from mail3.ecy984.com ([192.227.171.132])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sGYj5-0004MA-CI for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Jun 2024 06:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=ecy984.com; 
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type;
 i=nhkplus-update@ecy984.com;
 bh=UuWlO1UwlKlYRXTyTgbztt/D0ExA7cEpmjmtMkuB64s=;
 b=SkdilXwcn8ulL+rY4054iWQ7qQfho6KfeX8U7zJuVzxbODoJ51iA0JX/m7gSiXPju+6jdIbx47fX
 mXkT5KTQLNwuaDurOT2NCCsiojjOcDaohxWTmbPemMTZswuuYZg/HPY7PRLlG82qhYszGXkYa4i3
 Q6gfDXWfsB9GUi3NwdQ=
Date: Mon, 10 Jun 2024 15:41:34 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202406101541437858885@ecy984.com>
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  NHKのサービスをご利用いただきありがとうございます、
    NHKがNHKプラスにアップグレードされま� [...] 
 
 Content analysis details:   (1.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: nhk.or.jp]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: washminster.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: washminster.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                        [192.227.171.132 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [192.227.171.132 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sGYj5-0004MA-CI
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQTkhL44OX44Op44K544CR44Ki44OD44OX?=
	=?utf-8?b?44Kw44Os44O844OJ44K144O844OT44K544GK55+l44KJ44Gb?=
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
From: =?UTF-8?B?5pel5pys5pS+6YCB5Y2U5Lya77yITkhL44OX44Op44K577yJ?= via
 V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?5pel5pys5pS+6YCB5Y2U5Lya77yITkhL44OX44Op44K577yJ?=
 <nhkplus-update@ecy984.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqDQpOSEvjga7jgrXjg7zjg5PjgrnjgpLjgZTliKnnlKjjgYTjgZ/jgaDj
gY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIEgDQpOSEvjgYxOSEvjg5fjg6njgrnj
gavjgqLjg4Pjg5fjgrDjg6zjg7zjg4njgZXjgozjgb7jgZfjgZ8NCioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCg0K
TkhL44Gu44K144O844OT44K544KS44KI44KK5pyJ5Yq544Gr5rS755So44GZ44KL44Gf44KB44Gr
44Gv44CBDQrjgojjgoroia/jgYTjgrXjg7zjg5PjgrnjgpLmj5DkvpvjgZfjgIHjgrXjg7zjg5Pj
grnlk4Hos6rjgpLlkJHkuIrjgZXjgZvjgovjgZ/jgoHjgasNCk5IS+Wlkee0hOOCkuOCouODg+OD
l+OCsOODrOODvOODieOBmeOCi+W/heimgeOBjOOBguOCiuOBvuOBmQ0K44Ki44OD44OX44Kw44Os
44O844OJ44Gv54Sh5paZ44Gn44CB6L+95Yqg44Gu6LKg5ouF44Gv44GC44KK44G+44Gb44KTDQpO
SEvjgqLjg4Pjg5fjgrDjg6zjg7zjg4njga7lhoXlrrnjgpLku6XkuIvjgavoqqzmmI7jgZXjgZvj
gabjgYTjgZ/jgaDjgY3jgb7jgZkgDQoNCg0KKDEp44OR44K944Kz44Oz44KE44K544Oe44O844OI
44OV44Kp44Oz44CB44K/44OW44Os44OD44OI44Gn44CB57eP5ZCI44OG44Os44OT44KEReODhuOD
rOOBrueVque1hOOCkuaUvumAgeOBqOWQjOaZguOBq+imluiBtOOBp+OBjeOBvuOBmQ0KKDIp57eP
5ZCI44OG44Os44OT44KEReODhuODrOOBrueVque1hOOCkuaUvumAgeW+jOOBi+OCiTHpgLHplpPj
gYTjgaTjgafjgoLoppbogbTjgafjgY3jgb7jgZnjgIIgDQooMynopovpgIPjgZfnlarntYTjgpLj
grjjg6Pjg7Pjg6vjgoTjg4bjg7zjg57liKXjgavkuKbjgbnjgIHnlarntYTjgpLopovjgaTjgZHj
goTjgZnjgY/jgZfjgb7jgZfjgZ8NCig0Keimi+mAg+OBl+eVque1hOOCkuOAgeaXpeS7mOOChOOD
geODo+ODs+ODjeODq+OAgeOCreODvOODr+ODvOODieOBp+aOouOBmeOBk+OBqOOBjOOBp+OBjeOB
vuOBmQ0KTkhLICvjgavjgqLjg4Pjg5fjgrDjg6zjg7zjg4njgZfjgZ/lvozjgIExMuOBi+aciOOB
ruaJi+aVsOaWmeWFjemZpOOCkuaPkOS+m+OBl+OBvuOBmeOAgiANCg0K44GU5LiN5L6/44KS44GK
44GL44GR44GX44Gm55Sz44GX6Kiz44GC44KK44G+44Gb44KT44GM44CBDQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCk5IS+ODl+ODqeOCueOBruOBlOWIqeeUqOaJi+e2muOBjeOBguOCiuOBjOOB
qOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K5Lul5LiL44GuVVJM44KS44Kv44Oq44OD44Kv44GX44CB
5b+F6KaB44Gq6aCF55uu44Gu5YWl5Yqb44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQpo
dHRwczovL3BpZC5uaGsub3IuanAvYWNjb3VudC9yZWdpc3QvaWQvaW5wdXQxLmRvP3JlY2VpcHRp
ZD1oeGp0cnVraw0KDQoNCuWbm+OBpOOCk+OBsOOBhOOBq+OBquOBo+OBpuOAgeOBiuOBuOOBneOC
kuW8leOBjei+vOOCgOOCiOOBhuOBq+OBl+OBpuOBiuOBquOBi+OBq+WKm+OCkuWFpeOCjOOBvuOB
meOAgg0KDQo9PT09PT09PT09DQrmnKzjg6Hjg7zjg6vjga/ph43opoHjgarjgYrnn6XjgonjgZvj
ga7jgZ/jgoHjgIHphY3kv6HlgZzmraLjga/jgafjgY3jgb7jgZvjgpPjgIINCuacrOODoeODvOOD
q+OBr+mFjeS/oeWwgueUqOOBruOCouODieODrOOCueOBi+OCieOBiumAgeOCiuOBl+OBpuOBiuOC
iuOBvuOBmeOAgg0K5pys44Oh44O844Or44Gr6L+U5L+h44GE44Gf44Gg44GE44Gm44KC44CB44GK
5ZWP5ZCI44Gb44Gr44GK562U44GI44GZ44KL44GT44Go44GM44Gn44GN44G+44Gb44KT44CCIA0K
44KS44GU5oyH5a6a44Gu44GG44GI44CB44Ki44Kv44K744K544GX44Gm44GP44Gg44GV44GE77yJ
DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCkNvcHlyaWdodCBOSEsgKEphcGFuIEJyb2FkY2Fz
dGluZyBDb3Jwb3JhdGlvbikgQWxsIHJpZ2h0cyByZXNlcnZlZC4NCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSANCuOBvuOBn+OAgemhnuS8vOOBruS4jeWvqeODoeODvOODq+OBjOmAgeS/oeOBleOC
jOOCi+WPr+iDveaAp+OBjOOBguOCiuOBvuOBmeOBruOBp+OAgeW8leOBjee2muOBjeOBlOazqOaE
j+OBj+OBoOOBleOBhOOBvuOBmeOCiOOBhuOBiumhmOOBhOiHtOOBl+OBvuOBmeOAgg0KDQoNCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
