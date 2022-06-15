Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 897A954BFA9
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jun 2022 04:27:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1Ikv-0003bG-VN; Wed, 15 Jun 2022 02:27:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sales@nkemails.com>) id 1o1Ikk-0003b8-7T
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 02:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=40J/QKeK39n7Epb+rDZcryLCZH+J700yG53c50uj4yY=; b=Dw9+kvPeVNlGQ2tPZratG/Qh9S
 NrFo355DenZFKOt/StC19o66WXwgVsm3anN6irAC40uBRUP40hcuKeTMzIDT9k2WsANGu2kOKG5Gw
 buelj7ZVhj3Qqh2LEhDERhvKmxYTi+OVPKeeuhCMJlQQS7ehy6T3mij4OLdNez/NJqfI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=40J/QKeK39n7Epb+rDZcryLCZH+J700yG53c50uj4yY=; b=S9sSGZU72xxl
 5Id5j1hezOLOurNRAp8mKsJ1gvmqa6BT/f1PC2ItsQ4U36dN0NSlQeeXKLLW/iPh+0c+HfBUT1UtT
 1iykWWRQ2iI++ho2YXQ088Ig7kKBwtGExldwYLpmg7+Mx4xQrUr3T3qUiHm04F8jYTlsjCsV75sbV
 GCaMU=;
