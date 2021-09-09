Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34402407CD5
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Sep 2021 12:23:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mPMda-0000Vg-OL; Sun, 12 Sep 2021 10:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mark.tun@ysedm.com.cn>) id 1mPMdY-0000VR-UW
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Sep 2021 10:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Type:Mime-Version:Reply-To:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZHt3QuEy0Vx0o9AgNwUXxE/9GUTIr2c1I/bLPUuQbYE=; b=WLLijt/iQMGPyGe/8tyOsPTHQC
 jG3ue3k1XNo7t+cX4kNMSatCH6CvkhyV8p4R9G+ma87JrEh0kKmn/pCbSkq1GI6yZvWnmPrpO2qKs
 xfUHeu0N1+YO4Liaz7RXCc7AkaRPSHlwjN/DiMH9kPEohBnx2iX5PmS8hrWApDKl8CGs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Type:Mime-Version:Reply-To:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZHt3QuEy0Vx0o9AgNwUXxE/9GUTIr2c1I/bLPUuQbYE=; b=U
 sEOqUotOw0xo+FwCX6dgMyl8I0WvNeiVabI+dhEwTB5tYuNH/IxN/SgkCgqd0C5nHI0xK6E+X7ArN
 E8z8gPopN/vvC+BpFmn33vWor1qibOpA8nBG2lN7KV0nR5kbgXTS9OqaIBJagegeT0wFHRw7utXkJ
 B9vtaGOwckTtCctE=;
Received: from bhd5.sosung.net.cn ([180.76.119.143])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mPMdT-007wUA-PV
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Sep 2021 10:23:00 +0000
Received: from edm01.bossedm.com (edm01.chinaemail.cn [180.76.132.54])
 by bhd5.sosung.net.cn (Postfix) with ESMTPS id 3969D10284D
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 Sep 2021 19:18:25 +0800 (CST)
Received: from unknown (unknown [127.0.0.1])
 by edm01.bossedm.com (Bossedm) with SMTP id 77BB812138B
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 Sep 2021 21:51:44 +0800 (CST)
Date: Thu,  9 Sep 2021 21:51:44 +0800 (CST)
From: "=?utf-8?B?TWljaGVsbGUg?=" <michelle@hardfindcomponents.com>
To: <v9fs-developer@lists.sourceforge.net>
Mime-Version: 1.0
X-Notify-Mail: No
Message-ID: <3521#87752#v9fs-developer@lists.sourceforge.net#b7685d8384c9a4ec01e29ab9bcfc16eb#1631195504270>
X-Iszbb: Yes
X-ZZY-MESSAGE-ID: FA202007B9583A6400000000000070113A61000000000000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ysedm.com.cn; s=s9527; 
 t=1631195504; bh=i6qUd5+0EH+oXSsntNYUgZ82YBtWPHRmBrYh5WotrPM=; 
 h=Date:From:Subject:Message-ID;
 b=mFRVVs/gkzqx0S4+qWETb4hOUaUjsEfhoQszd9VCsWsWGx4piq17WqyVAsopFdxgN
 S60tbFTPltpWeoi4vU5sFZs6gQHQSbXLvzl/LkHcDQJ6DAsBGgf6Y4KtaqAe7enDUj
 Iu78JH69X3hd212wcI/hV5GLwx9I6USXnmmIeJ6E=
