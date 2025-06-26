Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 892AAAEA308
	for <lists+v9fs-developer@lfdr.de>; Thu, 26 Jun 2025 17:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:References:MIME-Version:To:From:Date:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=zxbplCMaqVoRwvct5Susa++TihcuzRRrmil2LF39VkQ=; b=bhDKdyyMWtbDOOTyWSg+O8czwz
	vdDdCjcG3QxiawGRw2pZPKcKvisrfBXflb75XispNLd3F3kLvV//1KBKc9EkW/dDEYSmO50AZiB6C
	oapINKethsz7mM8uS8XfUYiaX+uFojZwD85MIK2FSsoI1A5krJdcRNZazKL5UIAnqHxc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uUoy2-0001fb-2F;
	Thu, 26 Jun 2025 15:56:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leona.krum@chinaplasmould.com>) id 1uUoy0-0001fS-6S
 for v9fs-developer@lists.sourceforge.net;
 Thu, 26 Jun 2025 15:56:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:To:Reply-To:
 From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PpSG6+f5q2Wsdml3rrpIPK6DeRaUcT4plJLXHBCvmsw=; b=ZjbZA/euyBX4S5o98Z1ZZ38AMd
 obPj2HHbdlnFmqZRztP5eSfHwVu2a0Q+AfmhQcFi+eQdxpEY8M2ywSe3A0N3PC9DgbaO8pibTXZJF
 BGXfsCUmUR/QbT+YBcj2b/gIgpFwss3+impkqPCNz1BGszQjGbTXpEGFGrbLMAZP84C0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PpSG6+f5q2Wsdml3rrpIPK6DeRaUcT4plJLXHBCvmsw=; b=M
 4KebDPhtHk6rPtj47+cKCTnQ5R3QxxRVISUwANlr9l6mqz1sW+DkcG1EAvwo7FsFQESnb0Eo9gG99
 ZhU8Wtw9HL9XdJKxcdD72u3n+J+iGFpvqNZt0lSrO0JwsdvqCyPmtuJLUXYtE30UsP1ZKTfG0qcLI
 yuFJZA6Y13LK2jRw=;
Received: from productech.custommoldandmachining.com ([104.168.83.241])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uUoxy-0000oP-Sr for v9fs-developer@lists.sourceforge.net;
 Thu, 26 Jun 2025 15:56:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=selector2;
 d=sh.abgev.com; 
 h=Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:
 References; i=gwendolyn@sh.abgev.com;
 bh=PpSG6+f5q2Wsdml3rrpIPK6DeRaUcT4plJLXHBCvmsw=;
 b=G0uqX7ltKgD65khMeOFKjGXh5gsdAboAYxFXxe2rwzviCrCzQDg9GvK519nRy1+TAd0LPRVtyXpx
 0lOyjlV1FGTO9gwDNumWCa9quR7G1ihcxYkNLzLx1u0z5O9d6elo4ST42OAxmjRQFyVvFwfXKTk0
 SWRRSaSkFALxQKFkzU4=
DKIM-Signature: v=1; a=rsa-sha256;
 bh=PpSG6+f5q2Wsdml3rrpIPK6DeRaUcT4plJLXHBCvmsw=; d=sh.abgev.com;
 h=Message-ID: Date: Subject: From: Reply-To: To: MIME-Version: Content-Type:
 References; i=@sh.abgev.com; s=mailer; c=relaxed/relaxed; t=1750953396;
 b=LJ/M5JH36pkpdTk0UK/5VJVCvbVlkgS/Xb4I1tXgPG7J6lrYbtIVsofQkBcSd15jU4N1899jq
 mVEObx2SbNIW+uIHI4q4u/+b9rUDElNuBMOGvxg30JqH1zKB1s/sykBzBLw+FpYDC6ZZPKhEr
 Uki6PlB6ZdfGNtu5HPkbJiduYU0IN+mFb15oen5JmaIsp0nfDC5vZt6G234Vwds/2jSjKLyCC
 bk7unM7V2frqRre4VvJQ3mObTKn8rv4ch3TSpYJlt6zJxlhztehpRjb/7dpodbm1JnUEC9uc4
 I/aj2yBG/MsI3h2ZMYszhw33BC2FN0cinMKvUJIameF/OzZXKA==
Message-ID: <23c91445941e199833b0948262b4edb1df904a16@chinaplasmould.com>
Date: Thu, 26 Jun 2025 15:56:35 +0000
From: Fe Mcgaffee <gwendolyn@sh.abgev.com>
To: Vfs developer <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
References: ze3908j0bdb2e
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Vfs developer, I trust this email finds you in good
 spirits and excellent health. My purpose is to introduce our company, which
 has established itself as a top-tier manufacturer specializing in precision
 metal casting and machining services. 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
