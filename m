Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 705F564DB83
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Dec 2022 13:43:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p5naN-0005vS-2p;
	Thu, 15 Dec 2022 12:43:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cnc@e1.nkemails.com>) id 1p5naL-0005vF-QQ
 for v9fs-developer@lists.sourceforge.net;
 Thu, 15 Dec 2022 12:43:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0M73AB3ZaErCzI6sajr+/U28r02DjDteNQAe98RYSQw=; b=GYtnAnrJmv4/wGvPD0dK0E6X54
 sc68n5oJ7kgpVQkBK21sw3Pyy8Tg1x6NY8L+A3acwEiuPv5hQXt1w00iQYixPD4WKvO8gVUq/YMkD
 L4PZJwN5fbMHfttoOVluwqhkGaNYlIY1gLdbB49oJ3adU8l5kHr00wwM8HraSNkocuBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=0M73AB3ZaErCzI6sajr+/U28r02DjDteNQAe98RYSQw=; b=mX0bKlhYJFoB
 3y8lo6VA+zze0ZxkpF41cHIUFRfpOirMxT4SBRH/QET2v0sM37dQioNL59+1HvIOopMyEKLjFyPI3
 YL31mTBscqxQDAPPllc7aqjvNf6zErN3xyjTRhDPctFYtl74QHizvwg6HcPDd/C7jx0eTyzxUxq6Q
 BNbXg=;
