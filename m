Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCDA7A4A7F
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Sep 2023 15:07:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qiDyf-00051j-Cl;
	Mon, 18 Sep 2023 13:07:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+34502291-403f-v9fs-developer=lists.sourceforge.net@em3226.sendfoxmail.com>)
 id 1qiDyW-00051b-DO for v9fs-developer@lists.sourceforge.net;
 Mon, 18 Sep 2023 13:07:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v8wFwebwxFo4QTBDzygJ0w4UVnn1EKtgo34fx4jPHLM=; b=GY6w8tfDyRphKupeiQWVSLVa0N
 HOR9hHn2KQOn4EJPwQO/t38liWUR93sEza9uz4EJpji+wTR9Hr65A3lqmTkqZacdJx/GuC7knr3nU
 cm6OE0jOWzd80PtbS/JzrW6WmLXhDrc3AMuuywdkOcrmg887h4N4WjmvO+8cLRil1MS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v8wFwebwxFo4QTBDzygJ0w4UVnn1EKtgo34fx4jPHLM=; b=YEnK9vg/5EPlprhW6bNMwLZs80
 5J6YUtgHPtCvVqV0S+WOv2DobsCdNGJpviEXEcVOsYSQpbp4CTUF1kEnE+vlwzdqK/2P2dMluxUoL
 UQJmuVUacCpKwvbwGs+eYkADH7R5HHfvgqFdAofA+XgD2TCCR8eYJjlu27xIkAkNBGCw=;
Received: from o9.us1.sendfox.com ([167.89.35.240])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qiDyM-00Ct2s-33 for v9fs-developer@lists.sourceforge.net;
 Mon, 18 Sep 2023 13:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendfoxmail.com;
 h=content-type:from:mime-version:subject:reply-to:list-unsubscribe:to:
 cc:content-type:from:subject:to;
 s=s1; bh=v8wFwebwxFo4QTBDzygJ0w4UVnn1EKtgo34fx4jPHLM=;
 b=Iu4mr9qUEq1E0LKJoehFzMwx7tCnrf7GWcE1pcNylU/s5wcW5kcGAWisCx+tQ43SZdov
 WFg3yr8Ouib8Q8ty/7WfO0E3ISV26/l01RxpskC7pdkEXTUl57++pcyY5AikBCaqvj5zVh
 U87ZseCGkaPUkhndASHlwZTP6g+UIdij7zlhDUYZsJi0T6Dl8CsYer4D55aA/yDXw6JcuG
 9hmCv6l7XGQOTTcLQxX59vwr3fhqikqJluPvNioZSFoLcSqLF3fLTrjBmtsGCB3g1n0xZ4
 XhaOdQUMyKBfkaRtbF4adbwOjJFlDivC3Za9lD95pcf//UUUo+Q2PpNuxHY+pHDQ==
Received: by filterdrecv-7765c6879f-mhm7j with SMTP id
 filterdrecv-7765c6879f-mhm7j-1-65084B8A-54
 2023-09-18 13:07:22.421460719 +0000 UTC m=+258794.948431710
Received: from MzQ1MDIyOTE (unknown) by geopod-ismtpd-10 (SG) with HTTP
 id RwPpmjPGTqKAyMHd0EjSSQ Mon, 18 Sep 2023 13:07:22.332 +0000 (UTC)
Date: Mon, 18 Sep 2023 13:07:22 +0000 (UTC)
Mime-Version: 1.0
Message-ID: <RwPpmjPGTqKAyMHd0EjSSQ@geopod-ismtpd-10>
X-Mailer: SendFox
X-SF-CAMPAIGN: xoqg85
Feedback-ID: xoqg85:3q5z2v:campaign:6cca2329-033f-401d-90f5-e1fa4182d394
X-SF-DELIVERABLE: 8k299k26
X-SG-EID: =?us-ascii?Q?PoLznDAJfVWm0JhmuVN1ny+nvxSkLU+mqn1U966fJ0Erv3hCCAlvZb2yLy1sls?=
 =?us-ascii?Q?3lczA=2FkmRS8BmC72jNo6V94m9x8jzWkWVUXC6GE?=
 =?us-ascii?Q?fOZYfnpJyEMUFKu+0bg+BYfqyOprPzJWUueV6qH?=
 =?us-ascii?Q?vLe95neS0dvDZwSR3TpFibCw=2FZtXapTD5Peg5n=2F?=
 =?us-ascii?Q?R4YCTMQ3bebKrO9XhxxFDULNxMMxbrzQ0pb8bgx?=
 =?us-ascii?Q?fEKlc0uvbss2CNTaXdvbN7xxkLyJK1AZdVIQ35M?=
 =?us-ascii?Q?HuwqfAW+AVn2GPQe7QdqA=3D=3D?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb8raWjw0ZPf1VmjsCkspi=2FIBNz1iFG7fYuoVJU3W5=2F?=
 =?us-ascii?Q?IXYGrIi7laDE9uEHRLvwd9rwe2k=2F3zVui80puMz?=
 =?us-ascii?Q?KBFLlqciVaBAHvFGIVUzIEqnXnk?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: Xh7v+CfeYqGVlxrcmKtJiA==
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  DEAR, We're thrilled to introduce our revolutionary Trading
 Platform and Money Exchange, designed to transform your trading experience.
 As a valued member, you can now enjoy an exclusive 73% discount for a [...]
 Content analysis details:   (2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.35.240 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Headers-End: 1qiDyM-00Ct2s-33
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] P2P Trading Platform Business Solution
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

