Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D59D8AE15D
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Apr 2024 11:52:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rzCpQ-0008Ie-I6;
	Tue, 23 Apr 2024 09:52:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+2752257-5565-v9fs-developer=lists.sourceforge.net@email.on.spiceworks.com>)
 id 1rzCpP-0008IX-9A for v9fs-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 09:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Reply-To:
 Mime-Version:Subject:Message-ID:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dgrmfJe+kctGo/XwZorqmELWa4rj31kWDyU5L/GH+uY=; b=kvk6kluTSFze4cPgJJSz+2GLYl
 IqV0Kjsf+PSJlfX3us98oM+RYrpKYEJVpIfBkZS28yoyeT48ZMQc+cYTrWaXxlwMmbp3N6KLOKWji
 LmxnzCqWEcl3sUR8b7ua64+G/P7xb36joC7LWUXQXREZ1rC1HyHpAfNutRRxzbK1L4ps=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Reply-To:Mime-Version:Subject:
 Message-ID:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dgrmfJe+kctGo/XwZorqmELWa4rj31kWDyU5L/GH+uY=; b=M
 fEH8m//pkG9ZRRonowHtlezmIM+wXLx5fHoWeMKHLgH6C7NmJpIYsUjwBnxhpG7KfZbjsPwDVkfEA
 +T1mb7JOsDplc/SF7mSi/cG/Q4vJz/XBAz9f+LCq1+fph2lpNvnkXN/xjRdkemRTVxOpiHaty6kAE
 oaNXGqJ/jSDlF+vE=;
