Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D14F51EB18
	for <lists+v9fs-developer@lfdr.de>; Sun,  8 May 2022 04:49:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nnWzZ-0007K2-Br; Sun, 08 May 2022 02:49:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <takamasa@cathand.com>) id 1nnWzW-0007Jr-87
 for v9fs-developer@lists.sourceforge.net; Sun, 08 May 2022 02:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OFaOyJHS8RNmRYhzp7anZT/e3AW+1hh8naBS7ngeD4I=; b=M/PTg+5YQ+O4dx9O5fJGnSDq2x
 oJp2jJq4NT2/Ru82by0KzplXKaudliVJNgKWPsayj4z2vbKbhHeJBerU+OpJXID8ll+BWgctoPvmD
 zrdw7ol7tfb5kJpCoHBV0OgNGzpvazIB/1LBVdaK9BKh2nfoEsyVMlAyo9n4/lVJ1Cic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OFaOyJHS8RNmRYhzp7anZT/e3AW+1hh8naBS7ngeD4I=; b=l
 fu1QaSUuYRjsExdm0hQNAl70Jv3uZrSCRSa0EdZP/82OtgpDpTeRXKNQQ78wmqYlMaNxGwegBRyAW
 eIYRB3somFXUMucomROh/rX+PEJqlD8It2PgJGD9/7SLT3KqNkY2gpNJBzPoEqsuzwoCzVr5RUgRh
 pA2TSV3C9enA7uSY=;
Received: from ik1-309-14848.vs.sakura.ne.jp ([153.126.147.102]
 helo=mail.cathand.com) by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nnWzR-0006QD-RD
 for v9fs-developer@lists.sourceforge.net; Sun, 08 May 2022 02:49:49 +0000
Received: from PC293 (unknown [112.132.123.108])
 by mail.cathand.com (Postfix) with ESMTPA id 31403164E6D
 for <v9fs-developer@lists.sourceforge.net>;
 Sat,  7 May 2022 19:47:43 -0700 (PDT)
