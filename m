Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 723BA1C9538
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 May 2020 17:37:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jWiaK-0007tM-Pv; Thu, 07 May 2020 15:37:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ericvh@gmail.com>) id 1jWiaJ-0007tE-Nk
 for v9fs-developer@lists.sourceforge.net; Thu, 07 May 2020 15:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ocQ1TJ6lbEG5uVVIzYlxVQfwGAfilpz5iEOCOvhi5PM=; b=mCRcWgr6gtk0pXpKu9xR09dUI
 K7z/X7+sFVxF47F0OJWQmOMa1N4gQuN+/b+Sp8fssFPepmxnD3oTQtwIXrIU2AzZy/mtOnTfXkIXu
 KYAZjvs8z9tScVGMOw+BaT0R/vlRiZGZoT2bqY4Z/1akOrApnqm3QfdoY511Ayw5M/qdg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ocQ1TJ6lbEG5uVVIzYlxVQfwGAfilpz5iEOCOvhi5PM=; b=A8bo6UHHHJcgLyOYePpaanG4R9
 rnrxF5OkS3Hkad8qvo5M+kxHsa/dDW7aIzNEIxAd17dUQGHSZ8rg9VMaUPOnXlOmWuwLPaJ80a4dx
 0kclDui+LJz9MpZFVb53oz/QCLtEKS9O5E6ue2VjGoavS6aAztcrG/lSN+DY992IAxPw=;