X-Spam-Score: 5.2 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Friends, Good day! I am&nbsp;Michelle&nbsp;from Hard
 Find Electronics Ltd(http://www.hardfindelectronics.com) which is a
 professional
 electronics components supplier. Do you have any need for your project?&nbsp; 
 Hope w [...] 
 Content analysis details:   (5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: ysedm.com.cn]
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [180.76.119.143 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ysedm.com.cn]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [180.76.119.143 listed in dnsbl-1.uceprotect.net]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-Headers-End: 1mPMdT-007wUA-PV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] =?utf-8?q?LM2901DR_TI_2021+?=
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
Reply-To: michelle@hardfindcomponents.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoJRGVhciBGcmllbmRzLCANCg0KDQoJR29vZCBkYXkhIA0KDQoNCglJIGFtJm5ic3A7TWljaGVs
bGUmbmJzcDtmcm9tIEhhcmQgRmluZCBFbGVjdHJvbmljcyBMdGQoaHR0cDovL3d3dy5oYXJkZmlu
ZGVsZWN0cm9uaWNzLmNvbSkNCndoaWNoIGlzIGEgcHJvZmVzc2lvbmFsIGVsZWN0cm9uaWNzIGNv
bXBvbmVudHMgc3VwcGxpZXIuDQpEbyB5b3UgaGF2ZSBhbnkgbmVlZCBmb3IgeW91ciBwcm9qZWN0
PyZuYnNwOw0KSG9wZSB3ZSBjYW4gZG8geW91IGEgZmF2b3J+Jm5ic3A7IA0KDQoNCglQbHMgY2hl
Y2sgVEkmbmJzcDtmb3IgeW91ciByZWZlcmVuY2U6DQpMTTI5M0RSCSZuYnNwOyZuYnNwO1RJJm5i
c3A7MjAyMSsmbmJzcDswLjExdXNkJm5ic3A7U09JQzgmbmJzcDsgDQpMTTMxMURSJm5ic3A7VEkm
bmJzcDsyMDIxKyZuYnNwOyZuYnNwOzAuMTE4MXVzZCZuYnNwO1NPUDggDQpMTTI5MDFEUiZuYnNw
O1RJJm5ic3A7MjAyMSsmbmJzcDsmbmJzcDswLjEzNHVzZCZuYnNwO1NPUC0xNCZuYnNwOyANCkxN
MjU4QURSJm5ic3A7Jm5ic3A7VEkmbmJzcDsyMDIxKyZuYnNwOzAuMTk3dXNkJm5ic3A7U09QLThQ
Jm5ic3A7IA0KTE0yNThQJm5ic3A7VEkmbmJzcDsyMDIxKyZuYnNwOzAuMTQ4dXNkJm5ic3A7RElQ
LTgmbmJzcDsmbmJzcDsNCg0KDQpXZWxjb21lIGZvciB5b3VyIG5ldyBpbnF1aXJ5Lg0KDQoJUHJv
bWlzZTombmJzcDsNCiANCg0KDQoJDQoJCU9yZGVyIGZyb20gMSBwY3MgDQoJDQoJDQoJCVF1aWNr
IERlbGl2ZXJ5KG5vcm1hbGx5IDMtN2RheXMpJm5ic3A7IA0KCQ0KCQ0KCQlPbmUgeWVhciBndWFy
YW50ZWUgDQoJDQoJDQoJCVRyYW5zcG9ydCB3YXk6IERITCwgRmVkZXgsIFVQUy4uLiANCgkNCg0K
IA0KDQoJIA0KDQoNCgkNCgkJ4pePU3Ryb25nIGxpbmVzOiBBRCwgVEksIE1heGltLCBYaWxpbngs
IEFsdGVyYSwgTXVyYXRhLCBZYWdlbywgU2Ftc3VuZywNCg0KIA0KCQ0KCQ0KCQlLZWVwIHNtaWxp
bmcgZXZlcnkgZGF5DQogDQoJDQoJDQoJCU1pY2hlbGxlIA0KCQ0KCQ0KCQlTYWxlcyBNYW5hZ2Vy
IA0KCQ0KCQ0KCQlIYXJkJm5ic3A7RmluZCZuYnNwO0VsZWN0cm9uaWNzIEx0ZC4NCjMxNSwgU2hh
aGUgUm9kLCBMb25nIEdhbmcgRGlzdHJpY3QsIFNoZW56aGVuLCBDTiwgNTE4MDAwDQpUZWw6ICs4
Ni03NTUtODQxOCA4MTAzJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IA0KCQ0KCQ0KCQlGYXg6ICs4Ni03NTUtODQxOCA4MzAz
DQpTa3lwZTombmJzcDsmbmJzcDttaWNoZWxsZS5oYXJkZmluZCANCgkNCgkNCgkJRW1haWw6IG1p
Y2hlbGxlQGhhcmRmaW5kZWxlY3Ryb25pY3MuY29tIA0KCQ0KCQ0KCQlXZWI6IGh0dHA6Ly93d3cu
aGFyZGZpbmRlbGVjdHJvbmljcy5jb20gDQoJDQoNCg0KCeWmguaenOS9oOS4jeaDs+WGjeaUtuWI
sOivpeS6p+WTgeeahOaOqOiNkOmCruS7tu+8jOivt+eCueWHu+i/memHjOmAgOiuoiANCuWmguae
nOS9oOS4jeaDs+WGjeaUtuWIsOivpeS6p+WTgeeahOaOqOiNkOmCruS7tu+8jOivt+eCueWHu+i/
memHjOmAgOiuogpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==
