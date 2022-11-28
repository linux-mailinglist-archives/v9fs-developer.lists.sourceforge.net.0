Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6932C639EEC
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 02:29:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozSxr-00034b-4p;
	Mon, 28 Nov 2022 01:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mail_63840efad53078.96559229@bounce.smtp11gw3.hlhk.net>)
 id 1ozSxp-00034R-Im for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:29:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=echwjYRolm9G2PxDPXZkElaynEIE5ZttL8DKXFYjmSs=; b=mci6KLSMyFKP9ZiWyPpQhKxjcc
 WBrpmim/exJ2jRkOOtEGVQcmD2sudqehQL8PARU1rM4nCWX4IZCRRoSH4PDPVv4WjV03dyW+wWBAH
 S3TsRTWT+reNnsZ8UHKX4N7IK9iXq2sl8t/TiCvvWxo8m8pnqGdetn7w3UZ9CH+WBoo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=echwjYRolm9G2PxDPXZkElaynEIE5ZttL8DKXFYjmSs=; b=T
 oGorwWuyaeFj96u4sq8nyDOjijWSCyayzKMb+1DpZF/L/EdCsdl5tJ8bGEbTWG9ECif5/dCjtmtqr
 Gvosx/y3K1iUmeI/fksRlsHxtG7B4XHDFz/fkRdHXG7FxovKx9rd3C1CfOS7t3zy29NW9a7TM9nv6
 TrsbPP3f+ufi2oYA=;
