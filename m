Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAC88D4472
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 May 2024 06:13:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sCXAm-0003r5-AK;
	Thu, 30 May 2024 04:13:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Sales=hf1.cncmfgcn.com@bounces.hf1.cncmfgcn.com>)
 id 1sCXAk-0003ql-GU for v9fs-developer@lists.sourceforge.net;
 Thu, 30 May 2024 04:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7A1tHSDIXuggoby1+J96xSMTCys0hWFZcMrQQXf+8Jo=; b=kZYsb3qCnDDePGuj1wVE/lyq6c
 njmAhjg6kjlg7jo/aJwGBUu+o9Fws+WJzWwc20HM/YconRx2fftfy2wUUd59SdU90NsJCo2sPeKJE
 VEwhOM7+gVPnjZHfhtcVCoptrzet6sukJgJCJalzI9KC0KlDfad40XZZJjPJxvnd18yo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=7A1tHSDIXuggoby1+J96xSMTCys0hWFZcMrQQXf+8Jo=; b=PtGH7nhcjUzQ
 VLnY3Ae4Kt6gjujGqZ5vvLiJTy/LTOxyZYxsk48EkJ+dSA0xfp8Dmu7SFQzeQktqhSW4UUjw7s+UG
 +lADsGFY3aOVq6C+xdOnidJbIM+UnvuO+KVV9GMqHAp72v/9xv4kIPNcNvwCSQ5xoZWZ2vvWonf0/
 dN9EY=;
