Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3A94BCFDF
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Feb 2022 17:31:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nLp7o-00031X-TQ; Sun, 20 Feb 2022 16:31:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@sgnagw.cn>) id 1nLp7o-00031Q-CF
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Feb 2022 16:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bhmBvtWYoqGrDnWnTQ93cxxzwljoZl/EXjTz3T5KMaI=; b=JeIkT6/etsy8dn3bzGF/aKAulA
 JosA/xad8YvsWnKjQ+v0O9DlOQ8JVOJEzd+JqsHdW72/y33hd1d0ShakrPZm5392mBQ65W/+jafF6
 ZnIjmi9axOfB4KNIrTsjFtffAmDGK9kCBqNoTKJE0/an+O/lHODX4EAah+JrMINFrJck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bhmBvtWYoqGrDnWnTQ93cxxzwljoZl/EXjTz3T5KMaI=; b=i
 KdvqVuWSekC/K0HwgNLZudm4JjKoxffKBue/h/RmGNEap+tPUOAiPuC/D/t6EGSxwe/gKmyLcrpnc
 PXLjpeNzCT1N+skE1ux3ycCfUIC6EftI1DcegHdNIGFr9Pp+oQ8PxKxLv0z1T2jYcFBrOnb6ejYQY
 agli/pilELkxzIug=;
Received: from [139.198.117.90] (helo=mail.sgnagw.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nLp7k-0007cS-LQ
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Feb 2022 16:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=sgnagw.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@sgnagw.cn;
 bh=bhmBvtWYoqGrDnWnTQ93cxxzwljoZl/EXjTz3T5KMaI=;
 b=f072O8NATuL1HydJjVaa09mJJJEW0ntkqMtgSajxs1RqJ/oRguP0lDVQ+rur44anGCPX6PLdTDWt
 HglBDOwzHfjaNjMulnC4nJWIImOXWgWV9pxHKgSySnZRWC3f1grbwElto3xIXt7sMxdTd6kHeBrj
 /T5bSWCUu6uJBYxKoBo=
Date: Mon, 21 Feb 2022 00:16:01 +0800
From: "Amazon" <support-amazon.jp@sgnagw.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220221001610053217@sgnagw.cn>
Mime-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazon お客様 平素は Amazon.co.jpをご利用いただき、誠にありがとうございます。
    ご利用の Amazon.co.jpアカウントで異常な活動が検出されたため、アカウ
    [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1nLp7k-0007cS-LQ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?44Gu5Yip55So54q25rOB44KS44GU56K66KqN44GP44Gg44GV44GE44CC?=
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

DQoNCg0KDQpBbWF6b24g44GK5a6i5qeYDQrlubPntKDjga8gQW1hem9uLmNvLmpw44KS44GU5Yip
55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CC
DQrjgZTliKnnlKjjga4gQW1hem9uLmNvLmpw44Ki44Kr44Km44Oz44OI44Gn55Ww5bi444Gq5rS7
5YuV44GM5qSc5Ye644GV44KM44Gf44Gf44KB44CB44Ki44Kr44Km44Oz44OI44KS5LiA5pmC5L+d
55WZ44Gr44GX44CB5L+d55WZ5Lit44Gu44GU5rOo5paH44KE44K144OW44K544Kv44Oq44OX44K3
44On44Oz44KS44Kt44Oj44Oz44K744Or44GE44Gf44GX44G+44GX44Gf44CCDQrjgq/jg6zjgrjj
g4Pjg4jjgqvjg7zjg4njga7nm5fpm6PjgpLpmLLjgZDjgZ/jgoHjgIHjg63jgrDjgqTjg7Plvozj
gZnjgZDjgavmg4XloLHjgpLmm7TmlrDjgZfjgabjgY/jgaDjgZXjgYTjgIINCuOBguOBquOBn+OB
jDI05pmC6ZaT5Lul5YaF44Gr56K66KqN44Gn44GN44Gq44GE5aC05ZCI44Gv55Sz44GX6Kiz44GC
44KK44G+44Gb44KT44CC44GC44Gq44Gf44Gu6LKh55Sj44Gu5a6J5YWo44Gu44Gf44KB44Gr44CB
44GT44Gu44Ki44Kr44Km44Oz44OI44Gu5L2/55So44KS5Yi26ZmQ44GX44G+44GZ44CC44GC44KJ
44GL44GY44KB44GU55CG6Kej44GP44Gg44GV44GE44CCDQrmnKzku7bjgavjgaTjgYTjgabjgZTo
v7fmg5HjgpLjgYrjgYvjgZHjgZfjgb7jgZfjgZ/jgZPjgajjgpLjgYroqavjgbPnlLPjgZfkuIrj
gZLjgb7jgZnjgIINCuS9leWNkuOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOeUs+OBl+S4iuOBkuOB
vuOBmeOAgg0KDQrjgYrlrqLmp5jjga4gQW1hem9uIOOCouOCq+OCpuODs+ODiA0KQW1hem9u44OB
44O844Og44Gv44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI44Gu54q25oWL44GM55Ww5bi444Gn
44GC44KL44GT44Go44KS55m66KaL44GX44G+44GX44Gf44CC44Ki44Kr44Km44Oz44OI5omA5pyJ
5qip44Gu6Ki85piO44KS44GU6Ieq6Lqr44Gn6KGM44GG5aC05ZCI44Gv44CBQW1hem9uIOeuoeeQ
huOCs+ODs+OCveODvOODq+OBq+ODreOCsOOCpOODs+OBl+OAgeaJgOWumuOBruaJi+mghuOBp+OB
iuaJi+e2muOBjeOBj+OBoOOBleOBhOOAgg0K54q25oWLOiANCueVsOW4uOOBr+abtOaWsOW+heOB
oeOBp+OBmQ0K44Ki44Kr44Km44Oz44OI44KS56K66KqN44GZ44KLDQoNCg0KDQoNCg0KDQoNCkFt
YXpvbi5jby5qcOOBruOBvuOBn+OBruOBlOWIqeeUqOOCkuOBiuW+heOBoeOBl+OBpuOBiuOCiuOB
vuOBmeOAgg0KDQoNCg0KDQrCqSAxOTk2LTIwMjIsIEFtYXpvbi4gSW5jLiBvciBpdHMgYWZmaWxp
YXRlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2
ZWxvcGVyCg==
