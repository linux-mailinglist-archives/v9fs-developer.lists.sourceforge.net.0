Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E55C6401233
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Sep 2021 02:08:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mN2Bd-0005rE-Fx; Mon, 06 Sep 2021 00:08:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mN2Ba-0005r7-Ph
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Sep 2021 00:08:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OeCX4dJpwBgitXOSpmPOmvNzOoK+lAbEx+BXVeu2QM4=; b=ixKObLLmtSI/FKtSD3KL1OAO2o
 ieZICEfKrxoCeLIO/xA9C5ieNI7ntXOMfJaOz1x2EtfSC/o0+6hFDyLCE7uv9XjQEQimcbo+RWmSJ
 6j9xNIdZrMYTHDFYIG9g0/giSURDdkh/8PUwtMeA5odBX1Hdqa1ceE/JUdIorG/U2VzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OeCX4dJpwBgitXOSpmPOmvNzOoK+lAbEx+BXVeu2QM4=; b=EDHr66EJSLdabbUm0ELRlecBOa
 hT6JNN7LQDh1cFp7HCbAHqMv8u1BLJBenlBV7sNd1U8kW1A/njgWDWI/jVDrtlIxcT1evl41Sni8O
 YZ3q4wgnDDF+N/82F6wV2zhgBowNYIPNnlDxrq2W3axJ/WVxTKIDJTuiv/V2R5tXAkeM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mN2BX-00GVUS-Tv
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Sep 2021 00:08:30 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B029BC01C; Mon,  6 Sep 2021 02:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1630886898; bh=OeCX4dJpwBgitXOSpmPOmvNzOoK+lAbEx+BXVeu2QM4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=17Fqq2Fo5jQOobm0vMf6lneLlkpDc5uxueDYcq1/GU3rsBSmycv9xTu8aZW3+hdPr
 fHaVmAu6ZbaPBGKN8BqbduccwhJ37y0xRln9YOUqM0kJFWZsXtR+Depfpte6tnclSP
 fy4NCB1YX3WYZT/jydnexd2eMi1fh1Nt5Q/13AlFcPDJHfouymV+Jr0OJZ+kD1+BWS
 fS7SAGBRPaZKoE8CcDL1zCaWEdeqoyTGQqu0IXFVQ3dSIjoJUyRyu2Y6Tit9QIIFYa
 D+ZhqkKNqcCDtxqr8eRRW1ip9405NF47N755hweocb1adesDKp4yqvlgDc9TNz0v1J
 Npdtr8yHM/Oxg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7E163C009;
 Mon,  6 Sep 2021 02:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1630886897; bh=OeCX4dJpwBgitXOSpmPOmvNzOoK+lAbEx+BXVeu2QM4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GynXHJhrXtydznYDXD1Zd+zU+gXHeODQ3ykenpx+yygjUyhg0FSE7pI2wmRoyRkjT
 VKwShy/ag4EWe87WDyF++0V0JFEqIQYxetyVBCwRCtjoXZTapoBQdd6A/LgmLmmdET
 nDv/i7yuaExhCV6h72kEy4LBI/JrseIKnR9Pcp/HEpCAf7ZETV6pAauYQk94Mmps+C
 BTkB63PnUNVZR9zuiwkACMD6HBNJ3RIsbdQaZtVK7TtZyyrk6KyuEyD1L7qtOKGoT4
 Tz0h175G7O25e46iELfV2+dO384GSxVRO1KYoSNZacG4uCrBZEytOUHEgKzbhBNvJL
 uII+8LHqv2afQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e8c97575;
 Mon, 6 Sep 2021 00:08:11 +0000 (UTC)
