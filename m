Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A1579A4FC
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Sep 2023 09:50:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qfbgf-0005YU-Hh;
	Mon, 11 Sep 2023 07:50:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <supportyhszxu03.com@yhszxu03.com>)
 id 1qfbge-0005YO-Dl for v9fs-developer@lists.sourceforge.net;
 Mon, 11 Sep 2023 07:50:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cn9C/tDsqtl+L93/NWPWxE9suVPbbHH/EpMzmlDbU98=; b=fQEdJN8DnZwcSGbWA2dMXTpt/O
 SRoSLMSYdqXyiPzaMKvEzCLwt/b5RXyrmTn/E+DegOP3369jbIAlwu9kMN3k/XLrzZhPueM69tF0H
 XPEIok2upNLPsU05GtNpFwad+foqND22AkCSQcSYkvT6lO6x327B+mL9rM9Wk9s9iQqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cn9C/tDsqtl+L93/NWPWxE9suVPbbHH/EpMzmlDbU98=; b=m
 pDJjRHaLZC0YCQzDFX5RzRU7l+OJiu+V03hYHTUfngZWTaGQVFSqE1t0334Ssrs3s3K66xILPZ+3u
 7PXZmhr9OyGy32CGu6SkPYU7z9vyfIm3BA+d8egyIvSmPCgtY5aeq+QjpeKmw3io7m0vpP8DjlzIz
 wyGzpcPYWuR/lt7Y=;