IAoKREVBUiwKCldlJ3JlIHRocmlsbGVkIHRvIGludHJvZHVjZSBvdXIgcmV2b2x1dGlvbmFyeSBU
cmFkaW5nIFBsYXRmb3JtIGFuZApNb25leSBFeGNoYW5nZSwgZGVzaWduZWQgdG8gdHJhbnNmb3Jt
IHlvdXIgdHJhZGluZyBleHBlcmllbmNlLiBBcyBhCnZhbHVlZCBtZW1iZXIsIHlvdSBjYW4gbm93
IGVuam95IGFuIGV4Y2x1c2l2ZSA3MyUgZGlzY291bnQgZm9yIGEKbGltaXRlZCB0aW1lIQoK8J+M
nyBLRVkgRkVBVFVSRVMg8J+MnwoK4pyFIFRyYWRlIE1hcmtldHBsYWNlCgrinIUgT2ZmZXIgYW5k
IENvdW50ZXIgT2ZmZXIKCuKchSBCVVkgfCBTRUxMIHwgRVhDSEFOR0UKCuKchSBCaW9tZXRyaWMg
TG9naW4gd2l0aCBGYWNlSUQgYW5kIFRvdWNoSUQKCuKchSBVc2VyLUZyaWVuZGx5IEludGVyZmFj
ZQoK4pyFIEFkdmFuY2VkIEFuYWx5c2lzIFRvb2xzCgrinIUgUmVhbC1UaW1lIERhdGEKCvCflKUg
TElNSVRFRC1USU1FIE9GRkVSIPCflKUKClVwZ3JhZGUgeW91ciB0cmFkaW5nIGdhbWUgdG9kYXkg
YW5kIHNhdmUgNzMlISBBY3Qgbm93LCB0aGlzIG9mZmVyCmV4cGlyZXMgc29vbi4KClRhcCB0byBT
ZWUgdGhlIFByb2R1Y3QgWy9odHRwczovL3NlbmRmb3guY29tL3Ryay9jbGljay84azI5OWsyNi94
eDl2djVdCgpEb24ndCBtaXNzIHRoaXMgY2hhbmNlIHRvIGFjY2VzcyB0aGUgZnV0dXJlIG9mIHRy
YWRpbmcgYXQgYW4KdW5iZWF0YWJsZSBwcmljZS4KCkJlc3QgUmVnYXJkcy4KCkFQUERFVlMgLSBT
T0ZUV0FSRSBTT0xVVElPTlMKCldFQlNJVEU6IEhUVFBTOi8vQVBQREVWUy5ORVQKWy9odHRwczov
L3NlbmRmb3guY29tL3Ryay9jbGljay84azI5OWsyNi9rOTVwcDRdCgpXSEFUU0FQUDogKzQ0NzQ2
MjI0NjgxNAoKIAkJQXBwRGV2cyBGbGF0OiAxNDA0LCBCbG9jazogQywgQnVpbGRpbmc6IEtyaXNo
bm9jaHVyYSwgU2VjdG9yOiAxOCwKVXR0YXJhIERoYWthLCBEaGFrYSAxMjMwIEJhbmdsYWRlc2gK
CiAJCSBVbnN1YnNjcmliZSBbL2h0dHBzOi8vc2VuZGZveC5jb20vdHJrL3Vuc3Vic2NyaWJlLzhr
Mjk5azI2XSAKCiAgCgogCQkgW1NlbmRGb3hdIFsvaHR0cHM6Ly9zZW5kZm94LmNvbS90cmsvY2xp
Y2svOGsyOTlrMjYveWs5eDJsXSAKCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
