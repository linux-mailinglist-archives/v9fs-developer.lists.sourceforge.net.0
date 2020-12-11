Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE2B2D6D69
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Dec 2020 02:26:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1knXCT-000475-2g; Fri, 11 Dec 2020 01:26:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <3p8rSXw8JAIwqrtA17qxy2rvIIMw2qy1.s42@trix.bounces.google.com>)
 id 1knXCG-00045A-Iy
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Dec 2020 01:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dcpd7quDBsUircwXzFC5A0uwyNS4aWJA1texLwhe8Qg=; b=fQJ2LDQcs/AVZO9m+tm7Dnalj0
 8mxV72zlvsXAW92eonVJ2sB7fOQAeQ6nQeZt2J9GPFl0pogHNJ83AAseY3TPPhU8T+xHnUXAN0n8n
 pP+kjb4V4kExMdJwqmypOxa4a2y6XWmCPpDWrvbvivwuBtew2Xp2KscpzAQkpsH1HYpk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Dcpd7quDBsUircwXzFC5A0uwyNS4aWJA1texLwhe8Qg=; b=h
 Ep3H60kitkW6gVWpgJEr9d3xfQqnfrc3LOg8QBbERMapeeUU0msx5zpCdg8pTnPOqV3+u3PejpPvr
 k0kE9aUymD3uBSQfCqKuLwzvdXcJIQeiYG39yhJS21oe1CWwZpu9uDPWdelLWSUJm0Rusg81zB7uw
 qTVRYapj0sYAC9PI=;