Received: from mail5.yhszxu03.com ([91.202.5.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qfbgd-00HaZO-Kd for v9fs-developer@lists.sourceforge.net;
 Mon, 11 Sep 2023 07:50:25 +0000
Date: Mon, 11 Sep 2023 16:50:06 +0900
From: =?UTF-8?B?77yl77y077yj5Yip55So54Wn5Lya44K144O844OT44K5?=
 <news-store@etc-meisai.co.jp>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202309111650123332551@supportyhszxu03.com>
X-Spam-Score: 6.4 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お客様へ ETC利用明細照会サービスをご利用いただきありがとうございます。このメールは、ETC利用明細照会サービス（登録型）にご登録いただいたお客様で�
    [...] 
 
 Content analysis details:   (6.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [91.202.5.66 listed in zen.spamhaus.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: kkm461.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
                             DNS
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of
                             words
X-Headers-End: 1qfbgd-00HaZO-Kd
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?RVRD44K144O844OT44K544GU5Yip55So6ICF?=
 =?utf-8?b?5qeY44G45aSn5YiH44Gq44GK55+l44KJ44Gb?=
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

DQoNCg0K44GK5a6i5qeY44G4DQoNCkVUQ+WIqeeUqOaYjue0sOeFp+S8muOCteODvOODk+OCueOC
kuOBlOWIqeeUqOOBhOOBn+OBoOOBjeOBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAguOB
k+OBruODoeODvOODq+OBr+OAgUVUQ+WIqeeUqOaYjue0sOeFp+S8muOCteODvOODk+OCue+8iOeZ
u+mMsuWei++8ieOBq+OBlOeZu+mMsuOBhOOBn+OBoOOBhOOBn+OBiuWuouanmOOBp+OAgemVt+ac
n+mWk+ODreOCsOOCpOODs+OBleOCjOOBpuOBhOOBquOBhOaWueOBq+mAgeS/oeOBleOCjOOBpuOB
hOOBvuOBmeOAgg0K5LqI5a6a44GV44KM44Gf5Y+W5raI5pel44G+44Gn44Gr44Ot44Kw44Kk44Oz
44G+44Gf44Gv5YCL5Lq65oOF5aCx44Gu5pu05paw44GM44Gq44GE5aC05ZCI44CB44Om44O844K2
44O8SUTjga/oh6rli5XnmoTjgavjgq3jg6Pjg7Pjgrvjg6vjgZXjgozjgb7jgZnjgIINCuKAu0VU
Q+WIqeeUqOaYjue0sOeFp+S8muOCteODvOODk+OCue+8iOeZu+mMsuWei++8ieOBr+OAgeODreOC
sOOCpOODs+OBjDQ1MOaXpemWk+OBquOBhOWgtOWQiOOBq+iHquWLleeahOOBq+OCreODo+ODs+OC
u+ODq+OBleOCjOOBvuOBmeOAgg0KDQol6YCa6KGM5paZ6YeR44CARVRD5Yip55So54Wn5Lya44K1
44O844OT44K544Gn6KGo56S644GV44KM44KL6YCa6KGM5paZ6YeR44Gu5a6a576p44Gv5Yil44Gr
5a6a44KB44G+44GZ44CCDQrjg6bjg7zjgrbjg7xJRO+8mnY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldA0K5LqI5a6a44GV44KM44Gf5Y+W5raI5pel77yaMjAyM+W5tDA55pyIMTPm
l6UNCg0KJe+8kemAsemWk+OBu+OBqeWvneOBn+OBjeOCiuOBrueKtuaFi+OBq+OBquOBo+OBpuOB
hOOBvuOBmeOAgg0KDQrkuojlrprjgZXjgozjgZ/lj5bmtojml6Xjgb7jgafjgavjg63jgrDjgqTj
g7Pjgb7jgZ/jga/lgIvkurrmg4XloLHjga7mm7TmlrDjgYzjgafjgY3jgarjgYTloLTlkIjjga/j
gIHku6XkuIvjga5VUkzjgYvjgonjg63jgrDjgqTjg7PjgZfjgablgIvkurrmg4XloLHjgpLmm7Tm
lrDjgZfjgabjgY/jgaDjgZXjgYTjgILjgZ3jgozjgavjgojjgorjgIHnmbvpjLLjgpLntprjgZHj
govjgZPjgajjgYzjgafjgY3jgb7jgZnjgIINCg0KDQrih5JodHRwczovL3d3dy5ldGMtbWVpc2Fp
LmNvLmpwL2V0Yy9SP2Z1bmNjb2RlPTUwMTk4NTQwMTM2IA0KDQol44GG44Gq5b2x6Z+/44GM6ICD
44GI44KJ44KM44KL44Gn44GX44KH44GG44GL44CCDQrnmbvpjLLjgYzoh6rli5XnmoTjgavjgq3j
g6Pjg7Pjgrvjg6vjgZXjgozjgZ/loLTlkIjjgafjgoLjgIHlho3nmbvpjLLjgZnjgovjgZPjgajj
gafjgrXjg7zjg5PjgrnjgpLlho3luqbliKnnlKjjgafjgY3jgb7jgZnjgIINCuKAu+OBk+OBruOD
oeODvOODq+OBr+mAgeS/oeWwgueUqOOBp+OBmeOAgg0K44GT44Gu44Ki44OJ44Os44K544Gr6YCB
5L+h44GX44Gm44KC6L+U5L+h44Gn44GN44G+44Gb44KT44Gu44Gn44CB44GC44KJ44GL44GY44KB
44GU5LqG5om/44GP44Gg44GV44GE44CCIA0KJeawl+OBjOS7mOOBj+OBqOa0peazouOBjOiHquWI
huOBruebruOBruWJjeOBq+i/q+OBo+OBpuOBhOOBn+OBqOOBhOOBhOOBvuOBmeOAgg0KDQrilIHi
lIHilIHilIHilIHilIHilIENCuKWoCDnmbrooYzogIUNCuKUgeKUgeKUgeKUgeKUgeKUgeKUgQ0K
77yl77y077yj5Yip55So54Wn5Lya44K144O844OT44K55LqL5YuZ5bGADQpFYXN0IE5pcHBvbiBF
eHByZXNzd2F5IENvbXBhbnkgTGltaXRlZCwNCk1ldHJvcG9saXRhbiBFeHByZXNzd2F5IENvbXBh
bnkgTGltaXRlZCANCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdjlmcy1kZXZlbG9wZXIK