X-Headers-End: 1uUoxy-0000oP-Sr
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Investment casting forms the foundation of our
 approach to delivering economical hardware solutions
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
Reply-To: Fe Mcgaffee <info@en.fastchng.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IERlYXIgVmZzIGRldmVsb3BlciwKSSB0cnVzdCB0aGlzIGVtYWlsIGZpbmRzIHlvdSBpbiBnb29k
IHNwaXJpdHMgYW5kIGV4Y2VsbGVudCBoZWFsdGguCgpNeSBwdXJwb3NlIGlzIHRvIGludHJvZHVj
ZSBvdXIgY29tcGFueSwgd2hpY2ggaGFzIGVzdGFibGlzaGVkIGl0c2VsZgphcyBhIHRvcC10aWVy
IG1hbnVmYWN0dXJlciBzcGVjaWFsaXppbmcgaW4gcHJlY2lzaW9uIG1ldGFsIGNhc3RpbmcgYW5k
Cm1hY2hpbmluZyBzZXJ2aWNlcy4KCldpdGggYSBoaXN0b3J5IGRhdGluZyBiYWNrIDI1IHllYXJz
IChzaW5jZSBvdXIgZXN0YWJsaXNobWVudCBpbiAyMDAwKSwKd2UgaGF2ZSBtYWludGFpbmVkIGZv
Y3VzIG9uIGRlbGl2ZXJpbmcgc3VwZXJpb3IgcXVhbGl0eSBjb21wb25lbnRzCnRocm91Z2ggc29w
aGlzdGljYXRlZCBtYW51ZmFjdHVyaW5nIGFwcHJvYWNoZXMgc3VjaCBhcyBpbnZlc3RtZW50CmNh
c3Rpbmcgc29sdXRpb25zLCBzYW5kLWNhc3Rpbmcgc3lzdGVtcywgZGllY2FzdGluZyB0ZWNobm9s
b2dpZXMsCmZvcmdpbmcgb3BlcmF0aW9ucywgYW5kIENOQyBtYWNoaW5pbmcgc2VydmljZXMuIE91
ciBmYWNpbGl0aWVzIGZlYXR1cmUKc3RhdGUtb2YtdGhlLWFydCBlcXVpcG1lbnQgaW5jbHVkaW5n
IGZvdXItYXhpcy8gZml2ZS1heGlzIHByZWNpc2lvbgptYWNoaW5lcyB0aGF0IHN1cHBvcnQgY29t
cGxleCBpbmR1c3RyaWFsIGFwcGxpY2F0aW9ucy4KCldpdGggYSBzdHJvbmcgcXVhbGl0eSBmb3Vu
ZGF0aW9uIHN1cHBvcnRlZCBieSBjZXJ0aWZpY2F0aW9ucyBsaWtlIElTTwo5MDAxL1RTLTE2OTQ5
L1TDnFYgc3RhbmRhcmRzIHdlIGd1YXJhbnRlZSBpbnRlcm5hdGlvbmFsIGNvbXBsaWFuY2UKd2hp
bGUgbWFpbnRhaW5pbmcgYW4gZXh0ZW5zaXZlIGV4cG9ydCBuZXR3b3JrIHNlcnZpbmcgY2xpZW50
cyBpbiBOb3J0aApBbWVyaWNhL0V1cm9wZS9BUEFDL0FmcmljYS4KCldlIGFyZSBlbnRodXNpYXN0
aWMgcmVnYXJkaW5nIHBvc3NpYmlsaXRpZXMgd2hlcmUgb3VyIHNlcnZpY2VzIGNvdWxkCmJlIGlu
dGVncmF0ZWQgc2VhbWxlc3NseSB3aXRoaW4gdGhlIGZyYW1ld29yayBvZiBtYW51ZmFjdHVyaW5n
CmFjdGl2aXRpZXPigJRwbGVhc2UgZG8gbm90IGhlc2l0YXRlIGNvbnRhY3Rpbmcgb3Vyc2VsdmVz
IHdoZW5ldmVyIGl0J3MKbW9zdCBjb252ZW5pZW50IGZvciBpbml0aWF0aW5nIHN1Y2ggZGlzY3Vz
c2lvbnMgYWJvdXQgcG90ZW50aWFsCmNvbGxhYm9yYXRpb25zLgoKVGhhbmsgeW91IG9uY2UgYWdh
aW4gZnJvbSB0aGUgYm90dG9tIG91ciBoZWFydHM7IGJlaW5nIHNlbGVjdGVkIGFzCnlvdXIgdHJ1
c3RlZCBwYXJ0bmVyIG1lYW5zIG1vcmUgdGhhbiB3b3JkcyBjYW4gZXhwcmVzc+KAlGl0J3MgYWJv
dXQKY3JlYXRpbmcgc29tZXRoaW5nIHNwZWNpYWwgdG9nZXRoZXIgdGhyb3VnaCB0ZWFtd29yayAm
IGlubm92YXRpb24uCgpXaXRoIGdyYXRpdHVkZSBmb3IgeW91ciBhdHRlbnRpb24gdG8gdGhpcyBt
YXR0ZXIsClNoYXJyaSBEaXZpbmNlbnpvemUzOTA4ajBiZGIyZSAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