Received: from mail-yb1-f197.google.com ([209.85.219.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1knXC9-007FVr-DE
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Dec 2020 01:26:12 +0000
Received: by mail-yb1-f197.google.com with SMTP id w8so9128619ybj.14
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 10 Dec 2020 17:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=Dcpd7quDBsUircwXzFC5A0uwyNS4aWJA1texLwhe8Qg=;
 b=fA//k/SBETXGjuWhQ6elvann1ri+7i5mUE3AvfwcpKJQMgwCoPHgksxkA3D8AmQE5U
 yc1ayTn1YXOx8xEpfXzdVxmK/hMfuThxE2/8LgKDlVn5BXGbhxdl3QzBjHlpLNosk+fE
 +8IxCIE4ow0fh1quOlaBGjC83/Rg5tpohgrwY9TKi5+QRCZA+29n04zrzVD6wtS51Zou
 Uq6FMadQT1MkbRC/amh1AvlxHGNpcQxwD1i7EIwCOHns+ilQ94MkzI7w1epuil0Kucub
 5tySyiwRlSrF9Jy9T8ohTmKUvOXuIqtN+XUO29TQEIFkCx2s7toeBmrPSj2pzwHODZZy
 0NTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=Dcpd7quDBsUircwXzFC5A0uwyNS4aWJA1texLwhe8Qg=;
 b=AOATdnNp7BpPTmDIAjtr43Xi9G1t7TBN4xfFx2G4+eQkva8S8DcUci6O6pYxUWdfRt
 Y2Az62KiuAk5mzDjNHLDP5cQq3yxSO2+Q4Xn4ubcP52lWeeRWTkeRtYrnLS3NIB7gj0g
 t1UXwYmXk8PP/6yvh+gM4AH7uRSIed4EK8q73g80Q3fV/+FYocb3ZcyBNszLNbEIJr5C
 9jrNr9k/xrSrl/KrwEF7t/gxn4nl9DiCjdDf+BKxBU6J45q3+GIylBxnX5GL90EraTRR
 7wUckznLAFkb42w8+tue3xqw77GqrviLbCVHAQzPdTquiirC9pflpUYGijnkmM2aJGOj
 P+ig==
X-Gm-Message-State: AOAM532r9fA42/brSxqL2JNRx0aEFc2aloJTjDBvxsaniR38IVeCr3mS
 lsqB6Nh6nshIMTxnG3dWFLYn3vETHu3Pm5NcRtg0
MIME-Version: 1.0
X-Received: by 2002:a25:4081:: with SMTP id n123mt6108232yba.237.1607649959240; 
 Thu, 10 Dec 2020 17:25:59 -0800 (PST)
X-No-Auto-Attachment: 1
Message-ID: <000000000000be729d05b6262cd4@google.com>
Date: Fri, 11 Dec 2020 01:25:59 +0000
From: abdulrahimbf226@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (abdulrahimbf226[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.197 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?209.85.219.197>]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (abdulrahimbf226[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.197 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.6 MONEY_FREEMAIL_REPTO   Lots of money from someone using free email?
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
 0.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
 2.5 GOOGLE_DOC_SUSP        Suspicious use of Google Docs
X-Headers-End: 1knXC9-007FVr-DE
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Greetings,
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
Reply-To: abdulrahimbf226@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSd2ZSBpbnZpdGVkIHlvdSB0byBmaWxsIG91dCB0aGUgZm9sbG93aW5nIGZvcm06DQpVbnRpdGxl
ZCBmb3JtDQoNClRvIGZpbGwgaXQgb3V0LCB2aXNpdDoNCmh0dHBzOi8vZG9jcy5nb29nbGUuY29t
L2Zvcm1zL2QvZS8xRkFJcFFMU2Vya2JVODdRaXFwTHVrX2lkLTlpWG1OdDlwdTQ0WjlJQUpGb0Y3
VW5EZ1lqZHBYZy92aWV3Zm9ybT92Yz0wJmFtcDtjPTAmYW1wO3c9MSZhbXA7ZmxyPTAmYW1wO3Vz
cD1tYWlsX2Zvcm1fbGluaw0KDQpHcmVldGluZ3MsDQoNCkJlZm9yZSBJIGludHJvZHVjZSBteXNl
bGYsIEkgd2lzaCB0byBpbmZvcm0geW91IHRoYXQgdGhpcyBsZXR0ZXIgaXMgbm90IGEgIA0KaG9h
eCBtYWlsIGFuZCBJIHVyZ2UgeW91IHRvIHRyZWF0IGl0IHNlcmlvdXMuIFRoaXMgbGV0dGVyIG11
c3QgY29tZSB0byB5b3UgIA0KYXMgYSBiaWcgc3VycHJpc2UsIGJ1dCBJIGJlbGlldmUgaXQgaXMg
b25seSBhIGRheSB0aGF0IHBlb3BsZSBtZWV0IGFuZCAgDQpiZWNvbWUgZ3JlYXQgZnJpZW5kcyBh
bmQgYnVzaW5lc3MgcGFydG5lcnMuIFBsZWFzZSBJIHdhbnQgeW91IHRvIHJlYWQgdGhpcyAgDQps
ZXR0ZXIgdmVyeSBjYXJlZnVsbHkgYW5kIEkgbXVzdCBhcG9sb2dpemUgZm9yIGJhcmdpbmcgdGhp
cyBtZXNzYWdlIGludG8gIA0KeW91ciBtYWlsIGJveCB3aXRob3V0IGFueSBmb3JtYWwgaW50cm9k
dWN0aW9uIGR1ZSB0byB0aGUgdXJnZW5jeSBhbmQgIA0KY29uZmlkZW50aWFsaXR5IG9mIHRoaXMg
YnVzaW5lc3MgYW5kIEkga25vdyB0aGF0IHRoaXMgbWVzc2FnZSB3aWxsIGNvbWUgdG8gIA0KeW91
IGFzIGEgc3VycHJpc2UuIFBsZWFzZSB0aGlzIGlzIG5vdCBhIGpva2UgYW5kIEkgd2lsbCBub3Qg
bGlrZSB5b3UgdG8gIA0Kam9rZSB3aXRoIGl0IG9rLCB3aXRoIGR1ZSByZXNwZWN0IHRvIHlvdXIg
cGVyc29uIGFuZCBtdWNoIHNpbmNlcml0eSBvZiAgDQpwdXJwb3NlLCBJIG1ha2UgdGhpcyBjb250
YWN0IHdpdGggeW91IGFzIEkgYmVsaWV2ZSB0aGF0IHlvdSBjYW4gYmUgb2YgZ3JlYXQgIA0KYXNz
aXN0YW5jZSB0byBtZS4gTXkgbmFtZSBpcyBNciBBYmR1bCBIYXNlZWIsIGZyb20gQnVya2luYSBG
YXNvLCBXZXN0ICANCkFmcmljYS4gSSB3b3JrIGluIFVuaXRlZCBCYW5rIGZvciBBZnJpY2EgKFVC
QSkgYXMgdGVsZXggbWFuYWdlciwgcGxlYXNlIHNlZSAgDQp0aGlzIGFzIGEgY29uZmlkZW50aWFs
IG1lc3NhZ2UgYW5kIGRvIG5vdCByZXZlYWwgaXQgdG8gYW5vdGhlciBwZXJzb24gYW5kICANCmxl
dCBtZSBrbm93IHdoZXRoZXIgeW91IGNhbiBiZSBvZiBhc3Npc3RhbmNlIHJlZ2FyZGluZyBteSBw
cm9wb3NhbCBiZWxvdyAgDQpiZWNhdXNlIGl0IGlzIHRvcCBzZWNyZXQuDQoNCkkgYW0gYWJvdXQg
dG8gcmV0aXJlIGZyb20gYWN0aXZlIEJhbmtpbmcgc2VydmljZSB0byBzdGFydCBhIG5ldyBsaWZl
IGJ1dCBJICANCmFtIHNrZXB0aWNhbCB0byByZXZlYWwgdGhpcyBwYXJ0aWN1bGFyIHNlY3JldCB0
byBhIHN0cmFuZ2VyLiBZb3UgbXVzdCAgDQphc3N1cmUgbWUgdGhhdCBldmVyeXRoaW5nIHdpbGwg
YmUgaGFuZGxlZCBjb25maWRlbnRpYWxseSBiZWNhdXNlIHdlIGFyZSBub3QgIA0KZ29pbmcgdG8g
c3VmZmVyIGFnYWluIGluIGxpZmUuIEl0IGhhcyBiZWVuIDEwIHllYXJzIG5vdyB0aGF0IG1vc3Qg
b2YgdGhlICANCmdyZWVkeSBBZnJpY2FuIFBvbGl0aWNpYW5zIHVzZWQgb3VyIGJhbmsgdG8gbGF1
bmRlciBtb25leSBvdmVyc2VhcyB0aHJvdWdoICANCnRoZSBoZWxwIG9mIHRoZWlyIFBvbGl0aWNh
bCBhZHZpc2Vycy4gTW9zdCBvZiB0aGUgZnVuZHMgd2hpY2ggdGhleSAgDQp0cmFuc2ZlcnJlZCBv
dXQgb2YgdGhlIHNob3JlcyBvZiBBZnJpY2Egd2VyZSBnb2xkIGFuZCBvaWwgbW9uZXkgdGhhdCB3
YXMgIA0Kc3VwcG9zZWQgdG8gaGF2ZSBiZWVuIHVzZWQgdG8gZGV2ZWxvcCB0aGUgY29udGluZW50
LiBUaGVpciBQb2xpdGljYWwgIA0KYWR2aXNlcnMgYWx3YXlzIGluZmxhdGVkIHRoZSBhbW91bnRz
IGJlZm9yZSB0cmFuc2ZlcnJpbmcgdG8gZm9yZWlnbiAgDQphY2NvdW50cywgc28gSSBhbHNvIHVz
ZWQgdGhlIG9wcG9ydHVuaXR5IHRvIGRpdmVydCBwYXJ0IG9mIHRoZSBmdW5kcyBoZW5jZSAgDQpJ
IGFtIGF3YXJlIHRoYXQgdGhlcmUgaXMgbm8gb2ZmaWNpYWwgdHJhY2Ugb2YgaG93IG11Y2ggd2Fz
IHRyYW5zZmVycmVkIGFzICANCmFsbCB0aGUgYWNjb3VudHMgdXNlZCBmb3Igc3VjaCB0cmFuc2Zl
cnMgd2VyZSBiZWluZyBjbG9zZWQgYWZ0ZXIgdHJhbnNmZXIuICANCkkgYWN0ZWQgYXMgdGhlIEJh
bmsgT2ZmaWNlciB0byBtb3N0IG9mIHRoZSBwb2xpdGljaWFucyBhbmQgd2hlbiBJICANCmRpc2Nv
dmVyZWQgdGhhdCB0aGV5IHdlcmUgdXNpbmcgbWUgdG8gc3VjY2VlZCBpbiB0aGVpciBncmVlZHkg
YWN0OyBJIGFsc28gIA0KY2xlYW5lZCBzb21lIG9mIHRoZWlyIGJhbmtpbmcgcmVjb3JkcyBmcm9t
IHRoZSBCYW5rIGZpbGVzIGFuZCBubyBvbmUgY2FyZWQgIA0KdG8gYXNrIG1lIGJlY2F1c2UgdGhl
IG1vbmV5IHdhcyB0b28gbXVjaCBmb3IgdGhlbSB0byBjb250cm9sLiBUaGV5ICANCmxhdW5kZXJl
ZCBvdmVyICQ1YmlsbGlvbiBEb2xsYXJzIGR1cmluZyB0aGUgcHJvY2Vzcy4NCg0KQmVmb3JlIEkg
c2VuZCB0aGlzIG1lc3NhZ2UgdG8geW91LCBJIGhhdmUgYWxyZWFkeSBkaXZlcnRlZCAoJDEwLjVt
aWxsaW9uICANCkRvbGxhcnMpIHRvIGFuIGVzY3JvdyBhY2NvdW50IGJlbG9uZ2luZyB0byBubyBv
bmUgaW4gdGhlIGJhbmsuIFRoZSBiYW5rIGlzICANCmFueGlvdXMgbm93IHRvIGtub3cgd2hvIHRo
ZSBiZW5lZmljaWFyeSB0byB0aGUgZnVuZHMgaXMgYmVjYXVzZSB0aGV5IGhhdmUgIA0KbWFkZSBh
IGxvdCBvZiBwcm9maXRzIHdpdGggdGhlIGZ1bmRzLiBJdCBpcyBtb3JlIHRoYW4gRWlnaHQgeWVh
cnMgbm93IGFuZCAgDQptb3N0IG9mIHRoZSBwb2xpdGljaWFucyBhcmUgbm8gbG9uZ2VyIHVzaW5n
IG91ciBiYW5rIHRvIHRyYW5zZmVyIGZ1bmRzICANCm92ZXJzZWFzLiBUaGUgKCQxMC41bWlsbGlv
biBEb2xsYXJzKSBoYXMgYmVlbiBsYXlpbmcgd2FzdGUgaW4gb3VyIGJhbmsgYW5kICANCkkgZG9u
4oCZdCB3YW50IHRvIHJldGlyZSBmcm9tIHRoZSBiYW5rIHdpdGhvdXQgdHJhbnNmZXJyaW5nIHRo
ZSBmdW5kcyB0byBhICANCmZvcmVpZ24gYWNjb3VudCB0byBlbmFibGUgbWUgc2hhcmUgdGhlIHBy
b2NlZWRzIHdpdGggdGhlIHJlY2VpdmVyIChhICANCmZvcmVpZ25lcikuIFRoZSBtb25leSB3aWxs
IGJlIHNoYXJlZCA2MCUgZm9yIG1lIGFuZCA0MCUgZm9yIHlvdS4gVGhlcmUgaXMgIA0Kbm8gb25l
IGNvbWluZyB0byBhc2sgeW91IGFib3V0IHRoZSBmdW5kcyBiZWNhdXNlIEkgc2VjdXJlZCBldmVy
eXRoaW5nLiBJICANCm9ubHkgd2FudCB5b3UgdG8gYXNzaXN0IG1lIGJ5IHByb3ZpZGluZyBhIHJl
bGlhYmxlIGJhbmsgYWNjb3VudCB3aGVyZSB0aGUgIA0KZnVuZHMgY2FuIGJlIHRyYW5zZmVycmVk
Lg0KDQpZb3UgYXJlIG5vdCB0byBmYWNlIGFueSBkaWZmaWN1bHRpZXMgb3IgbGVnYWwgaW1wbGlj
YXRpb25zIGFzIEkgYW0gZ29pbmcgdG8gIA0KaGFuZGxlIHRoZSB0cmFuc2ZlciBwZXJzb25hbGx5
LiBJZiB5b3UgYXJlIGNhcGFibGUgb2YgcmVjZWl2aW5nIHRoZSBmdW5kcywgIA0KZG8gbGV0IG1l
IGtub3cgaW1tZWRpYXRlbHkgdG8gZW5hYmxlIG1lIGdpdmUgeW91IGEgZGV0YWlsZWQgaW5mb3Jt
YXRpb24gb24gIA0Kd2hhdCB0byBkby4gRm9yIG1lLCBJIGhhdmUgbm90IHN0b2xlbiB0aGUgbW9u
ZXkgZnJvbSBhbnlvbmUgYmVjYXVzZSB0aGUgIA0Kb3RoZXIgcGVvcGxlIHRoYXQgdG9vayB0aGUg
d2hvbGUgbW9uZXkgZGlkIG5vdCBmYWNlIGFueSBwcm9ibGVtcy4gVGhpcyBpcyAgDQpteSBjaGFu
Y2UgdG8gZ3JhYiBteSBvd24gbGlmZSBvcHBvcnR1bml0eSBidXQgeW91IG11c3Qga2VlcCB0aGUg
ZGV0YWlscyBvZiAgDQp0aGUgZnVuZHMgc2VjcmV0IHRvIGF2b2lkIGFueSBsZWFrYWdlcyBhcyBu
byBvbmUgaW4gdGhlIGJhbmsga25vd3MgYWJvdXQgbXkgIA0KcGxhbnMuIFBsZWFzZSBnZXQgYmFj
ayB0byBtZSBpZiB5b3UgYXJlIGludGVyZXN0ZWQgYW5kIGNhcGFibGUgdG8gaGFuZGxlICANCnRo
aXMgcHJvamVjdCwgSSBzaGFsbCBpbnRpbWF0ZSB5b3Ugb24gd2hhdCB0byBkbyB3aGVuIEkgaGVh
ciBmcm9tIHlvdXIgIA0KY29uZmlybWF0aW9uIGFuZCBhY2NlcHRhbmNlLiBJZiB5b3UgYXJlIGNh
cGFibGUgb2YgYmVpbmcgbXkgdHJ1c3RlZCAgDQphc3NvY2lhdGUsIGRvIGRlY2xhcmUgeW91ciBj
b25zZW50IHRvIG1lIEkgYW0gbG9va2luZyBmb3J3YXJkIHRvIGhlYXIgZnJvbSAgDQp5b3UgaW1t
ZWRpYXRlbHkgZm9yDQoNCmZ1cnRoZXIgaW5mb3JtYXRpb24uIHJlc3BvbmQgdG8gbWUgdmlhIHRo
aXMgRW1haWwgIA0KQWRkcmVzczoobXJhYmR1bGg4QGdtYWlsLmNvbSkNClRoYW5rcyB3aXRoIG15
IGJlc3QgcmVnYXJkcw0KTXIgQWJkdWwgSGFzZWViDQoNCkdvb2dsZSBGb3JtczogQ3JlYXRlIGFu
ZCBhbmFseXplIHN1cnZleXMuDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
