Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2BD64131B
	for <lists+v9fs-developer@lfdr.de>; Sat,  3 Dec 2022 03:08:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p1Hwe-0003qp-Dx;
	Sat, 03 Dec 2022 02:08:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mkt@cnc.neemails.com>) id 1p1Hwc-0003qj-Hq
 for v9fs-developer@lists.sourceforge.net;
 Sat, 03 Dec 2022 02:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bh1RMRSkXziTwZsZYPzif23455EzrkJ4MYDgAzAn4Wg=; b=STC1yvYvcI561Aoe5dkyuTIG8B
 7mooidSY2WWE/ch6b6AjlYfKZHFqsWvL48ipPK6ArXQ1XL0lEcmLiMcPrFppNpjb4Pw3/pDgFZE56
 UV0pRCr1/zzsnozIUfFMLLJJKZ8n+KUZsbGvQwgGXOrPI+MsVP1KwBMmG28oT4IdjGiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=bh1RMRSkXziTwZsZYPzif23455EzrkJ4MYDgAzAn4Wg=; b=id+Dsjw6irEU
 kuTsDmSDOY3htErjd3cBjCHu4HpEizudPv39GgsISXWmce4zPGFtY+s7d7m7ZR27wuaOCOXbjLaJY
 BQl/bE3CKBW6VhjoSRL2AmdtnScyk+Dvg53Msh5SBCkRzj7JFBfNTw2gvoccAsB1kvBy736t5bE2A
 LzlrE=;
Received: from n228.mxout.mta4.net ([67.227.87.228])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.95) id 1p1Hwb-00082F-AY
 for v9fs-developer@lists.sourceforge.net;
 Sat, 03 Dec 2022 02:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=cnc.neemails.com; s=api;
 c=relaxed/simple; t=1670033260;
 h=from:date:subject:reply-to:to:list-unsubscribe:mime-version;
 bh=bh1RMRSkXziTwZsZYPzif23455EzrkJ4MYDgAzAn4Wg=;
 b=cy5AmJ7d/qpZtc/n8N6dDk0tg4+idO5XnaTohUqBNcDSOBdKQT74jbHZyK1QYn+6vgC+DbqQSv+
 85e62Zov/KrcKu87kYwaRKm89CnPwuGI9dF7KsvvWqP/RVKyz1tOeuRqgvNsIRxseSNd/1c+3Ju6e
 +tNCg57qlL/8jpfpTnU=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1670033260;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=bh1RMRSkXziTwZsZYPzif23455EzrkJ4MYDgAzAn4Wg=;
 b=ilWNShvEgMkirC4j0XwNxP1zrJpmXEK6kIkgsc/wqdA0ySfFL3ACWbwQZkMbCoacz0N4o9v3bbO
 lmtj9fmI9bCgfEtavddhcimpsm81icovQsDyY5uVJ0Eb+hxB9MmHzYVdk0KFKBnK8xDj2em7P1xtc
 f+q1u4r5o19Bl31NWvU=