Received: from mkt1.getchmfg.com ([216.169.98.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sCXAf-0007fz-RN for v9fs-developer@lists.sourceforge.net;
 Thu, 30 May 2024 04:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=hf1.cncmfgcn.com; s=api;
 c=relaxed/simple; t=1717042398;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post;
 bh=7A1tHSDIXuggoby1+J96xSMTCys0hWFZcMrQQXf+8Jo=;
 b=CprcUMabWa4WTskp6Ane9PZCp8Lr6UtGcaz5ayp+LW0VyTCvcuuwCnnnwIZg4T7Soq0N1QU0tRV
 Lkl+4cGkNXvpPhURNyzwHLAQibsSirLw66EarpjRBfQz5+f5XIyev01eZhVCaiLl8rANPDQE0Hr/H
 rpEwZk1UEmoQYqeIRzk=
From: Peter Lee <Sales@hf1.cncmfgcn.com>
Date: Thu, 30 May 2024 04:13:18 +0000
Message-Id: <4un6pqxtokwb.zALpWdAjZgzl7nTZuUnoJg2@tracking.hf1.cncmfgcn.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Msg-EID: zALpWdAjZgzl7nTZuUnoJg2
MIME-Version: 1.0
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear manager, I hope this message finds you well. My name
 is Peter and I am reaching out on behalf of HF Precision from Shenzhen, China.
 It's widely acknowledged that having an experienced CNC machini [...] 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cncmfgcn.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.169.98.172 listed in list.dnswl.org]
 0.5 FROM_DOMAIN_NOVOWEL    From: domain has series of non-vowel letters
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [216.169.98.172 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.169.98.172 listed in wl.mailspike.net]
 0.5 URI_NOVOWEL            URI: URI hostname has long non-vowel sequence
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
 words
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sCXAf-0007fz-RN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] CNC Machining Experts at Your Service
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
Reply-To: Peter Lee <Sales@HFmachining.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RGVhciBtYW5hZ2VyLApJIGhvcGUgdGhpcyBtZXNzYWdlIGZpbmRzIHlvdSB3ZWxsLiBNeSBuYW1l
IGlzIFBldGVyIGFuZCBJIGFtIHJlYWNoaW5nCm91dCBvbiBiZWhhbGYgb2YgSEYgUHJlY2lzaW9u
IGZyb20gU2hlbnpoZW4sIENoaW5hLgpJdCdzIHdpZGVseSBhY2tub3dsZWRnZWQgdGhhdCBoYXZp
bmcgYW4gZXhwZXJpZW5jZWQgQ05DIG1hY2hpbmlzdCBhdAp5b3VyIHNlcnZpY2UgY2FuIHNpZ25p
ZmljYW50bHkgZW5oYW5jZSB0aGUgcHJvZHVjdGlvbiBvZiBDTkMKY29tcG9uZW50cy4gTm90IG9u
bHkgY2FuIHRoZXkgZWZmaWNpZW50bHkgbWFudWZhY3R1cmUgcGFydHMsIGJ1dCB0aGV5CmNhbiBh
bHNvIGRldmVsb3Agb3V0c3RhbmRpbmcgbWFjaGluaW5nIHByb2dyYW1zLCBlbnN1cmluZyBzbW9v
dGgKcHJvZHVjdGlvbiBwcm9jZXNzZXMuCldlIHVuZGVyc3RhbmQgdGhlIHBhcmFtb3VudCBpbXBv
cnRhbmNlIG9mIGNvc3QgYW5kIHF1YWxpdHkgd2hlbiBpdApjb21lcyB0byB5b3VyIHByb2plY3Qu
IE1hbnVmYWN0dXJpbmcgcGFydHMgaW4gdGhlIHNob3J0ZXN0IHBvc3NpYmxlCnRpbWUgY2FuIHJl
ZHVjZSB5b3VyIHBhcnQgY29zdHMsIHdoaWxlIGRldmVsb3BpbmcgZXhjZXB0aW9uYWwgQ05DCm1h
Y2hpbmluZyBwcm9ncmFtcyBjYW4gbWluaW1pemUgcG90ZW50aWFsIGlzc3VlcyB3aXRoIHRoZSBw
YXJ0cy4KU2hvdWxkIHlvdSByZXF1aXJlIHByb2Zlc3Npb25hbCBDTkMgcHJlY2lzaW9uIGNvbXBv
bmVudCBtYW51ZmFjdHVyaW5nCnNlcnZpY2VzLCBvdXIgdGVhbSBpcyByZWFkeSB0byBwcm92aWRl
IHN1cHBvcnQgYXQgYW55IHRpbWUuIFdoZXRoZXIKeW91IG5lZWQgYSBjdXN0b20gcHJvdG90eXBl
LCBsb3ctdm9sdW1lIHByb2R1Y3Rpb24sIG9yIGhpZ2gtdm9sdW1lCnByb2R1Y3Rpb24sIG91ciBz
ZXJ2aWNlIGlzIHNlY29uZCB0byBub25lLiDCoApQbGVhc2UgZmVlbCBmcmVlIHRvIHJlYWNoIG91
dCB0byB1cywgYW5kIGxldCB1cyBjb2xsYWJvcmF0ZSB0byBicmluZwpzdWNjZXNzIHRvIHlvdXIg
cHJvamVjdCEKQmVzdCByZWdhcmRzLApQZXRlciBMZWUKU2FsZXMgRGlyZWN0b3IKU2FsZXNASEZt
YWNoaW5pbmcuY29tCkhGIFByZWNpc2lvbiBNYWNoaW5pbmcKVW5zdWJzY3JpYmUKWy9odHRwOi8v
dHJhY2tpbmcuaGYxLmNuY21mZ2NuLmNvbS90cmFja2luZy91bnN1YnNjcmliZT9kPVJhRThzeklk
bG51R2tmdzVxU2xaNlRXZHBwaVBqU3JZd1htLWdMWTBNOUZCTDIyMUdtT203VktobnJlbXp4RGNM
cUN5VE5iVTB3ODFwV2swMlFTQVIxNmNaSnc1Rk1JSXlJdDdJMGttN3VSYllBcDNiTVpiMTJJVzhm
bWtVZDNubWVYTEM4ZDJmbG9ZNm9TTm5UajRzX3AtRFZfcVZud0tOVlJUX3RQdjBQQU5zdHVtUk55
QmNEclpGdDQzM3RVOEY4VEZwT0s2ZGlaVDVnSjBWWTlKQzdzOUdpMUNXSW5rd2Ruc3p1SGJEeUc3
Wk1aWEpHc0xhZ3hwcWRxajlMRzBFLTdIbnNLSmxfb2xnQnBMXzFpUVZDaVE3STY3ckk4YmpoS3pa
eDM0ZG1LQ2tsekt3RjJxZFJkSEF5Rm5mZ0RNSGxWRjhVZTZOSlVJc2YwWUh6Z09VRHg4T2hBR3gx
Y2VTb1F1d3AwWXRld0N0SnBkcnNxVi1iWFZJMkRhYjVvVjRfT2FBYW5FbVRxbjhWbnAtY1lZeTEy
WmxXckV1TEo1ZWhtOWgxU25ud1RramFxSmxKWkUzalFUNTZwRkp1M05OTnFFNnRwTEp1TDQtUzZS
cVl1SWg0TkwxbzV4dzAyNDd2c09zQ3ZaNUpPRHVOXzVPVy1BUnV0RDhMYi1hTDIzX0RhOFhXSF9D
ZGZrTFhkOUVvaEZyRUExXQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