Received: from o1678974x79.outbound-mail.sendgrid.net ([167.89.74.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rzCpO-0000Q1-8j for v9fs-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 09:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=on.spiceworks.com;
 h=from:subject:mime-version:reply-to:to:content-type:
 content-transfer-encoding:cc:content-type:from:subject:to;
 s=s1; bh=dgrmfJe+kctGo/XwZorqmELWa4rj31kWDyU5L/GH+uY=;
 b=H3t1ZarxB62P0R/G6IuRPSkOlucyIzLUCDtRNUvZ4EvL5oRyEYTA+2qIV5mr5GUKa2Q5
 UNNnOPDVk1e6XRTnbqMtTNVwfw7viRkhxSX1pmOH3vvgopom6MJZdx6YdUEhmfOJFMmn35
 7U9FFTcWw+9wrTCO/G1QR9KzrN9QYpIGGUqUhmlCiPJvi23tARbdgMQzr4fljCli10qzdd
 OlmMM6HQ3SVX1bRI/SksO8/Cdz+b6FN054Iu+4yBAS1qlK3ct+icdi11kf6X9bsMmhRCua
 DP93XLGYooQjSfZKtNmGuJOR1RDJ+gtLdOYcPNPLJ5A0eToaGCLLdYbjBJvD/Mcg==
Received: by filterdrecv-598bd88655-5bb57 with SMTP id
 filterdrecv-598bd88655-5bb57-1-662780A1-12
 2024-04-23 09:34:25.119794924 +0000 UTC m=+906380.466125309
Received: from on.spiceworks.com (unknown) by geopod-ismtpd-29 (SG)
 with ESMTP id PtcG6CVWRFie8Z_8a5g4zA
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Apr 2024 09:34:25.076 +0000 (UTC)
Date: Tue, 23 Apr 2024 09:34:25 +0000 (UTC)
Message-ID: <662780a0c0790_16c587c31394513@helpdesk-ticket-outbound-email-jobs-6db5bb8bc8-7wrvg.mail>
Mime-Version: 1.0
X-SG-EID: =?us-ascii?Q?u001=2EnZglMqd00Mp0TzWELqcOMlM1lhSowfq=2FXUPu+DFVGxvCGRZLHZXAJZ7Pp?=
 =?us-ascii?Q?9CvC4iyCTsPXdHGheZtR9cUaOtSwaoPMIgi+PId?=
 =?us-ascii?Q?Vjdb+5oTshq1dKXdYGny=2F4+NAIPH7iWDEg9fIX5?=
 =?us-ascii?Q?+hVYnR53YoqthLSBYXRJhbbaEjJZ5m03bZF1PMN?=
 =?us-ascii?Q?lzRjN68HPwJDwlzLAPjgZAa1EqmmzNl61kalpD5?=
 =?us-ascii?Q?HhFyYuzmQ64s92xmwfTLFXGBewaLOI7m3B3Tg15?=
 =?us-ascii?Q?pr4e=2F1B5yejNnGarOrAp5V6FtQUsUTLbLOSD1Sn?=
 =?us-ascii?Q?R8HVGjgbSNGQbRQh+O=2FN+0cQyFw3H?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: u001.gmpV4gFpr9jxF52dwbVvCQ==
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This is a notification from the Help Desk. -- Reply above
 this line to add a comment -- header logo You opened a new ticket. 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: spiceworks.com]
 1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
 blocklist [URIs: join-ethena.pro]
 0.1 ACT_NOW_CAPS           BODY: Talks about 'acting now' with capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_PDS_PRO_TLD          .pro TLD [URI: join-ethena.pro (pro)]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [167.89.74.79 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rzCpO-0000Q1-8j
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W1RpY2tldCAjMTQxNjZdIPCfmoAgW0V4Y2x1?=
 =?utf-8?q?sive_Airdrop_=F0=9F=94=A5=5D=3A_ENA_Tokens_from_Ethena_-_Airdro?=
 =?utf-8?q?p_is_Live_Now!_=F0=9F=8C=9F?=
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
From: =?utf-8?b?8J+SjiBFdGhlbmEgJiBBaXJkcm9wIPCfko4=?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?b?8J+SjiBFdGhlbmEgJiBBaXJkcm9wIPCfko4=?=
 <help@ethena-mails.on.spiceworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhpcyBpcyBhIG5vdGlmaWNhdGlvbiBmcm9tIHRoZSBIZWxwIERlc2suDQotLSBSZXBseSBhYm92
ZSB0aGlzIGxpbmUgdG8gYWRkIGEgY29tbWVudCAtLQ0KDQpoZWFkZXIgbG9nbw0KDQpZb3Ugb3Bl
bmVkIGEgbmV3IHRpY2tldC4NCg0KIzE0MTY2IPCfmoAgW0V4Y2x1c2l2ZSBBaXJkcm9wIPCflKVd
OiBFTkEgVG9rZW5zIGZyb20gRXRoZW5hIC0NCkFpcmRyb3AgaXMgTGl2ZSBOb3chIPCfjJ8NCg0K
8J+SjiBFdGhlbmEgJiBBaXJkcm9wIPCfko4gIHdyb3RlOg0KRU5BQkxJTkcgVEhFIElOVEVSTkVU
IEJPTkRfDQoNCldlJ3JlIHRocmlsbGVkIHRvIGFubm91bmNlIGFuIGV4Y2x1c2l2ZSBBaXJkcm9w
IGZyb20gRXRoZW5hLA0KYnJpbmdpbmcgeW91IGEgb25lLW9mLWEta2luZCBvcHBvcnR1bml0eSEg
8J+OiQ0KDQpKb2luIG91ciBzcGVjaWFsIHByb21vdGlvbiB0byBnZXQgeW91ciBoYW5kcyBvbiBz
b21lIEZSRUUgRXRoZW5hDQooRU5BKSB0b2tlbnMuIEl0J3MgZWFzeSBhbmQgcmV3YXJkaW5nIQ0K
DQrwn46vIERvbuKAmXQgV2FpdCwgQWN0IE5vdyEg8J+OrzogVGhpcyBpcyBhIGxpbWl0ZWQtdGlt
ZSBvZmZlci4gTWFrZSBzdXJlDQp0byBzZWN1cmUgeW91ciBzcG90IGFuZCBtYXhpbWl6ZSB5b3Vy
IGNyeXB0byBwb3J0Zm9saW8uIExldCdzDQpib29zdCB5b3VyIGludmVzdG1lbnQgdG8gdGhlIG5l
eHQgbGV2ZWwuDQoNCkNsYWltIE5vdyDwn5GJOiBodHRwczovL2pvaW4tZXRoZW5hLnBybw0KDQpM
ZXTigJlzIG1ha2UgYSBzcGxhc2ggaW4gdGhlIGNyeXB0byB3b3JsZCB0b2dldGhlciEg8J+MivCf
moAuDQoNCnVubmFtZWQuZ2lmDQoNCmxvZ28tZXRoZW5hLmpwZw0KDQpXaHkgZGlkIHlvdSByZWNl
aXZlIHRoaXMgZW1haWw/DQoNCkdsYWQgeW91IGFza2VkISBXZSdyZSB1c2luZyB0aGUgU3BpY2V3
b3JrcyBDbG91ZCBIZWxwDQpEZXNrDQp0byB0cmFjayBpc3N1ZXMgYW5kIGdldCBhbGwgeW91ciBy
ZXF1ZXN0cyBzb3J0ZWQgaW4gYQ0Kc25hcC4gSGF2ZSBhIGNvbmNlcm4/IEp1c3QgcmVwbHkgdG8g
dGhpcw0KZW1haWwsIGFuZCB3ZSdsbCBiZSBpbiB0b3VjaC4gVGhhbmtzIQ0KDQpUZXJtcyBvZiBV
c2UgKCBodHRwczovL3d3dy5zcGljZXdvcmtzLmNvbS90ZXJtcy8gKQ0KfA0KUHJpdmFjeSBQb2xp
Y3kgKCBodHRwczovL3d3dy5zcGljZXdvcmtzLmNvbS9wcml2YWN5LyApDQp8DQpDb29raWUgUG9s
aWN5IA0KKCBodHRwczovL3d3dy5zcGljZXdvcmtzLmNvbS9wcml2YWN5L2Nvb2tpZXMvICkNCnwN
ClNlY3VyaXR5IERldGFpbHMgDQooIGh0dHBzOi8vd3d3LnNwaWNld29ya3MuY29tL3N1cHBvcnQv
c2VjdXJpdHktY2VudGVyLyApCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdjlmcy1kZXZlbG9wZXIK
