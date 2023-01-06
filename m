Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E33B766008A
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Jan 2023 13:51:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pDmC9-00052d-1T;
	Fri, 06 Jan 2023 12:51:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tldschina.davis@ygmail.net.cn>) id 1pDmC7-00052T-4Y
 for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Jan 2023 12:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0rDQkFaC7dmKq9A7BEyyrk00X59P9KGVhcipFiSYlww=; b=Org54DJmyGV3k/U89hmptu+5S3
 ClA5L/ZD3n606bnr/lMUocjOrnAtF4KBMLE5f8fyDJ9nNvQCmGj3npnEKDzzWcQaAjpSqHKBXqras
 5/qaiXIKsdZCmCH2cmN45WPtyaQfAuaYAWJUJFp3CTPjuJmPzuUbPTq2tgEzOu2WqCAI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Reply-To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0rDQkFaC7dmKq9A7BEyyrk00X59P9KGVhcipFiSYlww=; b=M
 OpgkaAKgm09B4mWwBFveNk6nRWQm3QYa8opKB7QyAm54c+kgA81ppzsKbXDYReG7+iVXDLkZ17M5w
 vUl2Y5O2IJvH/JlCEpja4SPhZrKl//F5ZRkqqvOR6KEst4WrSHFQDeurYSH0QCKHXX0fFwjYIjn1/
 nyYS/d8OH+mrhQUc=;
Received: from smtp1.chinadns.net ([114.67.246.110])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pDmC4-007L4P-Vw for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Jan 2023 12:51:35 +0000
Received: from ielf (unknown [180.117.202.25])
 by smtp1.chinadns.net (DNS Email Server) with ESMTPA id 8AED4C1C5E
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  6 Jan 2023 20:34:46 +0800 (CST)
Date: Fri, 6 Jan 2023 20:34:24 +0800
From: "Davis Wang" <davis.wang@tldschina.com>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20230106203437344027@ygmail.net.cn>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Manager, (Please forward this to your CEO, because this
 is urgent. Thanks!) This email is writing from a Network Service Company
 which is the domain name registration center in Shanghai, China. [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [114.67.246.110 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1pDmC4-007L4P-Vw
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] sourceforge
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
Reply-To: davis.wang@tldschina.com
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IERlYXIgTWFuYWdlciwNCihQbGVhc2UgZm9yd2FyZCB0aGlzIHRvIHlvdXIgQ0VPLCBiZWNhdXNl
IHRoaXMgaXMgdXJnZW50LiBUaGFua3MhKQ0KVGhpcyBlbWFpbCBpcyB3cml0aW5nIGZyb20gYSBO
ZXR3b3JrIFNlcnZpY2UgQ29tcGFueSB3aGljaCBpcyB0aGUgZG9tYWluIG5hbWUgcmVnaXN0cmF0
aW9uIGNlbnRlciBpbiBTaGFuZ2hhaSwgQ2hpbmEuIE9uIEphbnVhcnkgMywgMjAyMywgd2UgcmVj
ZWl2ZWQgYW4gYXBwbGljYXRpb24gZnJvbSBIdWl6aGkgSG9sZGluZ3MgTHRkIHJlcXVlc3RlZCCh
sHNvdXJjZWZvcmdlobEgYXMgdGhlaXIgaW50ZXJuZXQga2V5d29yZCBhbmQgQ2hpbmEgKENOKSBk
b21haW4gbmFtZXMoIHNvdXJjZWZvcmdlLmNuLyBzb3VyY2Vmb3JnZS5jb20uY24vIHNvdXJjZWZv
cmdlLm5ldC5jbi8gc291cmNlZm9yZ2Uub3JnLmNuKS4NCkFmdGVyIGNoZWNraW5nIGl0LCB3ZSBm
aW5kIHRoaXMgbmFtZSBjb25mbGljdCB3aXRoIHlvdXIgY29tcGFueSBuYW1lIG9yIHRyYWRlbWFy
ay4gSW4gb3JkZXIgdG8gZGVhbCB3aXRoIHRoaXMgbWF0dGVyIGJldHRlciwgd2Ugc2VuZCBlbWFp
bCB0byB5b3UgYW5kIGNvbmZpcm0gd2hldGhlciB5b3VyIGNvbXBhbnkgaGF2ZSByZWxhdGlvbnMg
d2l0aCB0aGlzIENoaW5lc2UgY29tcGFueSBvciBub3Q/DQpLaW5kIHJlZ2FyZHMNCkRhdmlzDQot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KTXIuRGF2aXMgV2FuZyB8IFNlcnZpY2VzICYg
T3BlcmF0aW5nIE1hbmFnZXINClRMRHNDSElOQSB8IEhlYWRxdWFydGVycyAgfCB3IHcgd1suXXRs
ZHNjaCBpbmFbLl1jb20NClQ6IDAwODYtMTM0OC0yODE5LTE0NyB8IFRlbDogMDA4Ni0yMS02MTkt
MTg2LTk2IHwgRmF4OiAwMDggNi0yMS02MTktMTg2LTk3DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpUaXA6IFBsZWFzZSBBZGQgbWFpbCBzZW5kZXIg
YWNjb3VudCB0byB5b3VyIGNvbnRhY3RzIHRvIG1ha2Ugc3VyZSBvdXIgcmVzcG9uc2UgZG9lcyBu
b3QgZW5kIHVwIGluIHlvdXIgc3BhbSBmb2xkZXIuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