Received: from mail-ua1-f47.google.com ([209.85.222.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jWiaI-000Nco-8p
 for v9fs-developer@lists.sourceforge.net; Thu, 07 May 2020 15:37:15 +0000
Received: by mail-ua1-f47.google.com with SMTP id r2so2002660uam.7
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 May 2020 08:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ocQ1TJ6lbEG5uVVIzYlxVQfwGAfilpz5iEOCOvhi5PM=;
 b=bA1wO3EXMyB8SDwMXW+rPZ4PT63v86OEeHDMG3T7U3/xmCpEeBs+6srWq0213M2f5h
 G/2QV1/mHmiEHpCmsCOUZfZ+YkXQXMt5UkkcDVMl7uE/yE/2d86DmG96gE5iMo6kezuS
 36zDQJ4Ku4KDodrWkXiQ4h5yqcTFMqyWbD9vxsX2irs8Tcw0yRZKrdW7C9gBKd2y3Jx3
 bovElwjM5A3nImfLYlosZOHRBq2EcFqFbpagbnXCyk8LxDlm/fZOnt39FrQfMEpwwgjE
 z8P0e0/5uoSehcDpzZJASLKfypr8euObhgrKpsOt/flHimyGgrnfUUUgVOdagwJl9YDz
 95SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ocQ1TJ6lbEG5uVVIzYlxVQfwGAfilpz5iEOCOvhi5PM=;
 b=rhwNdrDhaO05lqhiWmJ0Q+TxeS3MoZN6blrSrmWQMUvRVUzKi1y5ZibIwlZCKRwuQC
 f7UxIEyAp6E4ZEDioKXjOfLKGkWUlWXaTX22sljgpIk+PMo4mek+uYd8jMxAettcFtkL
 E/bUe3a4twEEZ6RJZVFUpyU/MPK9dJlIpn6qOXFBEQNA3zpEUGUFvTY1R+Q4oVYV5bXE
 S/ytJJtvxPJndf9C42U0Sudaj6kPbOMy4nnQBIg7iXIqevs04fVruRkqK6zAuxsCtJRU
 KBlCqTOs/vK2gelDIpLdPYYhflNP94CrVD2SGbrn5hZHZF4RFJnbb8vQWn+XcIq7K8QG
 263g==
X-Gm-Message-State: AGi0PuYoYgROnEot1zBS+Nnx1jn3ER9Q7hCG2w+wbqnhZcuel50VzGgh
 U+PwzcmvknjolwZvUIogRuB5+NCOTw7flfB8itE=
X-Google-Smtp-Source: APiQypLsik6/1azdmbaGMO/KqJzok/PwogzC4dgQ+a+JwMK7OuhiSdO9C9Z2Iq0Iv9h15STY4Dva4lCh06V547sLhmY=
X-Received: by 2002:ab0:4165:: with SMTP id j92mr11831230uad.127.1588865827816; 
 Thu, 07 May 2020 08:37:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200507102339.GA7332@legohost>
In-Reply-To: <20200507102339.GA7332@legohost>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Thu, 7 May 2020 10:36:56 -0500
Message-ID: <CAFkjPTmot_1Sf6h3yfWXhon8EUWgyOFTUy-C2P9OOp8NF6d-BQ@mail.gmail.com>
To: Oleg <lego12239@yandex.ru>, 
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ericvh[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jWiaI-000Nco-8p
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] linux 9p mount & tattach
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

aW4gdXNlciBtb2RlIGl0IHNob3VsZCBiZSBzZW5kaW5nIGEgbmV3IGF0dGFjaCBwZXIgdXNlci4g
IEFueSBzb3J0IG9mCmNhY2hpbmcgbGF5ZXIgbWF5IGJlIG1lc3Npbmcgd2l0aCB0aGlzLCBidXQg
SSdsbCBhc3N1bWUgeW91IGFyZW4ndCB0cnlpbmcKdG8gdXNlIHRoYXQuICBJbmNsdWRpbmcgdGhl
IGRmbHR1aWQvZGZsdGdpZCBtYXkgYWxzbyBiZSBtZXNzaW5nIHdpdGggdGhlCmFjY2VzcyBtZWNo
YW5pc20uICBJIGRvbid0IHRoaW5rIHlvdSBuZWVkIHRvIGluY2x1ZGUgdGhvc2UuCgpUaGUgY29k
ZSB0byBkbyB0aGF0IGlzIGluIHRoZSBrZXJuZWwgY2xpZW50IGluIGZzLzlwL2ZpZC5jCgpTdGFy
dCB3aXRoIGRlYnVnPTB4ZiB0byB5b3VyIG1vdW50IGxpbmUgYW5kIHRoZW4gaGF2ZSBhIGxvb2sg
YXQgeW91ciBrZXJuZWwKbWVzc2FnZXMgZm9yIHRoZSA5cCBhbmQgVkZTIHRyYWNjZSB0byBnZXQg
YSBiZXR0ZXIgaWRlYSBvZiB3aGF0IGlzIGdvaW5nIG9uLgoKICAgICAgICAgICAgLWVyaWMKCgpP
biBUaHUsIE1heSA3LCAyMDIwIGF0IDU6MjIgQU0gT2xlZyA8bGVnbzEyMjM5QHlhbmRleC5ydT4g
d3JvdGU6Cgo+IEhlbGxvLCBFcmljLgo+Cj4gSSB0cnkgdG8gbWFrZSBzb21lIHByb2dyYW0gd2l0
aCA5cCBmaWxlIHNlcnZlciBhcyBpbnRlcmZhY2UuIEJ1dCBpIG5lZWQKPiBpbmZvCj4gYWJvdXQg
d2hhdCBsb2NhbCB1c2VyIGFjY2VzcyBpdCBub3cuIFRoZSBkb2NzIGZvciA5cChmcm9tIGxpbnV4
IGtlcm5lbAo+IGRvY3MpCj4gc2F5cyB0aGF0IGV4aXN0IGFjY2VzcyBvcHRpb24gdG8gbW91bnQg
Y29tbWFuZDoKPgo+ICAgYWNjZXNzICAgICAgICB0aGVyZSBhcmUgZm91ciBhY2Nlc3MgbW9kZXMu
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgdXNlciAgPSBpZiBhIHVzZXIgdHJpZXMgdG8gYWNj
ZXNzIGEgZmlsZSBvbiB2OWZzCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmaWxl
c3lzdGVtIGZvciB0aGUgZmlyc3QgdGltZSwgdjlmcyBzZW5kcwo+IGFuCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBhdHRhY2ggY29tbWFuZCAoVGF0dGFjaCkgZm9yIHRoYXQgdXNl
ci4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRoaXMgaXMgdGhlIGRlZmF1bHQg
bW9kZS4KPgo+IEJ1dCBpIHNlZSB0aGF0IHRhdHRhY2ggaXMgc2VudCB0byBteSA5cCBmcyBvbmx5
IG9uY2UgYXQgbW91bnQgdGltZSBhbmQgYWxsCj4gb3RoZXIgYWNjZXNzIGZyb20gZGlmZmVyZW50
IHVzZXJzIGp1c3QgdXNlIHRoaXMgY29ubmVjdGlvbi4gTXkgY29tbWFuZCBpczoKPgo+IG1vdW50
IC10IDlwIC1vIHRyYW5zPXVuaXgsbm9leHRlbmQsZGZsdHVpZD0wLGRmbHRnaWQ9MCxhY2Nlc3M9
dXNlcgo+IHEuc29ja2V0IGRpcgo+Cj4gSG93IGNhbiBpIGVuZm9yY2UgdGhlIG1vdW50IHRvIHNl
bmQgdGF0dGFjaCBmb3IgZWFjaCBsb2NhbCBzeXN0ZW0gdXNlcj8KPgo+IC0tCj4g0J7Qu9C10LMg
0J3QtdC80LDQvdC+0LIgKE9sZWcgTmVtYW5vdikKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