Received: from [202.181.211.155] (helo=smtp11gw3.hlhk.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1ozSxl-00G3kV-PD for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 01:29:41 +0000
Received: from vm.sms.e-post.com.hk (unknown [117.18.98.182])
 by smtp11gw3.hlhk.net (Postfix) with ESMTPA id E40A01848071
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Nov 2022 09:29:30 +0800 (HKT)
Date: Mon, 28 Nov 2022 09:29:30 +0800
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
From: giftcn <giftcn@yeah.net>
Message-ID: <24LlBNUTn8NmuFZlswetfmad7OghJDG5mv803oVYE@vm.sms.e-post.com.hk>
X-Mailer: PHPMailer 6.5.3 (https://github.com/PHPMailer/PHPMailer)
X-SMTP: smtp11gw3.hlhk.net
MIME-Version: 1.0
DKIM-Signature: v=1; d=dkim; s=dkim;
 a=rsa-sha256; q=dns/txt; t=1669598970; c=relaxed/simple;
 h=Date:To:From:Subject:Message-ID:X-Mailer:MIME-Version:Content-Type;
 z=Date:Mon,=2028=20Nov=202022=2009:29:30=20+0800
 |To:v9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:giftcn=20<giftcn@yeah.net>
 |Subject:=3D?UTF-8?B?5bCI5qWt542O55uDICAgUHJvZmVzc2lvbmFsIFRyb3BoeQ=3D=3D?
 =3D
 |Message-ID:<24LlBNUTn8NmuFZlswetfmad7OghJDG5mv803oVYE@vm.sms.e-post.com.h
 k>
 |X-Mailer:PHPMailer=206.5.3=20(https://github.com/PHPMailer/PHPMailer)
 |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_24LlBNUTn8NmuFZlsw
 etfmad7OghJDG5mv803oVYE";
 bh=1tqcWpHL5RClSFws1ePpjce8SoiGPzP/QR3vYyfKoEs=;
 b=YatDAaefW07Usoj/uBnFe3aeGkm4WSU9kyHKURBGHE14KQcbI0S87oYvwJqGdsKDoIJsZBj/1
 +oV4Yh0cQ14U3VtWX2IyKv77tW8mDukhz8VdXOHenRxJRKsRFJs00DquLQtFYvnndaE6ORH04
 Wf/IlK6biQ292zOSE1zLaNl9E=
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  如閣下未能閱讀此郵件，請按此。 If you can’t
    see the image below, please click here 專業獎盃、獎牌、水晶、運動套裝
    適合企業、團體、學校各大小紀念禮品 查詢電郵 / Email
    : giftcn@yeah.net 
 
 Content analysis details:   (3.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [giftcn[at]yeah.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  1.2 HTML_OBFUSCATE_10_20   BODY: Message is 10% to 20% HTML
                             obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1ozSxl-00G3kV-PD
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5bCI5qWt542O55uDICAgUHJvZmVzc2lvbmFs?=
 =?utf-8?q?_Trophy?=
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

5aaC6Zaj5LiL5pyq6IO96Zax6K6A5q2k6YO15Lu277yM6KuL5oyJ5q2k44CCCiBJZiB5b3UgY2Fu
4oCZdCBzZWUgdGhlIGltYWdlIGJlbG93LCBwbGVhc2UgY2xpY2sgaGVyZQog5bCI5qWt542O55uD
44CB542O54mM44CB5rC05pm244CB6YGL5YuV5aWX6KOdCiAKIOmBqeWQiOS8gealreOAgeWcmOmr
lOOAgeWtuOagoeWQhOWkp+Wwj+e0gOW/teemruWTgQogCiDmn6XoqaLpm7vpg7XCoC8gRW1haWwg
OsKgZ2lmdGNuQHllYWgubmV0CiAKIOmbu+ipsSBUZWxlLiB8IFdoYXRzYXBwIC8gU2lnbmFsIHwg
V2VjaGF0wqA6IDY4MTkyNTI4IC8gNjE4OTgzNDcKIAog5pys5YWs5Y+46Ieq6Kit5bug5oi/LOWw
gualreeCuuWtuOagoeOAgeWcmOmrlOWPiua0u+WLleetluWKg+WFrOWPuOWItuS9nOeNjuebg+OA
geeNjueJjOOAgeawtOaZtuOAgeWYieizk+e0gOW/teWTgeWPiumBi+WLleWll+ijneetieeUouWT
ge+8jOWCmeWtmOacieWOn+ioreioiOeUouWTgeaIluaMieWuouaItuimgeaxguWPiumgkOeul+iy
u+eUqOiAjOioreioiO+8jOmFjeWQiOS4u+mhjO+8jOS7pOa0u+WLleWcqOWujOe+juWPiuS4jei2
heWHuumgkOeul+S4i+mAsuihjOOAguaIkeWAkeWvjOe2k+mpl+eahOioreioiOWSjOWItuS9nOS6
uuWToeWPr+S7pee1puS9oOaPkOS+m+W7uuitsO+8jOiuk+S9oOacieabtOWkmueahOmBuOaTh+OA
guWmguaenOS9oOato+WcqOeCuuS9oOeahOa0u+WLleetluWKg+iAjOiyu+elnu+8jOiri+iBr+e1
oeaIkeWAke+8jOiuk+acquS+hua0u+WLleiuiuW+l+abtOi8lemshi4KIAogV2UgaGF2ZSBvdXIg
b3duIGZhY3RvcnkgaW4gQ2hpbmEsIE91ciBzZXJ2aWNlcyBzcGVjaWFsaXppbmcgaW4gdHJvcGhp
ZXPjgIFtZWRhbHPjgIFjcnlzdGFsIOOAgSBndWVzdHMgc291dmVuaXJzIGFuZCBTcG9ydHN3ZWFy
LCB3ZSBoYXZlIG9yZ2luYWwgZGVzaWduIG9yIGFjY29yZGluZyB0byBjdXN0b21lciByZXF1aXJl
bWVudHMgYW5kIGVzdGltYXRlZCBjb3N0cyBhbmQgZGVzaWduLCBDb29yZGluYXRlIHdpdGggYWN0
aXZpdHkgdGhlbWUsIGV2ZXJ5dGhpbmcgY2FycmllZCBvdXQgaW4gcGVyZmVjdCBhbmQgd2l0aGlu
IGJ1ZGdldCAuIE91ciBleHBlcmllbmNlZCBkZXNpZ25lcnMgY2FuIGdpdmUgeW91IGFkdmljZSBm
b3IgY2hvaWNlLiBBcyB5b3UgYXJlIHRyb3VibGUgaW4gcGxhbm5pbmcgeW91ciBldmVudCwgcGxl
YXNlIGNvbnRhY3QgdXMgdG8gbWFrZSBldmVyeXRoaW5nIGVhc2llciBpbiB0aGUgZnV0dXJlLsKg
wqAKIAogCiAKIOafpeipouabtOWkmuizh+aWmeWPiuWgseWDuSzoq4voga/ntaHCoC8gRm9yIG1v
cmUgaW5mb3JtYXRpb24sIFBsZWFzZSBjb250YWN0IDoKIAog6Zu76YO1wqAvIEVtYWlsIDrCoGdp
ZnRjbkB5ZWFoLm5ldAogCiDpm7voqbEgVGVsZS4gfMKgd2hhdHNhcHAgLyBTaWduYWwgfCBXZWNo
YXQgOiA2ODE5IDI1MjggLyA2MTg5IDgzNDcgKEFuZHkgTGF1KcKg5YqJ5YWI55SfCiAKIOenkemK
mOWvpualreaciemZkOWFrOWPuMKgIENvcmFsYXJ0wqBJbmR1c3RyaWFsIENvbXBhbnkgTGltaXRl
ZAogCiDpppnmuK/ntrLnq5nCoC8gV2Vic2l0ZSA6wqBodHRwczovL2NvcmFsYXJ0aGsud2VlYmx5
LmNvbS8KIAog5pyA5paw55Si5ZOBIC8gTmV3IFByb2R1Y3QgOsKgd3d3LmNvcmFsYXJ0Y24ubmV0
L21vYmlsZQogCiDCoAogCiDlnLDlnYDvvJrpppnmuK/kuZ3pvo3op4DloZjplovmupDpgZM0OeiZ
n+WJteiyv+W7o+WgtDIzMDXlrqQKIAogQWRkcmVzc++8mlVuaXQgMjMwNSwgQXBlYyBQbGF6YSwg
NDkgSG9pIFl1ZW4gUm9hZCwgS3d1biBUb25nLCBIb25nIEtvbmcuCiAKIMKgCiAKIOWmguimgeWP
lua2iOiogumWse+8jOiri+WIsOatpOiZleOAggogSWYgeW91IGRvbuKAmXQgd2lzaCB0byByZWNl
aXZlIG91ciBOZXdzbGV0dGVyLCBwbGVhc2UgY2xpY2sgaGVyZS4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