Received: from n174.mxout.mta4.net ([67.227.87.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.95) id 1p5naI-000Sds-BP
 for v9fs-developer@lists.sourceforge.net;
 Thu, 15 Dec 2022 12:43:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=e1.nkemails.com; s=api; c=relaxed/simple; 
 t=1671108207;
 h=from:date:subject:reply-to:to:list-unsubscribe:mime-version; 
 bh=0M73AB3ZaErCzI6sajr+/U28r02DjDteNQAe98RYSQw=;
 b=LiCd1tmUCvUb2xQylnm7lyQZvc14ijknuOQmTAAKXFprk0bQ9ery+V1yfX/LG1TqhirPIIv8Mnb
 hQ9QcHT7e9NiCZsqIifdc3aHa3EgPchVZKl1SMxQAqfnTt6MxgNIaoPNDXOWbOZth2VcjmPIs1sYE
 oo9N3EekTLebx3oaQ3U=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1671108207;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=0M73AB3ZaErCzI6sajr+/U28r02DjDteNQAe98RYSQw=;
 b=M6vf6LbIxtr/JfsTb9PsD3NQAEZ783ppkkSmb4HTdeKrJVchTOPYD2rw1pGWZjetoWmzkBjmvfV
 ht/0AaP7Me6k1NDi3L2htq6ZMTUldtH3ABK/i3DhoPSBG30mW/3MrBH7Mv6Vlt1TkkZ/aCKmjeyEK
 2s5xvXe4G8Yb4bP/97s=
From: Lisa Yu <cnc@e1.nkemails.com>
Date: Thu, 15 Dec 2022 12:43:27 +0000
Message-Id: <4uinw46fa3gj.6b8qdF-GvpuQCWYa8A1Ecg2@tracking.e1.nkemails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: 6b8qdF-GvpuQCWYa8A1Ecg2
MIME-Version: 1.0
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear manager, Have a nice day! I hope everything is going
 well for you. I'm Lisa and the sales director at Winhoo Precision, We supply
 all kinds of CNC Machining parts( high precision of 0.005mm, for [...] 
 Content analysis details:   (7.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: xcwms.com]
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: elasticemail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.227.87.174 listed in list.dnswl.org]
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [67.227.87.174 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.227.87.174 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
X-Headers-End: 1p5naI-000Sds-BP
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] CNC Precision Machining Parts Manufacturer
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
Reply-To: Lisa Yu <lisa@cncprecision-parts.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RGVhciBtYW5hZ2VyLApIYXZlIGEgbmljZSBkYXkhIEkgaG9wZSBldmVyeXRoaW5nIGlzIGdvaW5n
IHdlbGwgZm9yIHlvdS4KSSdtIExpc2EgYW5kIHRoZSBzYWxlcyBkaXJlY3RvciBhdCBXaW5ob28g
UHJlY2lzaW9uLCBXZSBzdXBwbHkgYWxsCmtpbmRzIG9mIENOQyBNYWNoaW5pbmcgcGFydHMoIGhp
Z2ggcHJlY2lzaW9uIG9mIDAuMDA1bW0sIGZvciBkaWZmZXJlbnQKZmllbGRzIGxpa2UgTWlsaXRh
cnkvRGVmZW5zZSwgQWVyb3NwYWNlIEFncmljdWx0dXJhbCwgVHJhbnNwb3J0YXRpb24sCk1lZGlj
YWwsIEluZHVzdHJpYWwsIEFsbCBraW5kcyBvZiBSb2JvdHMsIERyb25lcyBhbmQgc28gb24uLi4p
CldpbmhvbyBQcmVjaXNpb24gaGFzIDYwIHNldHMgb2YgYWR2YW5jZWQgZXF1aXBtZW50IGluY2x1
ZGluZyA0LWF4aXMKQ05DIG1hY2hpbmVzIGFuZCA1LWF4aXMgQ05DIG1hY2hpbmVzLCBXZSBzcGVj
aWFsaXplIGluIHByb2R1Y2luZwpoaWdoLXZhbHVlIGVuZ2luZWVyZWQgcGFydHMgYW5kIGFzc2Vt
YmxpZXMgd2l0aCBlbGFib3JhdGUgZGVzaWducyBhbmQKY2hhbGxlbmdpbmcgcXVhbGl0eSBjcml0
ZXJpYS4gV2UgY29udGludWFsbHkgZXhjZWVkIGN1c3RvbWVyCmV4cGVjdGF0aW9ucyBpbiBxdWFs
aXR5LCBjb3N0LCBhbmQgZGVsaXZlcnkgYnkgY29tYmluaW5nIGxlYWRpbmctZWRnZQpDTkMgbWFj
aGluaW5nIHRlY2hub2xvZ2llcyB3aXRoIGEgcm9idXN0IEVSUCBzeXN0ZW0sIGEgbGVhbiBmcmFt
ZXdvcmssCmFuZCBoaWdobHkgc2tpbGxlZCB0ZWFtIG1lbWJlcnMuCklmIHlvdSBoYXZlIGFueSBp
bnRlcmVzdCzCoHdlIHdlbGNvbWUgeW91ciBkcmF3aW5ncyBvZiBDTkMgcGFydHMsIHdlCmNhbiBv
ZmZlciB5b3UgdGhlIGJlc3QgcHJpY2UgYW5kIGhpZ2ggcXVhbGl0eSBzYW1wbGVzLgpUaGFua3Mg
Zm9yIHlvdXIgdmFsdWFibGUgdGltZS4KTG9vayBmb3J3YXJkIHRvIHlvdXIgbmljZSByZXBseS4K
QmVzdCByZWdhcmRzLApMaXNhIHl1Ckxpc2FAY25jcHJlY2lzaW9uLXBhcnRzLiBjbgpXaW5ob28g
UHJlY2lzaW9uClVuc3Vic2NyaWJlClsvaHR0cDovL3RyYWNraW5nLmUxLm5rZW1haWxzLmNvbS90
cmFja2luZy91bnN1YnNjcmliZT9kPUF5Tk1HY2paSnhVT0JPanRvUnlXRmZGa0tMRW0yWE9DMU50
Y2dyN2xILW44dGhHOWFxVVYzY1VBVzZOdmJobUhyNEF0QlJjVkJTRWttMGo4LVpFOFBhaEVic0Jo
YzJVR1dEdkRxbkV2SWRva0FlSzFJYzZRbVg2Wjl1d1dibnZnNmdjOU5fUWRQNkx0d18wUEFZazBq
VGM4aWc0Y1pabEVHMm1hOWF2dXdIVnl6V3pzMnZQUWlLUWhuVGFYMmJEeENCV2dWLXYydFJRbUdf
ekVmY0plRy1KY01CQWZMWW5qb1g2VDVvRnJTbUNaajRETVNwLVJZVy1EVFNvemx5eThqdzYxLU5l
WjFkVXd0VWdpMEdUb3JRRnVFSWgyOTRmVVVRNGt6YjRYS0ZmSzVuekxZeFpVbjhwbkxESkJQb1RX
czI0V05jX3Fra3ZpWS1jRGFYWmt1dHJmVXFVaDJuSkxzak1Fd09LdmlMQzF4TEdDLXVPZGtqRXZZ
clBQV0JXYlQ1cHc2UXZYU3h2RnZlSm9MZHBxV1JEamFELThQRjdLNEJCSzlrQ3IzeTdhXzM4N09x
ejJtbVFtSU9qVXB2UHpZdVNJajJoUTVXWUdXWlJYcEN4QnIwZ1ZvdWxONURYS0ZrYUVnYVNaOXZ0
Y3NfUjJvUE9qTHVDWUs5REM3R2VxWUEyXQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
