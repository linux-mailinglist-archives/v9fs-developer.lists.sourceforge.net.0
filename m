Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B40C379FB3
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 May 2021 08:34:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgLym-0003xT-CR; Tue, 11 May 2021 06:34:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <bounce@zukovi.info>) id 1lgLyk-0003xL-QW
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 06:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:
 List-Unsubscribe:MIME-Version:Reply-To:From:Date:Message-ID:Subject:To:Sender
 :Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P0qE9q3XedLVkJRv6948lTNqMT0eZRU2cNurEzBLTE8=; b=a9wSWpzB3VQ9FCKgib9K91YB4w
 YXe+q+A0fmQ4GGJaK82J6BfTTMyanlDuiQloyUOI6RnydvWFCR2rRQ3cInImAgztEO7GPxEIht3U1
 NESG6TySQZAsdebtHdtoOuKnxgJa0PpC6yJapkRcV0c2Ke9hcRd+hsYyrfLolpF3+LDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:List-Unsubscribe:MIME-Version:
 Reply-To:From:Date:Message-ID:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P0qE9q3XedLVkJRv6948lTNqMT0eZRU2cNurEzBLTE8=; b=FaOKhqOk+Q69qq984OplczrHXV
 /KkHKh/T+A5wbkIR0CnRHCK98xen0tU4wh7c1OrZazTyEg83lw4cRgeaETgqvhyKlEyNZncxgKM/W
 8vxiIHI6CbFwbfevLW8ZnjRB13smNMP7SNhPTpheFhuU8XOPgFCaUL/Psak9rA7qVw2A=;
Received: from server.zukovi.info ([178.62.48.247])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgLyg-0008Lg-U1
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 06:34:50 +0000
Received: by server.zukovi.info (Postfix, from userid 0)
 id 0F6448EC23; Tue, 11 May 2021 06:34:35 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 1001:email.php
Message-ID: <542a980cc7575c124239e2c101e0ba4a@zukovi.info>
Date: Tue, 11 May 2021 04:11:01 +0000
From: "George Scott" <info@zukovi.info>
MIME-Version: 1.0
X-Mailer-LID: 10
X-Mailer-RecptId: 59763
X-Mailer-SID: 8
X-Mailer-Sent-By: 1
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: zukovi.info]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 3.0 XM_RECPTID             Has spammy message header
X-Headers-End: 1lgLyg-0008Lg-U1
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Audio Transcription Service Provider
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
Reply-To: info@zukovi.info
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8sIAoKRG8geW91IG5lZWQgc29tZW9uZSByZWxpYWJsZSB0byB0cmFuc2NyaWJlIGJvdGgg
eW91ciBzaG9ydCB0ZXJtIGFuZCAKbG9uZyB0ZXJtIHByb2plY3RzPyAgT3IgZG8geW91IG5lZWQg
YW4gYWNjdXJhdGUgdHJhbnNjcmlwdCBmb3IgeW91ciAKYXVkaW8gb3IgdmlkZW8/ICAKCkFsbG93
IHVzIHRvIHRyYW5zY3JpYmUgeW91ciBhdWRpbyBhbmQgcHJvdmlkZSB5b3UgYWNjdXJhdGUgdHJh
bnNjcmlwdHMgCmFuZCBsZXQgdXMgaGVscCB5b3UgcmVhY2ggeW91ciBidXNpbmVzcy9wcm9qZWN0
IGdvYWxzIHRocm91Z2ggdGhlIGhlbHAgCm9mIG91ciB0cmFuc2NyaXB0aW9uIHNlcnZpY2VzLiAK
V2hhdCBhcmUgb3VyIGdvYWxzIHdpdGggZWFjaCB0cmFuc2NyaXB0PyAKClNwZWVkCkFjY3VyYWN5
CkNvbmZpZGVudGlhbGl0eQoKRWFjaCB0cmFuc2NyaXB0IGlzIHByb3Blcmx5IGZvcm1hdHRlZC4g
U3RyaWN0IGdyYW1tYXIgYW5kIHB1bmN0dWF0aW9uIApydWxlcyBhcmUgYWRoZXJlZCB0byBhbmQg
b2YgY291cnNlLCBmaWxlIHNlY3VyaXR5IGlzIHNvbWV0aGluZyB3ZSB0YWtlIAp2ZXJ5IHNlcmlv
dXNseS4gCgpIYXZlIGFueSB0cmFuc2NyaXB0aW9uIHF1ZXJpZXM/IFNlbmQgbWUgYSBtZXNzYWdl
LiBMZXQncyBkaXNjdXNzIHdoYXQgCnlvdSBuZWVkIHRvIGdldCBkb25lLiAgV2Ugd2lsbCBhZGRy
ZXNzIGFueSBjb25jZXJucyB5b3UgaGF2ZS4gCgotIFByb2Zlc3Npb25hbCB0cmFuc2NyaXB0aW9u
Ci0gQWNjdXJhdGUgYW5kIHRob3JvdWdoCi0gQmVhdXRpZnVsbHkgdHJhbnNjcmliZWQgZG9jdW1l
bnRzLgotIEdyYW1tYXIsIHNwZWxsaW5nIGFuZCBqYXJnb24gdGhvcm91Z2hseSBjaGVja2VkIAoK
V2UgaGF2ZSB0cmFuc2NyaWJlZCB3aXRoaW4gbW9zdCBpbmR1c3RyaWVzOiAKCk1lZGljYWwgdHJh
bnNjcmlwdGlvbgpUZWNobm9sb2dpY2FsCkFjYWRlbWljCkxlY3R1cmVzCkJ1c2luZXNzCkdyb3Vw
cwpMZWdhbApSZXNlYXJjaCBpbnRlcnZpZXdzCm1vcmUuLi4gCgpTa2lsbGVkIHdpdGggaW50ZXJu
YXRpb25hbCBhY2NlbnRzIGFuZCBwcm9tcHQgcmVzcG9uc2UuICBPdXIgcHJpY2luZyBpcyAKYmV0
dGVyIG9yIGNvbXBhcmFibGUgdG8gaW5kaXZpZHVhbCBzZXJ2aWNlIHByb3ZpZGVyLiAgSW4gYWRk
aXRpb24gd2UgCmFsc28gYXNzaXN0IGluIEFQQSBTdHlsZSBmb3JtYXR0aW5nIGZvciByZXNlYXJj
aCBwYXBlcnMuICBQbGVhc2Ugbm90ZSAKd2UgZG9u4oCZdCBjb25kdWN0IHJlc2VhcmNoIGJ1dCBh
c3Npc3Qgb25seSBpbiBmb3JtYXR0aW5nIG9mIHRoZSBwYXBlcnMuIAoKWW91IGNhbiBjb250YWN0
IHVzIGJ5IHJlcGx5aW5nIHRvIHRoaXMgZW1haWwgb3IgZGlyZWN0bHkgd3JpdGluZyBiYWNrIAp0
byB1cyBvbiBpbmZvQHp1a292aS5pbmZvIG9yIHRocm91Z2ggb3VyIHdlYnNpdGUgd3d3Lnp1a292
aS5pbmZvIApjb250YWN0IHVzIGZvcm0gYXMgd2VsbC4KClJlZ2FyZHMsCkdlb3JnZSBTY290dAp3
d3cuenVrb3ZpLmluZm8KCmh0dHA6Ly96dWtvdmkuaW5mby9tYWlsc29mdC91bnN1YnNjcmliZS5w
aHA/TT01OTc2MyZDPTRmNGQ5NGVhMGRiMDljNDRhZWM3NWVlY2YyNjkzYzkzJkw9MTAmTj04Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
