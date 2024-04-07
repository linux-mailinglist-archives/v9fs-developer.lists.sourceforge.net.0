Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8659889B37A
	for <lists+v9fs-developer@lfdr.de>; Sun,  7 Apr 2024 20:02:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rtWqx-0007m3-4A;
	Sun, 07 Apr 2024 18:02:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <return+irwsro47-7qcx0nvb-1bgc@smoton.com>)
 id 1rtWqv-0007lw-Ms for v9fs-developer@lists.sourceforge.net;
 Sun, 07 Apr 2024 18:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Id:List-Unsubscribe:
 Message-Id:Date:Reply-To:To:From:Subject:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gue+wLv4gAovpHXkpIQmbA0m3oCUd1/rsxjcT5bs7XY=; b=fVmAS8/aqGcmmIfONw2C6tA4Gy
 n/UfZ5++4dQO2SVjpCvF1O9EJXy1E64HOCIWqA5szUUDx4HOAw0zKffUQybh6vltGaAh9PNvY4w3Z
 aPlbNBOLbxv0Wod/dlIT+PXC8Yp6Iy1ckmko1qiRENDwNIFuW2NzoUVJ1YGqCtK+84Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Id:List-Unsubscribe:Message-Id:Date:
 Reply-To:To:From:Subject:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Gue+wLv4gAovpHXkpIQmbA0m3oCUd1/rsxjcT5bs7XY=; b=Z
 CthZ6sp+Jc0unPCFwma/Fpq/F07cwoERZBzIam/jYmPS8kLFQGl7TUucrdABHsIJo/DDlMiWjpcD4
 KuzH72og/cM9BbrlPmkfN4hJxsdr79ZEbee3ROIL14VDEcWkrgERuogSqOTU1dZ/lWRKEz0o2m5rj
 qG+bHczKrx7xkvkM=;
Received: from m75734.smoton.com ([46.4.133.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtWqo-000581-54 for v9fs-developer@lists.sourceforge.net;
 Sun, 07 Apr 2024 18:02:46 +0000
From: =?UTF-8?B?0KHQvtGW1bhi0LDRldC1?= <info@winter-sport.de>
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 07 Apr 2024 19:52:14 +0200
Message-Id: <129958596064966@m75734.smoton.com>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-ID: N-kibybsbn:C-irwsro47:P-g68d6rmb
X-AntiAbuse: Please report spam to postmaster@smoton.com and refer to this ID:
 irwsro47-7qcx0nvb-1bgc
X-CSA-Complaints: csa-complaints@eco.de
X-rpcampaign: RPkibybsbn
DKIM-Signature: a=rsa-sha256;
 b=DWcwMfiRZI49kAz5dLxgFU5T17tcqEahZf7WtyEw/FlMFQDaob78lTbtompJZ+qlBd5Xp1HFTrmpeqIDsrBKC9NwwCjAaRGXf0ID6MCjzgdgcn2dqrMEZwVQuS3BL1679+xt82hQgwQnOC46kC3jBQnmCS58hvrmftuapyP4S3E=;
 s=default; d=smoton.com; v=1; bh=NoyHr9Z4JUqxRIIrjoPCm48gzQ5hRQ6+f+2SEilXBAI=;
 h=Reply-To:List-Id:From:To:Message-Id:Subject:MIME-Version:Date:Feedback-ID:List-Unsubscribe:List-Unsubscribe-Post:X-CSA-Complaints;
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Account Alert: Immediate Action Required for Reactivation
 ========================================================= Dear Customer, We
 hope this message finds you well. We're reaching out to inform you that access
 to your account has been temporarily disabled as a part of our ongoing efforts
 to ensure the security and integrity of [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rtWqo-000581-54
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Account Alert: Immediate Action Required for
 Reactivation
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
Reply-To: =?UTF-8?B?0KHQvtGW1bhi0LDRldC1?= <info@winter-sport.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

QWNjb3VudCBBbGVydDogSW1tZWRpYXRlIEFjdGlvbiBSZXF1aXJlZCBmb3IgUmVhY3RpdmF0aW9u
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQoKRGVhciBDdXN0b21lciwKCldlIGhvcGUgdGhpcyBtZXNzYWdlIGZpbmRzIHlvdSB3ZWxsLiBX
ZSdyZSByZWFjaGluZyBvdXQgdG8gaW5mb3JtIHlvdSB0aGF0IGFjY2VzcyB0byB5b3VyIGFjY291
bnQgaGFzIGJlZW4gdGVtcG9yYXJpbHkgZGlzYWJsZWQgYXMgYSBwYXJ0IG9mIG91ciBvbmdvaW5n
IGVmZm9ydHMgdG8gZW5zdXJlIHRoZSBzZWN1cml0eSBhbmQgaW50ZWdyaXR5IG9mIG91ciBwbGF0
Zm9ybS4KClRvIHJlZ2FpbiBhY2Nlc3MgYW5kIGNvbnRpbnVlIHVzaW5nIHlvdXIgYWNjb3VudCwg
YWRkaXRpb25hbCB2ZXJpZmljYXRpb24gc3RlcHMgYXJlIG5lY2Vzc2FyeS4gVGhpcyBpcyBhIHBy
ZWNhdXRpb25hcnkgbWVhc3VyZSBkZXNpZ25lZCB0byBwcm90ZWN0IHlvdXIgcGVyc29uYWwgaW5m
b3JtYXRpb24gYW5kIHByZXZlbnQgdW5hdXRob3JpemVkIGFjY2Vzcy4KCltWZXJpZnkgWW91ciBB
Y2NvdW50XShodHRwczovL3Ntb3Rvbi5jb20vaXJ3c3JvNDctN3FjeDBudmItaDMwM256eXUteXp0
ICJCdXR0b24gVGl0bGUiKQoKwqAgwqAgT25jZSB5b3UgaGF2ZSBzdWNjZXNzZnVsbHkgdmVyaWZp
ZWQgeW91ciBpZGVudGl0eSwgeW91ciBhY2NvdW50IHdpbGwgYmUgcmVhY3RpdmF0ZWQsIGFuZCB5
b3XCoCDCoCDCoCDCoCDCoCB3aWxsIHJlZ2FpbiBmdWxsIGFjY2Vzcy4KCsKgIMKgIFdlIHVuZGVy
c3RhbmQgdGhhdCB0aGlzIG1heSBiZSBpbmNvbnZlbmllbnQsIGJ1dCBwbGVhc2UgcmVzdCBhc3N1
cmVkIHRoYXQgdGhlc2UgbWVhc3VyZXPCoCDCoCDCoCDCoCDCoCBhcmUgdGFrZW4gd2l0aCB5b3Vy
IGJlc3QgaW50ZXJlc3QgaW4gbWluZCwgYWltaW5nIHRvIHNhZmVndWFyZCB5b3VyIGFjY291bnQg
YW5kIHBlcnNvbmFswqAgwqAgwqAgwqAgwqAgwqAgwqAgaW5mb3JtYXRpb24uCgrCoCDCoCBUaGFu
ayB5b3UsCsKgIMKgIFRoZSDQodC+0ZbVuGLQsNGV0LUgVGVhbSwKCsKgCgpbYV0oaHR0cHM6Ly9z
bW90b24uY29tL2lyd3NybzQ3LTdxY3gwbnZiLWt6dHdoYml2LW5raCkKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
