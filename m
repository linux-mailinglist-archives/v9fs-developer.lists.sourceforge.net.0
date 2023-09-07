Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BBB797DAC
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Sep 2023 23:02:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qeM9F-0003Mz-19;
	Thu, 07 Sep 2023 21:02:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+34502291-403f-v9fs-developer=lists.sourceforge.net@em3226.sendfoxmail.com>)
 id 1qeM9D-0003Ms-Sa for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Sep 2023 21:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qJpQ+NVnv6G73g3g/eOda5PDi35eO/F/2nED5A8NLb4=; b=EKd48MK8Hr/PSmtFSt4h16cVS/
 uroGNGwjdFzqMN4OjGNALK2GXAY51WoTSKs9Yz4m8igLiwrsn44LVQvk72dvkVrsODF4ZGVn70ZJG
 5IWshn0+urSTEXoY8WnII6DPJNgGxV1I7dGrZRL03ihVjdDDx3K+u4oXFDx/Z39G4uGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qJpQ+NVnv6G73g3g/eOda5PDi35eO/F/2nED5A8NLb4=; b=IM2Fl7j1XUGN0s/imPFldgDJOD
 3DvF5NluCKaYE9/9Aw82BzSomKHtFF7slp2WLbQdJuSWYGB+Q5FQ3RckyUE9M0fnmOS9WSincFqny
 sLh+slan5Qy3ZTTUS1NvXI2g54mtyb6VReAe6nf4/4KL+foopUy/EIsVAt4/B8EAXq2g=;
Received: from o9.us1.sendfox.com ([167.89.35.240])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qeM97-00DDYa-EK for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Sep 2023 21:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendfoxmail.com;
 h=content-type:from:mime-version:subject:reply-to:list-unsubscribe:to:
 cc:content-type:from:subject:to;
 s=s1; bh=qJpQ+NVnv6G73g3g/eOda5PDi35eO/F/2nED5A8NLb4=;
 b=mRnYVHSmSw6ttgKaU4gPSMqvjlLrH/e8WnOg0mhtWTMakR7Ir345zF3HPBcl8ozR+znZ
 6/+jcwenZrweLEcQyx4T/2mEiH7ukh+F5+eguOetI5emh0LNud7il9Z+0ve5fj1W0z1EPo
 aArrfP/cq2gvv0LIPeob1nTz/l12QXiTuuqSdQ3/9KClZ/Y/ABBJlWBUWnsDCEjsruSK+s
 yNm/NiTkFgEbHoHArYrHVuUxzzoxAwaD6VXNe0sALZrj02Y18dzb5zUX7e8enaaFhLutq+
 UIzc7naM+CCgjabSNf8ZmQzgAzNu+HgUKCcjqC6z+5Timh8xpBDUAzpqnW7WDLVA==
Received: by filterdrecv-7765c6879f-pwxlv with SMTP id
 filterdrecv-7765c6879f-pwxlv-1-64FA3A65-54
 2023-09-07 21:02:29.29647009 +0000 UTC m=+2439537.732105009
Received: from MzQ1MDIyOTE (unknown) by geopod-ismtpd-6 (SG) with HTTP
 id F40T9QypQ364cFNyWKQJvg Thu, 07 Sep 2023 21:02:29.156 +0000 (UTC)
