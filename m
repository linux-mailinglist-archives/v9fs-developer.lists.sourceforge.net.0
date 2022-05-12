Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5735249FD
	for <lists+v9fs-developer@lfdr.de>; Thu, 12 May 2022 12:10:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1np5lx-0000eO-0h; Thu, 12 May 2022 10:10:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zhan.bixia@ysedm.com.cn>) id 1np5lv-0000eI-DE
 for v9fs-developer@lists.sourceforge.net; Thu, 12 May 2022 10:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Type:Mime-Version:Reply-To:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nsl/clW1iDJmQHmz/wYAJllHb1vbZvdMeEFitF3/9UY=; b=dBdmGWcUgIoLfK+jI2mwnJ209q
 2Ux1TUTXxbOsigF85q1b00KMdQHGPwfGmXWawSu10lmnnz3o2Oarn8hJ2te54+pIiPyhVA0jTfDv3
 32jDXf6XDfvwBMMZ1iOwj+qH/5DlxYvByx0W7bwC9GMq+81SA1KUZRDDMQ4Ppzvovc3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Type:Mime-Version:Reply-To:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nsl/clW1iDJmQHmz/wYAJllHb1vbZvdMeEFitF3/9UY=; b=l
 xVen7wJpfpjFn4zX+Megc63HGHOOSZ5VX5TnYmqwCpeF4OUuer5/DlMlj7O8Kunf+P6gfIq5zTSpR
 Bmy2gHq9dUQqTQI4Yomx/HrpJBljlGnoZCy18wsx4iHT0+kgbr80PAx/YSrCnkMN4DsUddvRQ0mhb
 +KB9e6wZZSOTTI7A=;
Received: from hu4.sosung.net ([185.185.41.109])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1np5ll-009e6j-QS
 for v9fs-developer@lists.sourceforge.net; Thu, 12 May 2022 10:10:13 +0000
Received: from edm01.bossedm.com (edm01.chinaemail.cn [180.76.132.54])
 by hu4.sosung.net (Postfix) with ESMTPS id 7635120CDD
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 12 May 2022 05:39:37 -0400 (EDT)
Received: from unknown (unknown [127.0.0.1])
 by edm01.bossedm.com (Bossedm) with SMTP id 29E2B12137E
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 12 May 2022 17:39:34 +0800 (CST)
Date: Thu, 12 May 2022 17:39:33 +0800 (CST)
From: "=?utf-8?B?TWljaGVsbGUg?=" <michelle@hardfindcomponents.com>
To: <v9fs-developer@lists.sourceforge.net>
Mime-Version: 1.0
X-Notify-Mail: No
Message-ID: <3521#98212#v9fs-developer@lists.sourceforge.net#b7685d8384c9a4ec01e29ab9bcfc16eb#1652348373954>
X-Iszbb: Yes
X-ZZY-MESSAGE-ID: FA202007B9583C14000000000000D6D57C62000000001600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ysedm.com.cn; s=s9527; 
 t=1652348374; bh=yy7d64QAiZZfMVX/Ti+dBJpx2jiPt886JjSzA60pn6k=; 
 h=Date:From:Subject:Message-ID;
 b=aUgvYYlruVRxwKq9PHR0AYdrOhIJuk7KAwLiSi3m8WEqKdlzsnI1kAGzWf6gvNJkL
 aABouQJmhkZE50zoAVWgGVsY6MrRhYRV2BM9RXF4eo6SBXWD5NPPZGsiQGONkGFuI5
 8+fyc02e6YFSyVAgL5FuE/D9eduxvAGE6o57LXR0=
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Friends&nbsp;, Good day to you! &nbsp; 
 Content analysis details:   (5.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: ysedm.com.cn]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ysedm.com.cn]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1np5ll-009e6j-QS
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] =?utf-8?q?PIC18LF4525-I/PT__MICROCHIP?=
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

