Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 811D61EA604
	for <lists+v9fs-developer@lfdr.de>; Mon,  1 Jun 2020 16:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:Mime-Version:Date:To:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=Xjlwsc0ozVzM4bhO7CYRkfHllYnH5SyLOqOeUKjFJL8=; b=ZIldV1fjkYOeeYMTO3BHwGii+
	m3BsxSzy1vm2pubnyB2JYLIO/gYVPSBhsBV7kxxk3U4vIfyyIKzvV7puP2oR9ZeNKbBLdXfo5gdGl
	hiSnkizRRzfBbW3d7W6HCkBaIsn9un5q3t8EYLFkGQva7oeVTFjR7DrnvLN2yrGBXiWBI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jflao-0005nm-VM; Mon, 01 Jun 2020 14:39:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <010101727052046c-a27681a0-a7d2-4caa-b3ff-b124d5ddc876-000000@us-west-2.amazonses.com>)
 id 1jflam-0005nd-Og
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Jun 2020 14:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/fF2QzSe0YZlW6X12Dv9et93Zqit7Xp3zs7ZODa0a84=; b=mtWoYkcCSzU6EWl7A4sBA80wnD
 SUhF6zmRopa1cXJrP8Qz9D/gQxR+iOvoLQY4lWWJy6EunLQgDYPNqAEcPBYpoTlY2bWpEMU569VQ3
 Mr4xWXxcv7MiBt2Gyau9RBKJvfM74MH7qk01kVZsohbiWLwOAvieofJkbHspBBFqsIFc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/fF2QzSe0YZlW6X12Dv9et93Zqit7Xp3zs7ZODa0a84=; b=Z
 RKyFZYTarJsaaUyknjaCBV+EommWJS44kVMP6XFpz5RdV+JcDeuIVPEm0qaH3Kmfqqvh5NHlMwW+Q
 wEiQ1TNWqdwf/IzWDgJmduLxyLMMFtFcVt4yOIrTeSgg7CDJtgGSAFSO1Hsob5hh50/9dmnMCCrC5
 5k1tbg7Sn8iOlOLs=;
Received: from a27-228.smtp-out.us-west-2.amazonses.com ([54.240.27.228])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1jflaf-006xQW-AM
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Jun 2020 14:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1591022322;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=/fF2QzSe0YZlW6X12Dv9et93Zqit7Xp3zs7ZODa0a84=;
 b=joo5durm+KKKN71BgVRfJgei074XgrcjG00S/UkoG4Jb183z/wcmRvU4dKyCnQqv
 L1ezc7D6fssaZznycrItNA9JX7vsjCxaQqxqCIUPpfdjIPVvBx1Pknpmydyi38trDQg
 pOmm8NMcsqvQG9JrWVpxVWh/9U3BLuCOFEQsd2U4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1591022322;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=/fF2QzSe0YZlW6X12Dv9et93Zqit7Xp3zs7ZODa0a84=;
 b=klgLn9+plDJ0rH2vn8E8saecUU+bPnEb25wuHffLnjmASd/B4YPLloRAP5aBNQUz
 oFDzDT+saBmPjwalOv8GWh19EdNgN1+RznPcYDoFfH9oxGCeaIkAXHNxRulNfm3QzPM
 q6vAjtannHd3L0HHYh0S7Q+3JFfJCPds+olRXrzI=
To: =?UTF-8?Q?=27v9fs-developer=40lists=2Esourceforge=2Enet=27?=
 <v9fs-developer@lists.sourceforge.net>
Date: Mon, 1 Jun 2020 14:38:42 +0000
Mime-Version: 1.0
References: <mail.6ef264f7-b0cf-41ca-9b6c-6e9b0400bb18@storage.wm.amazon.com> 
 <mail.6ef264f7-b0cf-41ca-9b6c-6e9b0400bb18@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdY4IUbxL8fmaKqSTEmrTINLCuuDuQ==
Thread-Topic: RE: Proposal
Message-ID: <010101727052046c-a27681a0-a7d2-4caa-b3ff-b124d5ddc876-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.06.01-54.240.27.228
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.27.228 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.27.228 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jflaf-006xQW-AM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Proposal
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
From: =?UTF-8?Q?Kelsey_Cooper?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?Kelsey_Cooper?= <kelsey@konnectglobalmarketing.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgoKRGlkIHlvdSBnZXQgYSBjaGFuY2UgdG8gZ28gdGhyb3VnaCBteSBwcmV2aW91cyBlbWFp
bD8gCgoKS2luZGx5IGxldCBtZSBrbm93IHlvdXIgdGFyZ2V0IGF1ZGllbmNlIChTZWN0b3JzLCBK
b2IgVGl0bGVzICYgR2VvZ3JhcGh5KSB0aGF0IHlvdSB3aXNoIHRvIHRhcmdldCwgc28gdGhhdCBJ
IGNhbiBnZXQgYmFjayB3aXRoIHRoZSBjb3VudHMsIHNhbXBsZXMgYW5kIHByaWNpbmcgZGV0YWls
cyBmb3IgeW91ciByZXZpZXcuIAoKwqAKQXBwcmVjaWF0ZSB5b3VyIHJlc3BvbnNlLgoKwqAKVGhh
bmtzLAoKS2Vsc2V5IENvb3BlciAtIE1hcmtldGluZyBFeGVjdXRpdmUKCsKgCsKgCkhpLAoKwqAK
V291bGQgeW91IGxpa2UgdG8gY29ubmVjdCB3aXRoIGtleSBkZWNpc2lvbiBtYWtlcnMgZnJvbSB0
aGUgYmVsb3cgc2VjdG9yczsKCsKgCk1hbnVmYWN0dXJpbmcsIENvbnN0cnVjdGlvbiwgRWR1Y2F0
aW9uLCBSZXRhaWwsIEhlYWx0aGNhcmUsIEVuZXJneSwgVXRpbGl0aWVzICYgV2FzdGUgVHJlYXRt
ZW50LCBUcmFuc3BvcnRhdGlvbiwgQmFua2luZyAmIEZpbmFuY2UsIE1lZGlhICYgSW50ZXJuZXQs
IEhvc3BpdGFsaXR5LCBldGMuIAoKwqAKWW91IGNhbiBjb250YWN0IHRoZW0gdmlhIGRpcmVjdMKg
YnVzaW5lc3MgZW1haWxzIG9yIHBob25lIG51bWJlcnPCoGZvciB5b3VyIHNhbGVzIGFuZCBtYXJr
ZXRpbmcgaW5pdGlhdGl2ZXMuIAoKwqAKS2luZGx5IGxldCBtZSBrbm93IHRoZSBTZWN0b3JzLCBK
b2IgVGl0bGVzICYgR2VvZ3JhcGh5IHRoYXQgeW91IHdpc2ggdG8gdGFyZ2V0LCBzbyB0aGF0IEkg
Y2FuIGdldCBiYWNrIHdpdGggdGhlIHNhbXBsZXMsIGNvdW50cyBhbmQgbW9yZSBkZXRhaWxzIGZv
ciB5b3VyIHJldmlldy4gCgrCoApMb29raW5nIGZvcndhcmQgdG8geW91ciByZXNwb25zZS4KCsKg
ClRoYW5rcywKCktlbHNleSBDb29wZXIgLSBNYXJrZXRpbmcgRXhlY3V0aXZlCgrCoApTdGF5IHNh
ZmUuCgpSZXBseSBiYWNrIOKAnFBhc3PigJ0gZm9yIG5vIGZ1cnRoZXIgZW1haWxzLgoKwqAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