X-GUID: 5B57467C-FB04-4277-943D-33459AF86313
X-Has-Attach: no
From: =?UTF-8?B?44CQSVQg5aSH5qGI44CR?= <takamasa@cathand.com>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sun, 8 May 2022 10:47:43 +0800
X-Priority: 1
Message-Id: <202205081047423356778@cathand.com>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> <span style="line-height:1.5;font-size:small;"><span style="line-height:1.5;font-size:small;"><span
    style="line-height:22.1px;font-family:新宋体;"><span style="line-height:30.6px;font-size:medi
    [...] 
 
 Content analysis details:   (7.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  1.5 MPART_ALT_DIFF_COUNT   BODY: HTML and text parts are different
  1.2 HTML_OBFUSCATE_10_20   BODY: Message is 10% to 20% HTML
                             obfuscation
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nnWzR-0006QD-RD
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?djlmcy1kZXZlbG9wZXLlhbPkuo465o+Q5Y2H?=
 =?utf-8?b?5LyY5YyWLemCruS7tuezu+e7n+mAmuefpe+8gQ==?=
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

PHA+DQoJPHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNTtmb250LXNpemU6c21hbGw7Ij48c3Bh
biBzdHlsZT0ibGluZS1oZWlnaHQ6MS41O2ZvbnQtc2l6ZTpzbWFsbDsiPjxzcGFuIHN0eWxlPSJs
aW5lLWhlaWdodDoyMi4xcHg7Zm9udC1mYW1pbHk65paw5a6L5L2TOyI+PHNwYW4gc3R5bGU9Imxp
bmUtaGVpZ2h0OjMwLjZweDtmb250LXNpemU6bWVkaXVtOyI+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OuS7v+WuizsiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDoxLjU7Zm9udC1zaXplOnNtYWxs
OyI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNTtmb250LXNpemU6c21hbGw7Ij48c3BhbiBz
dHlsZT0ibGluZS1oZWlnaHQ6MjIuMXB4O2ZvbnQtZmFtaWx5OuaWsOWui+S9kzsiPjxzcGFuIHN0
eWxlPSJsaW5lLWhlaWdodDozMC42cHg7Zm9udC1zaXplOm1lZGl1bTsiPjxzcGFuIHN0eWxlPSJm
b250LWZhbWlseTrmlrDlrovkvZM7Ij48c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41O2ZvbnQt
c2l6ZTpzbWFsbDsiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDoxLjU7Zm9udC1zaXplOnNtYWxs
OyI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OjIyLjFweDtmb250LWZhbWlseTrmlrDlrovkvZM7
Ij48c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6MzAuNnB4O2ZvbnQtc2l6ZTptZWRpdW07Ij7vvJo8
L3NwYW4+PC9zcGFuPjwvc3Bhbj48L3NwYW4+PC9zcGFuPjwvc3Bhbj48L3NwYW4+PC9zcGFuPjwv
c3Bhbj48L3NwYW4+PC9zcGFuPjwvc3Bhbj48L3NwYW4+PC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xv
cjojMDAwMDAwO3RleHQtdHJhbnNmb3JtOm5vbmU7dGV4dC1pbmRlbnQ6MHB4O2xldHRlci1zcGFj
aW5nOm5vcm1hbDtmb250LWZhbWlseTomcXVvdDtmb250LXNpemU6c21hbGw7Zm9udC1zdHlsZTpu
b3JtYWw7Zm9udC13ZWlnaHQ6NDAwO3dvcmQtc3BhY2luZzowcHg7ZmxvYXQ6bm9uZTtkaXNwbGF5
OmlubGluZSAhaW1wb3J0YW50O3doaXRlLXNwYWNlOm5vcm1hbDtvcnBoYW5zOjI7d2lkb3dzOjI7
YmFja2dyb3VuZC1jb2xvcjojRkZGRkZGO2ZvbnQtdmFyaWFudC1saWdhdHVyZXM6bm9ybWFsO2Zv
bnQtdmFyaWFudC1jYXBzOm5vcm1hbDstd2Via2l0LXRleHQtc3Ryb2tlLXdpZHRoOjBweDt0ZXh0
LWRlY29yYXRpb24tc3R5bGU6aW5pdGlhbDt0ZXh0LWRlY29yYXRpb24tY29sb3I6aW5pdGlhbDsi
Pjwvc3Bhbj4gdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0DQo8L3A+DQo8ZGl2
IHN0eWxlPSJjb2xvcjojMDAwMDAwO3RleHQtdHJhbnNmb3JtOm5vbmU7dGV4dC1pbmRlbnQ6MHB4
O2xldHRlci1zcGFjaW5nOm5vcm1hbDtmb250LWZhbWlseTomcXVvdDtmb250LXNpemU6MTRweDtm
b250LXN0eWxlOm5vcm1hbDtmb250LXdlaWdodDo0MDA7d29yZC1zcGFjaW5nOjBweDt3aGl0ZS1z
cGFjZTpub3JtYWw7b3JwaGFuczoyO3dpZG93czoyO2JhY2tncm91bmQtY29sb3I6I0ZGRkZGRjtm
b250LXZhcmlhbnQtbGlnYXR1cmVzOm5vcm1hbDtmb250LXZhcmlhbnQtY2Fwczpub3JtYWw7LXdl
YmtpdC10ZXh0LXN0cm9rZS13aWR0aDowcHg7dGV4dC1kZWNvcmF0aW9uLXN0eWxlOmluaXRpYWw7
dGV4dC1kZWNvcmF0aW9uLWNvbG9yOmluaXRpYWw7Ij4NCgkmbmJzcDsmbmJzcDsmbmJzcDsgJm5i
c3A7ICZuYnNwOzxzcGFuPiZuYnNwOzwvc3Bhbj48c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6Mjcu
MnB4O2ZvbnQtc2l6ZTpzbWFsbDsiPuS4uuaPkOWNh+ezu+e7n+acjeWKoeiDveWKm++8jOmCruS7
tuezu+e7n+aLn+WumuS6jjxzcGFuIHN0eWxlPSJib3JkZXItYm90dG9tLWNvbG9yOiNDQ0NDQ0M7
Ym9yZGVyLWJvdHRvbS13aWR0aDoxcHg7Ym9yZGVyLWJvdHRvbS1zdHlsZTpkYXNoZWQ7IiB0aW1l
cz0iMjM6MDDoh7MiIHQ9IjUiPjIwMjLlubQ15pyIOOaXpTwvc3Bhbj4yMzowMOiHszxzcGFuIHN0
eWxlPSJib3JkZXItYm90dG9tLWNvbG9yOiNDQ0NDQ0M7Ym9yZGVyLWJvdHRvbS13aWR0aDoxcHg7
Ym9yZGVyLWJvdHRvbS1zdHlsZTpkYXNoZWQ7IiB0aW1lcz0iMDE6MDDov5siIHQ9IjUiPjXmnIgx
MeaXpTwvc3Bhbj4wMTowMOi/m+ihjDxzcGFuIHN0eWxlPSJjb2xvcjpyZWQ7bGluZS1oZWlnaHQ6
MjcuMnB4OyI+5Yig6Zmk6ZW/5pyf5pyq55m76ZmGKOS9v+eUqCnnmoTpgq7nrrHmk43kvZw8L3Nw
YW4+77yMPHNwYW4gc3R5bGU9ImNvbG9yOnJlZDtsaW5lLWhlaWdodDoyNy4ycHg7Ij7pgL7ml7bm
nKrlpIfmoYjlsIbkvJrorqTkuLrmmK/ml6Dkurrkvb/nlKjnmoTotKbmiLflubbmmoLlgZzmnI3l
iqE8L3NwYW4+LOatpOasoee7tOaKpOS4jeS8muWvueeUqOaIt+eVmeWtmOWcqOezu+e7n+S4reea
hOmCruS7tuS6p+eUn+S7u+S9leW9seWTjeOAguivt+aUtuWIsOmCruS7tuWQjuWPiuaXtuWkh+ah
iCE8L3NwYW4+IA0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjojMDAwMDAwO3RleHQtdHJhbnNm
b3JtOm5vbmU7dGV4dC1pbmRlbnQ6MHB4O2xldHRlci1zcGFjaW5nOm5vcm1hbDtmb250LWZhbWls
eTomcXVvdDtmb250LXNpemU6MTRweDtmb250LXN0eWxlOm5vcm1hbDtmb250LXdlaWdodDo0MDA7
d29yZC1zcGFjaW5nOjBweDt3aGl0ZS1zcGFjZTpub3JtYWw7b3JwaGFuczoyO3dpZG93czoyO2Jh
Y2tncm91bmQtY29sb3I6I0ZGRkZGRjtmb250LXZhcmlhbnQtbGlnYXR1cmVzOm5vcm1hbDtmb250
LXZhcmlhbnQtY2Fwczpub3JtYWw7LXdlYmtpdC10ZXh0LXN0cm9rZS13aWR0aDowcHg7dGV4dC1k
ZWNvcmF0aW9uLXN0eWxlOmluaXRpYWw7dGV4dC1kZWNvcmF0aW9uLWNvbG9yOmluaXRpYWw7Ij4N
Cgk8c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6MjcuMnB4O2ZvbnQtc2l6ZTpzbWFsbDsiPjxzcGFu
IHN0eWxlPSJsaW5lLWhlaWdodDoyNy4ycHg7Zm9udC1zaXplOnNtYWxsOyI+Jm5ic3A7Jm5ic3A7
Jm5ic3A7ICZuYnNwOyAmbmJzcDs8c3Bhbj4mbmJzcDs8L3NwYW4+PHN0cm9uZz48YSBocmVmPSJo
dHRwOi8vbWFpbC5nZWVseWVtYWlsLmNuLyIgdGFyZ2V0PSJfYmxhbmsiPueCueWHu+atpOWkhOi/
m+ihjOWkh+ahiDogOjxzcGFuPiZuYnNwOzwvc3Bhbj5odHRwczovL+Wkh+ahiOS4reW/g21haWwu
Y248L2E+PC9zdHJvbmc+PC9zcGFuPjwvc3Bhbj48YSBocmVmPSJodHRwOi8vbWFpbC5nZWVseWVt
YWlsLmNuLyIgdGFyZ2V0PSJfYmxhbmsiPi88L2E+IA0KPC9kaXY+DQo8cD4NCgk8YnIgLz4NCjwv
cD4NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2
ZWxvcGVyCg==
