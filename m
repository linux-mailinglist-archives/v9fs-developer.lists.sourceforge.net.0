Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFAB23383F
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jul 2020 20:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:Mime-Version:Date:To:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=GT5Kv5JDFADlX3QZO9f3QBEiCD/573/h5VeVstQSeR4=; b=lP7VrkuDP/99SYg83sAGbLXgD
	xRQuT/BBrpZ+I7FxgJ88zZOAzIrjJqnq+jqLoNw4yf7cX495S7l7ptt+Rmg6WXrFIo3ltuR635XXf
	ZR4p2sShAHOclbSd1GlSCQSDRm1BXJyVgc+JjNBbf+EhZT0e+oDNu2PeQ8tv3dhEONBOc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k1D6Z-0006Hl-FG; Thu, 30 Jul 2020 18:16:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <01010173a0f06977-f6806f3d-ebf8-49cb-a522-7bc74cecac37-000000@us-west-2.amazonses.com>)
 id 1k1D6Y-0006HU-1N
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 18:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8YNbv3Wpe1CZSZQL5asq+WHesA3c4wg7LGATcwma1Oc=; b=TgiOdhH5wBSyAkUzrVPQ9zyz6m
 AL40l78bqQPQ2urcdCpa0luBRnqrE7RTpx0+kLuGjcL8AsnjnDvy/WGkPNb8XG5HFRCGJYYxT4UqG
 drvlKSZvMR+DCzl1D8RndwY2KoqDXsgtzbWyG5P36/U56yMNCdG0tyoR1hTJWXLaMG0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8YNbv3Wpe1CZSZQL5asq+WHesA3c4wg7LGATcwma1Oc=; b=f
 s/ONYo+Yr4piMYnD4vaBMLbZeO3k1Bpeug1NS2UuBTtzO0tFeyDB5xquTt74yroc+uAZgaK5nGh9X
 h9r0EDorLJrFaYUhJRjJ99oV07WL9JqMVSAFomEG/WbfmOFQ00Q93Dg8jhcsmXd4r8hPBiWEqJQXj
 jI3fvF09c3WMg5Kc=;
Received: from a27-113.smtp-out.us-west-2.amazonses.com ([54.240.27.113])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1k1D6U-004YWT-4I
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 18:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1596132977;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=8YNbv3Wpe1CZSZQL5asq+WHesA3c4wg7LGATcwma1Oc=;
 b=NsM216NAeASM0TKy6Rulwck1GONNXVR/KTUm92tukIkMFS7RHUHe0icYehnToAI9
 fT+B4UzJbnI7VYdO8caA8/52dqIk1eq6D+iFAV3Ghk+eZhhjRy5V4vPycw/zEttreM9
 +JmJIybv6udiELEDWPWB+ppGyUU8i4Z0rilrl7FY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1596132977;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=8YNbv3Wpe1CZSZQL5asq+WHesA3c4wg7LGATcwma1Oc=;
 b=QIle9mGrIja/7+DvAUu2gjH9n6ob1KrkOBgBbmWuVK28OxyzE6eVQ/VcdTQWBUsE
 /sVDmMoPFzR2+EWjJoUmiwNXB2NtBnbntmueUc8XQ557Q8xQZvwFSIlD/jODK/TVvjY
 d2Is/esXmGhLFXuQJuSN1lPrGe9YFIKBwlobxcSc=
To: =?UTF-8?Q?=27v9fs-developer=40lists=2Esourceforge=2Enet=27?=
 <v9fs-developer@lists.sourceforge.net>
Date: Thu, 30 Jul 2020 18:16:17 +0000
Mime-Version: 1.0
References: <mail.ef3b63d3-86b1-48e2-a946-cc3e2093d04e@storage.wm.amazon.com> 
 <mail.ef3b63d3-86b1-48e2-a946-cc3e2093d04e@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdZmnS/4CFcpnRWfQaiMOpdoa0eB6g==
Thread-Topic: RE: Altium - Proposal
X-Wm-Sent-Timestamp: 1596132976
Message-ID: <01010173a0f06977-f6806f3d-ebf8-49cb-a522-7bc74cecac37-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.07.30-54.240.27.113
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.27.113 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.27.113 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k1D6U-004YWT-4I
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Altium - Proposal
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
bD8gCgoKS2luZGx5IGxldCBtZSBrbm93IHlvdXIgdGFyZ2V0IGF1ZGllbmNlIEpvYiBUaXRsZXMg
JiBHZW9ncmFwaHkgdGhhdCB5b3Ugd2lzaCB0byB0YXJnZXQsIHNvIHRoYXQgSSBjYW4gZ2V0IGJh
Y2sgd2l0aCB0aGUgY291bnRzLCBwcmljaW5nIGFuZCBhbGwgdGhlIGRldGFpbHMgZm9yIHlvdXIg
cmV2aWV3LgoKwqAKQXBwcmVjaWF0ZSB5b3VyIHJlc3BvbnNlLgoKwqAKUmVnYXJkcywKCktlbHNl
eSBDb29wZXIgLSBNYXJrZXRpbmcgRXhlY3V0aXZlCgrCoArCoApIaSwKCsKgCldvdWxkIHlvdSBs
aWtlIHRvIHNlbmQgaW4geW91ciBCdXNpbmVzcyBQcm9wb3NhbHMvTmV3c2xldHRlciB0byBrZXkg
ZGVjaXNpb24gTWFrZXJzIGZyb20gY29tcGFuaWVzIGN1cnJlbnRseSB1c2luZyBBbHRpdW0gU29m
dHdhcmU/CgrCoApUaXRsZXMgTGlrZTrCoCBJVCBEZWNpc2lvbiBNYWtlcnMsIEMtbGV2ZWwsIE1h
bmFnZXJzIGFuZCBvdGhlciBqb2IgdGl0bGVzIGFzIHBlciB5b3VyIHJlcXVpcmVtZW50LiAKCsKg
CktpbmRseSBsZXQgbWUga25vdyB0aGUgSm9iIFRpdGxlcyAmIEdlb2dyYXBoeSB0aGF0IHlvdSB3
aXNoIHRvIHRhcmdldCwgc28gdGhhdCBJIGNhbiBnZXQgYmFjayB3aXRoIHRoZSBzYW1wbGVzLCBj
b3VudHMgYW5kIG1vcmUgZGV0YWlscyBmb3IgeW91ciByZXZpZXcuIAoKwqAKV2UgY2F0ZXIgb3Ro
ZXIgSW5kdXN0cnkgY29udGFjdHMgc3VjaCBhczogTWFudWZhY3R1cmluZyzCoENvbnN0cnVjdGlv
bizCoEVkdWNhdGlvbizCoFJldGFpbCzCoEhlYWx0aGNhcmUsIEVuZXJneSwgVXRpbGl0aWVzICYg
V2FzdGUgVHJlYXRtZW50LCBUcmFuc3BvcnRhdGlvbiwgZXRjLiAKCsKgCkxvb2tpbmcgZm9yd2Fy
ZCB0byB5b3VyIHJlc3BvbnNlLgoKwqAKUmVnYXJkcywKCktlbHNleSBDb29wZXIgLSBNYXJrZXRp
bmcgRXhlY3V0aXZlCgrCoApTdGF5IHNhZmUuCgpSZXBseSBiYWNrIOKAnFBhc3PigJ0gZm9yIG5v
IGZ1cnRoZXIgZW1haWxzLgoKwqAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