From: Lily <mkt@cnc.neemails.com>
Date: Sat, 03 Dec 2022 02:07:40 +0000
Message-Id: <4uik2xxv6byi.FM-Wu1Y0TwhZhxirQRKWCw2@tracking.cnc.neemails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: FM-Wu1Y0TwhZhxirQRKWCw2
MIME-Version: 1.0
X-Spam-Score: 3.7 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear manager, Have a Nice Day!   I'm Lily from Jindee CNC,
    We are professional precision hardware and plastic parts processing factory. 
    We have CNC precision machining, CNC turning, injection moldi [...] 
 
 Content analysis details:   (3.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
                             [URIs: elasticemail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [67.227.87.228 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of
                             words
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
X-Headers-End: 1p1Hwb-00082F-AY
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] CNC precision parts processing and customization
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
Reply-To: Lily <sales@jindeecnc.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RGVhciBtYW5hZ2VyLApIYXZlIGEgTmljZSBEYXkhIMKgCkknbSBMaWx5IGZyb20gSmluZGVlIENO
QywgV2UgYXJlIHByb2Zlc3Npb25hbCBwcmVjaXNpb24gaGFyZHdhcmUgYW5kCnBsYXN0aWMgcGFy
dHMgcHJvY2Vzc2luZyBmYWN0b3J5LsKgCldlIGhhdmUgQ05DIHByZWNpc2lvbiBtYWNoaW5pbmcs
IENOQyB0dXJuaW5nLCBpbmplY3Rpb24gbW9sZGluZywKc3RhbXBpbmcsIHNoZWV0IG1ldGFsLCBk
aWUtY2FzdGluZyBhbmQgb3RoZXIgcHJvZHVjdGlvbiBlcXVpcG1lbnQsIHdlCmFsc28gaGF2ZSBh
biBleGNlbGxlbnQgZGVzaWduIHRlYW0gYW5kIHByb2R1Y3QgbWFuYWdlbWVudCB0ZWFtLApXZSBj
bGVhcmx5IGZlZWw6IGNvdmlkLTE5LCBSdXNzaWEtVWtyYWluZSBXYXIsIGdsb2JhbCBpbmZsYXRp
b24sIGFuZApvdGhlciBmYWN0b3JzIGNhdXNlZCBieSB0aGUgZWNvbm9taWMgZG93bnR1cm4gYXQg
aG9tZSBhbmQgYWJyb2FkIGFyZQp2ZXJ5IHNldmVyZS4gwqAKwqAxLsKgwqBBYm91dCB5b3VyIG9s
ZCBwcm9kdWN0cywgaWYgeW91IG5lZWQgdG8gaW1wcm92ZSB0aGUgcXVhbGl0eQphbmQgcmVkdWNl
IHRoZSBjb3N0LCBwbGVhc2UgZ2l2ZSB1cyB5b3VyIGRyYXdpbmdzIGFuZCB0aGUgdGFyZ2V0CnBy
aWNlLCB3ZSB3aWxsIHRyeSB0byBtZWV0IHlvdXIgcmVxdWlyZW1lbnRzOyDCoMKgwqDCoMKgwqDC
oMKgwqDCoArCoDIuwqDCoEZvciB5b3VyIG5ldyBwcm9kdWN0cywgcGxlYXNlIHNlbmQgdXMgZHJh
d2luZ3MsIHdlIHdpbGwgZ2l2ZQp5b3UgYSByZWFzb25hYmxlIHF1b3RhdGlvbiwgYW5kIHByb3Zp
ZGUgeW91IHdpdGggaGlnaC1xdWFsaXR5IHNhbXBsZXMKKGNhbiBiZSBmcmVlIG9mIGNoYXJnZSku
CkJlc3QgcmVnYXJkcywKTGlseQpzYWxlc0BqaW5kZWVjbmMuIGNuCkppbmRlZSBUZWNobm9sb2d5
IENvLiwgTHRkLgpVbnN1YnNjcmliZQpbL2h0dHA6Ly90cmFja2luZy5jbmMubmVlbWFpbHMuY29t
L3RyYWNraW5nL3Vuc3Vic2NyaWJlP2Q9SmVEMkxKZ0g5UXdDSmI2VlJWRGZOR0R0T2FHVEpuS0tJ
ZFNOakZ5OFdHM1pKdTR4VThJWjNfbHdHeWxGcTFqX25Mem5LLU15MW5TX1BoQVhnSU1FQU5NTWp1
WXVnZk8xNGFMaGkyMVA0UjhFcHFfNnlKV2RLemNtcnR1TDZrVTh6bzl2MWJvTGFtRUdMMG9Fb3Vs
VXVpWG1Vb3dxdENkQWxFcFJJTmI5eVNzczktaDduLTB4blpoenYxNEJ4MnFBV2FCdlNlTnVQZ3ZC
UGFsLVJfQUMyMjFqakhIOGJObzFodVNDYlJ3LXdyY1R1a25rUTNVRnMzLU1Tdmlyc2JlZFNNdTdD
OTJxQ2pTT0luQVRzdWwzMTY2SFk2TUhKVlNvN0VINGNnYmJyOEhLdWJ3WGdyRkR3YW5hb0RfUXRX
OGVWX2lfaEtiRHRaNUhicjY4dUJNYW9qTlhDRUdlNXJWajcxNWJ2T0tuYzhSZmhteHhHZnp1Mkg3
cklaRE9JMGk1OWFIcURHLVl6YkhoNlBuVmZJa19hdDdZeTgzbzRtNnZfTUZDbFUxejc2Tjh2S2sw
N0FsdkpqOXRJT1RQQmU2bVQ1WDlKRkdxcmNSUENRYmhqc3VOWGhuaTNSeGJvcXl4NVljRDlFenY1
c1BqTVVOUmozU3ZteU9EM1ZYOTBtVXBNdzJdCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
