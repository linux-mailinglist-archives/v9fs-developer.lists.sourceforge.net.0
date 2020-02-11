Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 750B5160135
	for <lists+v9fs-developer@lfdr.de>; Sun, 16 Feb 2020 00:53:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1j37FZ-000825-Fo; Sat, 15 Feb 2020 23:53:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <service@adv.ac-email.xyz>) id 1j37FY-00081y-5l
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Feb 2020 23:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Type:Mime-Version:Reply-To:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZspecFU0MxJm9zEGKHQEYuJMeuvgMgXvCabZZ9fDckw=; b=UiSuVyj9tMeq2PiGn89F6JsFGQ
 x+aWkM7BbSlV0hqW28wmuQONUpOnSD5w0ztndvs3g5K/BQi6Zn2dQpDq8N2I/XNktkoMfWjeHcce+
 3PYFDI9UyDwBsJXz5yt0TwWMfELlrR8SoV0Be796NKnFvmQuGv1wm8dSPRhFcCL2/QG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Type:Mime-Version:Reply-To:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZspecFU0MxJm9zEGKHQEYuJMeuvgMgXvCabZZ9fDckw=; b=d
 BdkpMOgPxYYDTz9pZJ7sPgA8dLYU6bch13nSdhN+j33soUdFufKNI6NzpaW+IJIOyhIu1/nDG6uPl
 Z/Mp71oeQbmJ26KKteVENIwljhXig7rnjuWU6s9I7R6cxtAj7hjXLDa8s2PfgOcmZVlgCAQRZzsnf
 aZFahgVZGp44efT4=;