Date: Mon, 6 Sep 2021 09:07:56 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <YTVb3K37JxUWUdXN@codewreck.org>
References: <cover.1630770829.git.linux_oss@crudebyte.com>
 <61ea0f0faaaaf26dd3c762eabe4420306ced21b9.1630770829.git.linux_oss@crudebyte.com>
 <YTQB5jCbvhmCWzNd@codewreck.org> <1915472.2DI3jHSlUk@silver>
 <YTU7FJuooYSjISlq@codewreck.org>
 <CAFkjPTkJFrqhCCHgUBsDiEVjpeJoKZ4gRy=G-4DpJo9xanpYaA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTkJFrqhCCHgUBsDiEVjpeJoKZ4gRy=G-4DpJo9xanpYaA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sun, Sep 05, 2021 at 06:44:13PM
 -0500: > there will likely be a tradeoff with tcp in terms of latency to
 first > message so while > absolute bw may be higher processing ti [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mN2BX-00GVUS-Tv
Subject: Re: [V9fs-developer] [PATCH 2/2] net/9p: increase default msize to
 128k
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RXJpYyBWYW4gSGVuc2JlcmdlbiB3cm90ZSBvbiBTdW4sIFNlcCAwNSwgMjAyMSBhdCAwNjo0NDox
M1BNIC0wNTAwOgo+IHRoZXJlIHdpbGwgbGlrZWx5IGJlIGEgdHJhZGVvZmYgd2l0aCB0Y3AgaW4g
dGVybXMgb2YgbGF0ZW5jeSB0byBmaXJzdAo+IG1lc3NhZ2Ugc28gd2hpbGUKPiBhYnNvbHV0ZSBi
dyBtYXkgYmUgaGlnaGVyIHByb2Nlc3NpbmcgdGltZSBtYXkgc3VmZmVyLiAgOGsgd2FzIGRlZmF1
bHQgbXNpemUKPiB0byBtb3JlIGNsb3NlbHkgbWF0Y2ggaXQgdG8ganVtYm8gZnJhbWVzIG9uIGFu
IGV0aGVybmV0LiAgb2YgY291cnNlIGFsbAo+IHRoYXQgaW50dWl0aW9uIGlzIGNsb3NlIHRvIDMw
IHllYXJzIG91dCBvZiBkYXRl4oCmLgoKSXQncyBub3QgYmVjYXVzZSB0aGUgbWF4IHNpemUgaXMg
MTI4ayAob3IgMU1CKSB0aGF0IHRoaXMgbXVjaCBpcyBzZW50Cm92ZXIgdGhlIHdpcmUgZXZlcnl0
aW1lIC0tIGlmIGEgbWVzc2FnZSB1c2VkIHRvIGZpdCBpbiA4S0IsIHRoZW4gaXRzCm9uLXRoZS13
aXJlIHNpemUgd29uJ3QgY2hhbmdlIGFuZCBzcGVlZC9sYXRlbmN5IHdvbid0IGJlIGFmZmVjdGVk
IGZvcgp0aGVzZS4KCkZvciBtZXNzYWdlcyB0aGF0IGRvIHJlcXVpcmUgbW9yZSB0aGFuIDhLQiAo
cmVhZC93cml0ZS9yZWFkZGlyKSB0aGVuIHlvdQpjYW4gZml0IG1vcmUgZGF0YSBwZXIgbWVzc2Fn
ZSwgc28gZm9yIGEgZ2l2ZW4gdXNlcnNwYWNlIHJlcXVlc3QgKGZlZWQgbWUKeHl6IGFtb3VudCBv
ZiBkYXRhKSB5b3UnbGwgaGF2ZSBsZXNzIGNsaWVudC1zZXJ2ZXIgcm91bmQtdHJpcHMsIGFuZCB0
aGUKZmluYWwgdXNlci1yZWZsZWN0ZWQgbGF0ZW5jeSB3aWxsIGJlIGJldHRlciBhcyB3ZWxsIC0t
IHRoYXQncyB3aHkKZS5nLiBORlMgaGFzIGJlZW4gc2V0dGluZyBhIG1heCBzaXplIG9mIDFNQiBi
eSBkZWZhdWx0IGZvciBhIHdoaWxlIG5vdywKYW5kIHRoZXkgYWxsb3cgZXZlbiBtb3JlICgzMk1C
IGlpcmM/IG5vdCBzdXJlKQoKSSd2ZSBvbmx5IGhhZCBkb25lIHRoZXNlIHRlc3RzIHllYXJzIGFn
byBhbmQgbm8gbG9uZ2VyIGhhdmUgYWNjZXNzIHRvCnRoZSBub3RlIHRoYXQgd2FzIHdyaXR0ZW4g
YmFjayB0aGVuLCBidXQgVENQIGFsc28gZGVmaW5pdGVseSBiZW5lZml0cwpmcm9tID4gNjRrIG1z
aXplIGFzIGxvbmcgYXMgdGhlcmUncyBlbm91Z2ggbWVtb3J5IGF2YWlsYWJsZS4KCgpUaGUgZG93
bnNpZGUgKGJlY2F1c2UgaXQncyBub3QgZnJlZSkgaXMgdGhlcmUgdGhvdWdoLCB5b3UgbmVlZCBt
b3JlCm1lbW9yeSBmb3IgOXAgd2l0aCBiaWcgYnVmZmVycyBldmVuIGlmIHdlIGRpZG4ndCBuZWVk
IHNvIG11Y2ggaW4gdGhlCmZpcnN0IHBsYWNlLgpUaGUgY29kZSB1c2luZyBhIHNsYWIgbm93IG1l
YW5zIHRoYXQgdGhlIG1lbW9yeSBpcyBub3QgbG9ja2VkIHBlciBtb3VudAphcyBpdCB1c2VkIHRv
LCBidXQgdGhhdCBhbHNvIG1lYW5zIGFsbG9jYXRpb25zIGNhbiBmYWlsIGlmIHRoZXJlIGlzIGEK
YmlnIHByZXNzdXJlIGFmdGVyIG5vdCBoYXZpbmcgYmVlbiByZWxlYXNlZC4gT1RPSCBhcyBsb25n
IGFzIGl0J3MKY29uc2lzdGVudGx5IHVzZWQgdGhlIGJ1ZmZlcnMgd2lsbCBiZSByZWN5Y2xlZCBz
byBpdCdzIG5vdCBuZWNlc3NhcmlseQp0b28gYmFkIHBlcmZvcm1hbmNlLXdpc2UgaW4gaG90IHBl
cmlvZHMuCgpJZGVhbGx5IHdlJ2QgbmVlZCB0byByZXdvcmsgdHJhbnNwb3J0cyB0byBhbGxvdyBz
Y2F0dGVyLWdhdGhlciAoaW92ZWMgb3IKc2ltaWxhciBBUEkpLCBhbmQgd29yayB3aXRoIHNtYWxs
ZXIgYWxsb2NhdGlvbnMgYmF0Y2hlZCB0b2dldGhlciBvbgpzZW5kLCBidXQgSSBkb24ndCBoYXZl
IHRpbWUgZm9yIHNvbWV0aGluZyBsaWtlIHRoYXQuLi4gSWYgd2UgZG8gdGhhdCB3ZQpjYW4gcHJv
YmFibHkgZ2V0IHRoZSBiZXN0IG9mIGJvdGggd29ybGRzIC0tIGFuZCBjb3VsZCBjb25zaWRlciA+
MU1CLCBidXQKdGhhdCdzIHVucmVhbGlzdGljIGFzIG9mIG5vdywgcmVnYXJkbGVzcyBvZiB0aGUg
dHJhbnNwb3J0LgoKLS0gCkRvbWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