DQoJDQoJCQ0KCQkJRGVhciBGcmllbmRzJm5ic3A7LA0KCQkNCgkJDQoJCQlHb29kIGRheSB0byB5
b3UhDQoJCQ0KCQkNCgkJCSZuYnNwOw0KCQkNCgkJDQoJCQlUaGlzIGlzIE1pY2hlbGxlIGZyb20g
SGFyZGZpbmQgRWxlY3Ryb25pYyBMdGQuIE5pY2UgdG8gbWVldCB5b3UuDQoJCQ0KCQkNCgkJCSZu
YnNwOw0KCQkNCgkJDQoJCQlXZSBhcmUgZWxlY3Ryb25pYyBjb21wb25lbnRzIGRpc3RyaWJ1dG9y
IG9mIFhpbGlueCwgQUQsIE1heGltLFRJLE11cmF0YSwgU2Ftc3VuZywgWWFnZW8uLi4NCgkJDQoJ
CQ0KCQkJJm5ic3A7DQoJCQ0KCQkNCgkJCVRoZXNlIGRheXMgdGhlIE1pY3JvY2hpcCBwYXJ0cyBh
cmUgc2hvcnRhZ2UgaW4gdGhlIG1hcmtldC4NCgkJDQoJCQ0KCQkJJm5ic3A7DQoJCQ0KCQkNCgkJ
CURvIHlvdSBoYXZlIGFueSBoYXJkZmluZCBwYXJ0cyB0aGF0IHdlIGNhbiBoZWxwIHlvdSB0byBj
aGVjaz8gSG9wZSB3ZSBjYW4gZG8geW91IGEgZmF2b3IuDQoJCQ0KCQkNCgkJCSZuYnNwOw0KCQkN
CgkJDQoJCQlCZWxvdyBhcmUgb3VyIGhvdCZuYnNwO3NhbGVzIG9mZmVyIGZvciB5b3VyIHJlZmVy
ZW5jZToNCgkJDQoJCQ0KCQkJJm5ic3A7DQoJCQ0KCQkNCgkJCVBJQzE2RjE5MzktSS9QVCBNSUNS
T0NISVAgMjAyMCsmbmJzcDsgMjMuM3VzZCBUUUZQNDQmbmJzcDsNClBJQzI0Rko2NEdBMDA0LUkv
UFQmbmJzcDsgTUlDUk9DSElQIDIwMTMrJm5ic3A7IDMxLjV1c2QgUUZQNDQNClBJQzE4TEY0NTI1
LUkvUFQmbmJzcDsgTUlDUk9DSElQIDIwMjErIDg4LjUzdXNkIFFGUDQ0DQpQSUMyNEZKMTI4R0Ew
MDYtSS9QVCBNSUNST0NISVAgMjAxNSsmbmJzcDsgMTYuNzN1c2QgVFFGUC02NCZuYnNwOw0KUElD
MjRGSjI1NkdBMTA2LUkvUFQgTUlDUk9DSElQJm5ic3A7IDIwMjErIDExLjgxdXNkIFFGUDY0Jm5i
c3A7DQoJCQ0KCQkNCgkJCSZuYnNwOw0KCQkNCgkJDQoJCQlJZiB5b3UgaGF2ZSBpbnRlcmVzdCwg
cGxzIGRvbid0IGhlc2l0YXRlIHRvIGNvbnRhY3QgbWUuDQoJCQ0KCQkNCgkJCQ0KCQkJCS4mbmJz
cDsgDQoJCQkNCgkJCQ0KCQkJCU1pY2hlbGxlIA0KCQkJDQoJCQ0KCQ0KIA0KCQ0KCQkgDQoJCQ0K
CQkJIA0KCQkJDQoJCQkJQWNjb3VudCZuYnNwO01hbmFnZXIgDQoJCQkNCgkJCQ0KCQkJCUhhcmQm
bmJzcDtGaW5kJm5ic3A7RWxlY3Ryb25pY3MmbmJzcDtMdGQuTHRkLiANCgkJCQ0KCQkJDQoJCQkJ
U291cmNpbmcgSGFyZCBGaW5kIEVsZWN0cm9uaWMgQ29tcG9uZW50cyANCgkJCQ0KIA0KCQkJDQoJ
CQkJMzE1LCBTaGFoZSBSb2QsIExvbmcgR2FuZyBEaXN0cmljdCwgU2hlbnpoZW4sIENOLCA1MTgw
MDANClRlbDombmJzcDsgKzg2LTc1NS04NDE4IDgxMDMmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgDQoJCQkNCgkJCQ0KCQkJCUVtYWlsOiZuYnNw
O21pY2hlbGxlQGhhcmRmaW5kZWxlY3Ryb25pY3MuY29tIA0KCQkJDQoJCQkNCgkJCQlTa3lwZTog
bWljaGVsbGUuaGFyZGZpbmQgDQoJCQkNCgkJCQ0KCQkJCVdlYjombmJzcDt3d3cuaGFyZGZpbmRl
bGVjdHJvbmljcy5jb20gDQoJCQkNCgkJDQoJDQrlpoLmnpzkvaDkuI3mg7Plho3mlLbliLDor6Xk
uqflk4HnmoTmjqjojZDpgq7ku7bvvIzor7fngrnlh7vov5nph4zpgIDorqIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