Date: Thu, 07 Sep 2023 21:02:30 +0000 (UTC)
Mime-Version: 1.0
Message-ID: <F40T9QypQ364cFNyWKQJvg@geopod-ismtpd-6>
X-SF-DELIVERABLE: qdnokvyl
X-Mailer: SendFox
X-SF-CAMPAIGN: g6g6e2
Feedback-ID: g6g6e2:3q5z2v:campaign:6cca2329-033f-401d-90f5-e1fa4182d394
X-SG-EID: =?us-ascii?Q?PoLznDAJfVWm0JhmuVN1ny+nvxSkLU+mqn1U966fJ0Erv3hCCAlvZb2yLy1sls?=
 =?us-ascii?Q?3lczA=2FkmRS8BmC72jNo6V94v3ykPjqaTndcpl5S?=
 =?us-ascii?Q?Nb=2FtA=2FS+TNdmmitc4zEEOFDMQPVuBeP=2Fe9GD3ih?=
 =?us-ascii?Q?9pFhLMgqI1HeeTS5mWJy0nuOHD5DE0Tf50LvqsH?=
 =?us-ascii?Q?DzEjvUTQjYQLQSlm3Z1Rbh7MJ4SToEr2b413TnC?=
 =?us-ascii?Q?NYHSO2u+P2TbchrnMNrXX0AwuwKHgIOMCc39odP?=
 =?us-ascii?Q?3eMDf5frPA2IH81MlCMyg=3D=3D?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb8raWjw0ZPf1VmjsCkspi=2FIBNz1iFG7fYuoVJU3W5=2F?=
 =?us-ascii?Q?IXQHiAZgwYaLt8UsQVdm5qFb47mG7rTXQLQXACP?=
 =?us-ascii?Q?6SUlHyDFtRe1Ik7zqm=2F46o8qMZ9?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: Xh7v+CfeYqGVlxrcmKtJiA==
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  DEAR, We're thrilled to introduce our Virtual Credit Card
 Solution,
 designed to simplify your online transactions while enhancing security.
 For a limited time, you can enjoy an exclusive 74% discount! 
 Content analysis details:   (2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.35.240 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 DEAR_NOBODY            RAW: Message contains Dear but with no name
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1qeM97-00DDYa-EK
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Business: Virtual Credit Card Solution 74% OFF
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
From: AppDevs via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: AppDevs <appdevs.net@gmail.com>
Cc: AppDevs <mail@sendfoxmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IAoKREVBUiwKCldlJ3JlIHRocmlsbGVkIHRvIGludHJvZHVjZSBvdXIgVmlydHVhbCBDcmVkaXQg
Q2FyZCBTb2x1dGlvbiwgZGVzaWduZWQKdG8gc2ltcGxpZnkgeW91ciBvbmxpbmUgdHJhbnNhY3Rp
b25zIHdoaWxlIGVuaGFuY2luZyBzZWN1cml0eS4gRm9yIGEKbGltaXRlZCB0aW1lLCB5b3UgY2Fu
IGVuam95IGFuIGV4Y2x1c2l2ZSA3NCUgZGlzY291bnQhCgrwn4yfIEtleSBCZW5lZml0czoKCuKc
qCBTRUNVUkUgJiBDT05WRU5JRU5UOiBTaG9wIG9ubGluZSB3b3JyeS1mcmVlLCBubyBuZWVkIHRv
IHNoYXJlCnNlbnNpdGl2ZSBjYXJkIGRldGFpbHMuCgrinKggRUFTWSBCVURHRVRJTkc6IFNldCBz
cGVuZGluZyBsaW1pdHMsIGFuZCB0cmFjayBleHBlbnNlcwplZmZvcnRsZXNzbHkuCgrinKggRU5I
QU5DRUQgUFJJVkFDWTogUHJvdGVjdCB5b3VyIGRhdGEgZnJvbSBicmVhY2hlcyBhbmQgZnJhdWQu
CgrinKggR0xPQkFMIEFDQ0VQVEFOQ0U6IFVzZSBpdCBhdCBtaWxsaW9ucyBvZiBvbmxpbmUgbWVy
Y2hhbnRzCndvcmxkd2lkZS4KCuKcqCBJTlNUQU5UIEFDVElWQVRJT046IEdldCBzdGFydGVkIGlu
IG1pbnV0ZXMsIG5vIHBhcGVyd29yayBvciBjcmVkaXQKY2hlY2tzLgoKVGFwIHRvIFNlZSB0aGUg
UHJvZHVjdCBbL2h0dHBzOi8vc2VuZGZveC5jb20vdHJrL2NsaWNrL3Fkbm9rdnlsLzdxazhrdl0K
CkRvbid0IG1pc3MgdGhpcyBjaGFuY2UgdG8gYWNjZXNzIHRoZSBmdXR1cmUgb2YgVmlydHVhbCBD
cmVkaXQgQ2FyZApTb2x1dGlvbnMgYXQgYW4gdW5iZWF0YWJsZSBwcmljZS4gSWYgeW91IGhhdmUg
YW55IHF1ZXN0aW9ucywgcmVhY2ggb3V0CnRvIHVzIGF0IEN1c3RvbWVyIFN1cHBvcnQuCgpCZXN0
IFJlZ2FyZHMuCgpBUFBERVZTIC0gU09GVFdBUkUgU09MVVRJT05TCgpXRUJTSVRFOiBIVFRQUzov
L0FQUERFVlMuTkVUClsvaHR0cHM6Ly9zZW5kZm94LmNvbS90cmsvY2xpY2svcWRub2t2eWwvemUy
a3JlXQoKV0hBVFNBUFA6ICs0NDc0NjIyNDY4MTQKCiAJCUFwcERldnMgRmxhdDogMTQwNCwgQmxv
Y2s6IEMsIEJ1aWxkaW5nOiBLcmlzaG5vY2h1cmEsIFNlY3RvcjogMTgsClV0dGFyYSBEaGFrYSwg
RGhha2EgMTIzMCBCYW5nbGFkZXNoCgogCQkgVW5zdWJzY3JpYmUgWy9odHRwczovL3NlbmRmb3gu
Y29tL3Ryay91bnN1YnNjcmliZS9xZG5va3Z5bF0gCgogIAoKIAkJIFtTZW5kRm94XSBbL2h0dHBz
Oi8vc2VuZGZveC5jb20vdHJrL2NsaWNrL3Fkbm9rdnlsL3h4bnI4cF0gCgogCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
