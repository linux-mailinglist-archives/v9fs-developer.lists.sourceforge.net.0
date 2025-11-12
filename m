Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB4CC505B2
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 Nov 2025 03:43:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:To:Message-Id:Date:From:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2qo+cyteQZQaGbipZjbAH8B2zDDQvdMqmY9J0BE4RVY=; b=lVXvUr54fWpgR34w6/75EXzA+E
	/k3jvVerMGshVM5WrVG5faa0pSGzwWV+oniXjpLCh73jxquH6jpiwDK9KmhoTM1cLyg9yonXKpXje
	ZJfZfdDmIXvdfhmXN5BRR+MDXEXw39ZPU2uEZ48GgC15BE6YHV7JXKIYHiJC8ekEwl/g=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1vJ0pD-000519-Tr;
	Wed, 12 Nov 2025 02:43:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Lily.Bai=jdcasting.kmfgedm.com@bounces.jdcasting.kmfgedm.com>)
 id 1vJ0pD-000513-5q for v9fs-developer@lists.sourceforge.net;
 Wed, 12 Nov 2025 02:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oWVA8Er5ml3L9JK7n7JxED9JiMKYuWAqJkIbjqHcjO4=; b=LwpzM807mRdWgw3maoX6s0Rtm8
 o9KHWDDx93RfRn4GiNRdf9jwA5QfkDCaCqvZhQ4b3orcuw5s1ig4Lv13/XQV9TSXxCkT9Mw+nTZkz
 5w/CEreFEmxb3srE8JkNsrwBrDdnJBAXkz8eVoKtKxpWtf9R6GlMGu/BLE/izYgOzgnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=oWVA8Er5ml3L9JK7n7JxED9JiMKYuWAqJkIbjqHcjO4=; b=CgKAouU6GoQJ
 fRZwMY3Gk3lfdIzV44FU5l5wzBoh0epsPPZTDj4QGCvnbd+CvYAaqNbF4RKdUFOvvPeAfX85Pj8Hi
 tzMPXbluJlvNQ3NdYKhgMt/EnSdpLTD+vca37k+rA5LmVtYFdIULLwMYT1/N7rZLHvx4vmriBDjGW
 Vaya0=;