Received: from e56.mxout.mta4.net ([96.45.68.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1Iki-00056B-B2
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 02:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=nkemails.com; s=api; c=relaxed/simple;
 t=1655260041; h=from:date:subject:reply-to:to:list-unsubscribe:mime-version;
 bh=40J/QKeK39n7Epb+rDZcryLCZH+J700yG53c50uj4yY=;
 b=B6JO+1mBGxy21/eYdUn921UwPnst3VzfHyhnIWNoGED96cqCwsQkNF/KydWx5celCqxTW+0u4wo
 eWYXWc5IaEKL0lewIO6qThsl3e5dSP0V/gSDDMfHskOe0l/93yo1CwJsCUXXlBCnrS+s2IL+qB+e9
 xik/VkY8WDGrrgdtwoU=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1655260041;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=40J/QKeK39n7Epb+rDZcryLCZH+J700yG53c50uj4yY=;
 b=Y0hHD9U0+775wLbgCuURNg7TGTxNt5kor8BqEUwAY8dUjmNSxCUC7WEINuEupPacmJAB3DmmviS
 8naqoQgtM8RYmmZN6gsiACeUnIgy55euHDQhXpJ+X2muKDwCwukrAeDoxF3dfCafUT8WTuaKNm1U/
 MlZCHQKkqFn5JJPQ/jw=
From: Lisa Yu <sales@nkemails.com>
Date: Wed, 15 Jun 2022 02:27:21 +0000
Message-Id: <4uh3pqpo03cf.9_ZweQP8eIzBC-AdyRF-IA2@tracking.nkemails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: 9_ZweQP8eIzBC-AdyRF-IA2
MIME-Version: 1.0
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi VFs-Developer Have a nice day! Wish you everything goes
 well. I'm Lisa and the Sales Director at Xinbo Precision, We supply all kinds
 of CNC Machining parts( high precision of 0.005mm, for the diff [...] 
 Content analysis details:   (6.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?96.45.68.56>]
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: elasticemail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [96.45.68.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: xcwms.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1Iki-00056B-B2
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 0.005mm precision parts processing
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

SGkgVkZzLURldmVsb3BlcgpIYXZlIGEgbmljZSBkYXkhIFdpc2ggeW91IGV2ZXJ5dGhpbmcgZ29l
cyB3ZWxsLgpJJ20gTGlzYSBhbmQgdGhlIFNhbGVzIERpcmVjdG9yIGF0IFhpbmJvIFByZWNpc2lv
biwgV2Ugc3VwcGx5IGFsbApraW5kcyBvZiBDTkMgTWFjaGluaW5nIHBhcnRzKCBoaWdoIHByZWNp
c2lvbiBvZiAwLjAwNW1tLCBmb3IgdGhlCmRpZmZlcmVudCBmaWVsZHMgbGlrZSBNaWxpdGFyeS9E
ZWZlbnNlLCBBZXJvc3BhY2UgQWdyaWN1bHR1cmFsLApUcmFuc3BvcnRhdGlvbiwgTWVkaWNhbCwg
SW5kdXN0cmlhbCwgQWxsIGtpbmRzIG9mIFJvYm90cywgRHJvbmVzIGFuZApzbyBvbi4uLikKT3Vy
IGZhY2lsaXR5IGhvdXNlcyBhIHNpemFibGUgaW52ZW50b3J5IG9mIGVxdWlwbWVudCBmb3IgcHJv
ZHVjdGlvbgptYWNoaW5pbmcsIDUtYXhpcyBtaWxsaW5nLCBob3Jpem9udGFsIGFuZCB2ZXJ0aWNh
bCBtaWxsaW5nLCBhbmQgbGF0aGUKdHVybmluZyB3aXRoIGxpdmUgdG9vbGluZyBhbmQgYXV0b21h
dGVkIGJhciBmZWVkaW5nLsKgCklmIHlvdSBoYXZlIGFueSBpbnRlcmVzdGluZywgd2Ugd2VsY29t
ZSB5b3VyIGRyYXdpbmdzIG9mIENOQyBwYXJ0cywgd2UKY2FuIG9mZmVyIHlvdSB0aGUgYmVzdCBw
cmljZSBhbmQgaGlnaCBxdWFsaXR5IHNhbXBsZXMuClRoYW5rcyBmb3IgeW91ciB2YWx1ZSB0aW1l
LgpMb29rIGZvcndhcmQgdG8geW91ciBuaWNlIHJlcGx5LgpCZXN0IHJlZ2FyZHMsCkxpc2EgeXUK
TGlzYUBjbmNwcmVjaXNpb24tcGFydHMuY24KWGluYm8gUHJlY2lzaW9uClVuc3Vic2NyaWJlClsv
aHR0cDovL3RyYWNraW5nLm5rZW1haWxzLmNvbS90cmFja2luZy91bnN1YnNjcmliZT9kPXhWUFZu
bE5RdGhaczdxNXRvMGdqd3ZGQUlGeC1yb2pzYWtIanR2akZvVkU4WlQydXJ3Sm1ERFkxa1JFM01D
aVNNbGJteldlZFI3ZlUxdy1kUGV1VlJKU0REbEVuSFU2aGFlWF9BTnNWTjZQdjJlLW5wUzFzcDNV
RG05bmM4MHk5WXR2RWN6eVhEVG5kOElpaG5Ca2pqVVRyVG5kRTY3ZU1NMjZZWlhDY0phdUpXeTJy
LW40ZE9JemVacnFBNkt3UUtUY0JCU05KblFXNVdfcEU2Wk8zeDAyR0NIcDgya0EtVVJmR3VsMTJj
Z1pDSU4xSEY5bVY4cTk4Y0ZUY2NCWFNxLUdOZEpzVUR5WWlfUFo0QURmb0F2dklGWXhnUEhwcVhB
ZEE0T1JWVF90SDRyN3E1MWo3UnJRTlRlYVJkTTI2bVBrSVBMUGpkdDRxejJ0VERoandUdXpTSzhw
ZXBvNGZNZTBrTERWZm96TWdVSkxnUG81Q0d1c3ZScUtUQTRZZmdDNXZ5b3lIeWlLZmNybTVnNDZ5
cl9PYkhPY1haNU5ESlRGRmxtbDhKOUpPT0gtV1lZRWw5NU5lMG15aVFEZVBVOVVJdlB4SmUwQ3ln
M1l2QlcwbWNqSEFob2VzVlRUU2FqZWJ2RFFjRGlNUWZPcU9Vb1lPeUtiUHhoVkNrSnFveXcyXQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