Received: from bhd4.sosung.net.cn ([180.76.109.225] helo=bhd5.sosung.com.cn)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j37FJ-005731-0o
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Feb 2020 23:53:28 +0000
Received: from edm01.bossedm.com (edm01.chinaemail.cn [180.76.132.54])
 by bhd5.sosung.com.cn (Postfix) with ESMTPS id F32B1101D35
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 11 Feb 2020 23:02:44 +0800 (CST)
Received: from unknown (unknown [127.0.0.1])
 by edm01.bossedm.com (Bossedm) with SMTP id 3B9D112138E
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 11 Feb 2020 22:59:19 +0800 (CST)
Date: Tue, 11 Feb 2020 22:59:19 +0800 (CST)
From: "=?utf-8?B?WXVtaSA=?=" <yumi@hardfindelec.com>
To: <v9fs-developer@lists.sourceforge.net>
Mime-Version: 1.0
X-Notify-Mail: No
Message-ID: <1883#54315#v9fs-developer@lists.sourceforge.net#e358f98847f1ee53ccc515b2fd0679bf#1581433159017>
X-Iszbb: Yes
X-ZZY-MESSAGE-ID: FA163E85126B607000000000000047C1425E000000000000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=adv.ac-email.xyz;
 s=s9527; t=1581433159;
 bh=Cfg9xnqk7LHR/8wt/p8GJNkDoVpmUc0HIsws4XNJpZM=;
 h=Date:From:Subject:Message-ID;
 b=jI7jMOv+7TG9KtBauuDtia51s+Qw15HBRhguDEk5SlR8QaXQiCKEKdwZqlSi/NYBD
 xzVooAQtxfiLdTcgM9ARE/vZYEFRBNh7j/pHeqSJsIJHkw2JZ6Jr/dZHsbiflfnLqg
 nSyIP3JotpWP+mw0S3SPgPs8gNWUjQkJLOrsMVec=
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hardfindelectronics.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [180.76.109.225 listed in bl.score.senderscore.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.6 DEAR_FRIEND            BODY: Dear Friend? That's not very dear!
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-Headers-End: 1j37FJ-005731-0o
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Need_=E2=80=8Belectronic_component?=
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
Reply-To: yumi@hardfindelec.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQoNCg0KCQ0KCQkmbmJzcDsmbmJzcDtIYXJkJm5ic3A7RmluZCZuYnNwO0VsZWN0cm9u
aWNzIEx0ZC4NCnNvdXJjaW5nIGhhcmQgZmluZCBlbGVjdHJvbmljIGNvbXBvbmVudHMgDQoJDQoJ
DQoJCSZuYnNwOyANCgkNCgkNCgkJRGVhciBGcmllbmQsIA0KCQ0KCQ0KCQlIYXBweSBOZXcgWWVh
ciENClRoaXMgaXMgWXVtaSBmcm9tIEhhcmQgRmluZCBFbGVjdHJvbmljcyBMdGQod3d3LmhhcmRm
aW5kZWxlY3Ryb25pY3MuY29tKSZuYnNwO3doaWNoIGlzIGEgcHJvZmVzc2lvbmFsIGVsZWN0cm9u
aWNzIGRpc3RyaWJ1dG9yIHdpdGggMTAgeWVhcnMgb2YgZXhwZXJpZW5jZXMuJm5ic3A7DQpXZSBh
cmUgZ29vZCBhdCZuYnNwO0hhcmQgRmluZCZuYnNwO2VsZWN0cm9uaWMgY29tcG9uZW50c++8mg0K
DQpJQzogWGlsaW54LCBBbHRlcmEsIFRJLCBMVCwgQUQsTWljcm9uLi4NCk1MQ0MgQ2FwYWNpdG9y
OiBNdXJhdGEsIFNhbXN1bmcsIFlhZ2VvLCBBVlgsIEtlbWV0Li4NCkRpb2RlJmFtcDtUcmFuc2lz
dG9yOiBWaXNoYXksVEksU1QuLg0KDQril49GcmVlIHNhbXBsZXMNCuKXj09uZSB5ZWFyIGd1YXJh
bnRlZQ0KDQpQbHMgY2hlY2sgb3VyIGhvdCBvZmZlcix3YWl0IGZvciB5b3VyIGtpbmRseSBSRlE6
DQoJDQoJDQoJCUFEODUxNUFSVFogQUQgMjAxOSsgMC4yOTd1c2QmbmJzcDsNCkFEODUzMUFSVFog
QUQgMjAxOSsgMC4xOTJ1c2QmbmJzcDsNCkFEODUzMkFSWiBBRCAyMDE5KyAwLjI0OXVzZCZuYnNw
Ow0KQUQ4NTM0QVJaIEFEIDIwMTkrIDAuMjY4dXNkJm5ic3A7DQpBRDg1MzhBVUpaIEFEIDIwMTkr
IDAuNTE1dXNkJm5ic3A7DQpBRDg1NDFBUlRaIEFEIDIwMTkrIDAuMTQ0dXNkDQoNCkNMMzFCMjI2
S1BITk5ORSZuYnNwOyAySy9SIFNhbXN1bmcgMjAxOCsgMC4wMjd1c2QNCkNMMzFCMTA2S0xITk5O
RSZuYnNwOyAmbmJzcDsySy9SIFNhbXN1bmcgMjAxOCsgMC4wMjd1c2QNCkNMMTBDMTAySkI4Tk5O
QyA0Sy9SIFNBTVNVTkcgMjAxOSsgJDAuMDA1DQpDTDEwQjQ3NEtBOE5OTkMgNEsvUiBTQU1TVU5H
IDIwMTkrICQwLjAwNg0KQ0wxMEIyMjNLQjhOTk5DIDRLL1IgU0FNU1VORyAyMDE5KyAkMC4wMDQm
bmJzcDsmbmJzcDsNCg0KIA0KCQ0KCQ0KCQlLZWVwIHNtaWxpbmcgZXZlcnkgZGF5Jm5ic3A7KCrv
v6Mp77+jKSANCgkNCgkNCgkJWXVtaSZuYnNwOyhQcm9kdWN0Jm5ic3A7TWFuYWdlcikgDQoJDQoJ
DQoJCUhhcmQmbmJzcDtGaW5kJm5ic3A7RWxlY3Ryb25pY3MgTHRkLg0Kc291cmNpbmcgaGFyZCBm
aW5kIGVsZWN0cm9uaWMgY29tcG9uZW50cw0KDQozMTUsIFNoYWhlIFJvZCwgTG9uZyBHYW5nIERp
c3RyaWN0LCBTaGVuemhlbiwgQ04sIDUxODAwMA0KVGVsOiArODYtNzU1LTg0MTggODEwMyZuYnNw
OyZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOw0KU2t5cGUgJmFtcDsgRW1haWw6Jm5ic3A7eXVt
aUBoYXJkZmluZGVsZWN0cm9uaWNzLmNvbQ0KTGlua2VkbG46d3d3LmxpbmtlZGluLmNvbS9pbi95
dW1pLWdhbw0KRmFjZWJvb2s6Jm5ic3A7ZmFjZWJvb2suY29tL1l1bWloYXJkZmluZA0KJm5ic3A7
IA0KCQ0KCQ0KCQlJZiB5b3UgZG9uJ3Qgd2FudCB0byByZWNlaXZlIHRoaXMgbWFpbCwgcGxzIHJl
dHVybiB3aXRoICJyZW1vdmUiIG9uIHRoZSBzdWJqZWN0IGxpbmUuIA0KCQ0KCQ0KCQkmbmJzcDsg
DQoJDQoNCg0KDQoNCgnmoaPpk7rnvZHigJTigJTlnKjnur/mlofmoaPlhY3otLnlpITnkIYgDQrl
poLmnpzkvaDkuI3mg7Plho3mlLbliLDor6Xkuqflk4HnmoTmjqjojZDpgq7ku7bvvIzor7fngrnl
h7vov5nph4zpgIDorqIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by92OWZzLWRldmVsb3Blcgo=