Received: from n146.mxout.mta4.net ([67.227.87.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.95) id 1vJ0pC-0004X1-GW
 for v9fs-developer@lists.sourceforge.net;
 Wed, 12 Nov 2025 02:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=jdcasting.kmfgedm.com; s=api;
 c=relaxed/simple; t=1762915378;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post:
 mime-version; bh=bHWtAoDDG+cTmo1RikNkAMcq72uNF+xVIRooK+qyTZU=;
 b=hX937mvDi4CejX91A27SVXXlWXErlhq1bN3q2fgSG87g1t/nJhEryTaW50q7B4RCt94zXp30Ohk
 MzixkndOAqfNlEmaD3/sgDZQ9QySfWt2diYLcR45RyjVh6Bu6unBGS4hOsA2JyYS9HrMK6dKaVBRp
 9oybon/xREYHl9D+E30=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1762915378;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post;
 bh=bHWtAoDDG+cTmo1RikNkAMcq72uNF+xVIRooK+qyTZU=;
 b=EJMJepqLpVWOOjXCH3XTmEUMu6Ck2c2eMHvOaH90TG2A79VH3sHqT2jarJ3YahgYhd2igGdrH1O
 8g0z79E541kyndEpejf4+VlfFYASYYWk7uUcG1rk7xEBmQDwlIb/WGqhktQVOSnRwRaP7OlDh2Anm
 RxfJ7tAbLM/sVXXhuWA=
From: Lily Bai <Lily.Bai@jdcasting.kmfgedm.com>
Date: Wed, 12 Nov 2025 02:42:58 +0000
Message-Id: <4urpbki09qf0.DS14arcb7J9-8czEA9d0ZA2@tracking.jdcasting.kmfgedm.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Msg-EID: DS14arcb7J9-8czEA9d0ZA2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, This is LILY FROM JINDEE CNC — a real manufacturing
   factory in China specializing in precision CNC machining and die casting.
   Many of our clients once faced the same dilemma — They needed the precision
    of CNC machining, but costs quickly grew as production volumes increased.
    Switching to die casting seemed like a good idea [...] 
 
 Content analysis details:   (-0.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
                             was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
                              for more information.
                             [67.227.87.146 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: kmfgedm.com]
                             [URI: elasticemail.com]
                             [URI: xcwms.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [67.227.87.146 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1vJ0pC-0004X1-GW
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Reliable CNC Machining Factory | Medium Volume
 Production
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
Reply-To: Lily Bai <sales@jindeecnc.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpUaGlzIGlzIExJTFkgRlJPTSBKSU5ERUUgQ05DIOKAlCBhIHJlYWwgbWFudWZhY3R1cmlu
ZyBmYWN0b3J5IGluIENoaW5hCnNwZWNpYWxpemluZyBpbiBwcmVjaXNpb24gQ05DIG1hY2hpbmlu
ZyBhbmQgZGllIGNhc3RpbmcuCgpNYW55IG9mIG91ciBjbGllbnRzIG9uY2UgZmFjZWQgdGhlIHNh
bWUgZGlsZW1tYSDigJQKVGhleSBuZWVkZWQgdGhlIHByZWNpc2lvbiBvZiBDTkMgbWFjaGluaW5n
LCBidXQgY29zdHMgcXVpY2tseSBncmV3IGFzCnByb2R1Y3Rpb24gdm9sdW1lcyBpbmNyZWFzZWQu
ClN3aXRjaGluZyB0byBkaWUgY2FzdGluZyBzZWVtZWQgbGlrZSBhIGdvb2QgaWRlYSwgeWV0IHRo
ZSBhbm9kaXppbmcKcmVzdWx0cyBuZXZlciBtZXQgdGhlIHZpc3VhbCBvciBkdXJhYmlsaXR5IHN0
YW5kYXJkcyB0aGVpciBjdXN0b21lcnMKcmVxdWlyZWQuCgpBdCBKSU5ERUUgQ05DLCB3ZeKAmXZl
IGRldmVsb3BlZCBhIHNvbHV0aW9uIHRoYXQgY29tYmluZXMgYm90aAphZHZhbnRhZ2VzLgpXZSBh
cmUgYSBSRUFMIE1BTlVGQUNUVVJJTkcgRkFDVE9SWSB3aXRoOgoKIAkqCkEgQ05DIFBSRUNJU0lP
TiBNQUNISU5JTkcgV09SS1NIT1AKCiAJKgpBIENOQyBUVVJOSU5HIFdPUktTSE9QCgogCSoKQSBE
SUUgQ0FTVElORyBXT1JLU0hPUCBmb3IgYWx1bWludW0gYWxsb3kgcGFydHMgYW5kIG1vbGRzCgpX
ZSBmb2N1cyBvbiBNRURJVU0tVk9MVU1FIFBST0RVQ1RJT04gKDUwMOKAkzUwMDAgUENTKSBhbmQg
Y2FuCmludGVncmF0ZSBNT0xEIFBST0RVQ1RJT04gdG8gYmV0dGVyIG1hdGNoIHlvdXIgY29zdCBh
bmQgcGVyZm9ybWFuY2UKbmVlZHMuCgpDQVNFIEVYQU1QTEXvvJ8KQSBFdXJvcGVhbiBjdXN0b21l
ciBwcmV2aW91c2x5IHByb2R1Y2VkIDIwMDArIENOQy1tYWNoaW5lZCBob3VzaW5ncwp3aXRoIGhp
Z2ggY29zdHMuCkFmdGVyIHN3aXRjaGluZyB0byBvdXIgRElFIENBU1RJTkcgKyBDTkMgRklOSVNI
SU5HICsgQU5PRElaSU5HCnByb2Nlc3MsIHRoZXkgcmVkdWNlZCB0b3RhbCBjb3N0cyBieSAzOCUs
IGltcHJvdmVkIHN1cmZhY2UgcXVhbGl0eSwKYW5kIHNob3J0ZW5lZCBsZWFkIHRpbWUgYnkgdHdv
IHdlZWtzLgpUaGV5IHdlcmUgc28gc2F0aXNmaWVkIHRoYXQgdGhleSBsYXRlciBpbnRyb2R1Y2Vk
IGFub3RoZXIgY2xpZW50IHRvCnVzLgpJZiB5b3UgaGF2ZSBEUkFXSU5HUyBPUiBVUENPTUlORyBQ
Uk9KRUNUUywgSSdkIGJlIGhhcHB5IHRvIHJldmlldyB0aGVtCmFuZCBwcm92aWRlIGEgQ09TVCBB
TkFMWVNJUyBPUiBRVU9UQVRJT04gd2l0aGluIDI0IGhvdXJzLgoKQmVzdCByZWdhcmRzLAoKTGls
eSBCYWkKU2FsZXMgTWFuYWdlcgpzYWxlc0BqaW5kZWVjbmMuY24KSmluZGVlIENOQwoKVW5zdWJz
Y3JpYmUKWy9odHRwOi8vdHJhY2tpbmcuamRjYXN0aW5nLmttZmdlZG0uY29tL3RyYWNraW5nL3Vu
c3Vic2NyaWJlP2Q9X2RycDNvQ0VReE92UEdjVmxhWXJBSl9rXzNGd3hVMW1DekV5SjU5bU03ZG10
NjVSYTZ5WjJoY0RYMzRqRUowQjJveEN0YVdnbWwxN1QzWEdQTjJ4a0gyTnB5eU10aVFxcGR5Tkkz
NGJHVHVXbm4zSkJHanV2bDhjanpqZEhmYy1YXzRWQmZZZVBLUmFBWWwwSnA2cGtlR0NlU01BN3ZV
bi1xX0d2bEl2ckZ3T25MLThDa0pqUl96UEdPdVZtYVhpTXlPNUN1ZVEtcnVWUXBPVk9mXzJoOExr
dHljV19TRVI3MWNENVVmczNRQkFkWGU3bU5ReGNyZjVIaHR6VVZuWHZVZ0wxMjJkaEpWVTBVUEpW
Qkdub05kNjhEWm85UDNsTmgtcl9vZWw4TnF3TmlSOGt1aVg2S09TRTQ0Zm83UG9wdXBoLVVUYll4
N1VXdHYyLVlyMVFWTGE1TFBsYmFjYzBPSTA0a3dSM2hBbTdQZkRWcnRHOEZCSk43b042X3hCWnZh
Tk9pLS1QZ2ItVlpqUmx4c0JKUXFhYVhnY1ZaMjE3YUdFY3ZKVHJHTjU2amc1cEZPdGtuNVhVTDJt
UzJrNFdYSnlTXzNuc0Nna250bGxjTjctWTVrQ1Z3OWtBMDlXRFZ6ODVPWEZRRGVnRndZWU5uR3pO
dThscGY3bXREdFd2RFBfNTJyd2M3NGlpNTl4RVlKQWpVR19LZ0dqYWNDaklmakdobGhrMUNxYk9T
UU9PVkZKNFVPM25jdjlVd1VITHcyXQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
