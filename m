Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 243A03220F2
	for <lists+v9fs-developer@lfdr.de>; Mon, 22 Feb 2021 21:51:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lEIBC-000633-SU; Mon, 22 Feb 2021 20:51:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <--2050-_-org____+noreply@googlegroups.com>)
 id 1lEIBB-00062o-0p
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Feb 2021 20:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FKH+7S8PYfoABjA5U9p9JG2pzZBFTi+tc1BYur666lQ=; b=FstOaTEBFF2bUwbpQ+gqzd7Ol3
 IWi4JeSfhKuvXR4N9eX7exdNdEqwcDCf45D5glyKNCKY4ZDK6IzfZzcHG5CTzv3Odd5hWG2uv7y0p
 FPfG6OXeMeQ3h+r+BeEN7qSgSGlalK03TZF6cO+PegcIhAYzcdTezuhuKqbmWHo6CiNE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FKH+7S8PYfoABjA5U9p9JG2pzZBFTi+tc1BYur666lQ=; b=X
 aJ1CrO2bcPaEhxYXM6FsELyILCCKNvTk1dGDABRFQmn6smDvaIpTL5ojE8zZqcKHm2gA6hld5Xaah
 kYZUzwSBhpQmTFnNQ3LBt8ErmbQ8c5rsNCEc668/gB1rfRZczXsOyKyPYbnpwGriSdRunAaBCZVA3
 zIwKvDBqub785jGw=;
Received: from mail-qt1-f197.google.com ([209.85.160.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEIB5-0007J7-LG
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Feb 2021 20:51:40 +0000
Received: by mail-qt1-f197.google.com with SMTP id d11so8580684qth.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 22 Feb 2021 12:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlegroups.com; s=20161025;
 h=mime-version:date:auto-submitted:message-id:subject:from:to;
 bh=FKH+7S8PYfoABjA5U9p9JG2pzZBFTi+tc1BYur666lQ=;
 b=S/pqkXqH9RpXf835kLPNwsfgWVAU/W9F0aREacWUeqXEFCBsFVof8QgGk371Gd4e0U
 N2EhwoP0CABLNAsTcw9m7ScJw8WRVBYHYvNTubMhz8+kHUQG2svHaNw+8xdoHVRIKeWm
 kLOJI82BeDR0Ax+CenZb+8byIx/DidD4yqmgIoJZisufayqT1c2kU/dagpL27b3CwsFf
 3KJbMme9Ku7wgf/4LorCmLxCTzOQQ8oEnm+p1xK0xuxZfh4fbVk77NMIBq68YqRyFG+J
 kdWK+9BOGWpciy2WyKM8c0jDj8kGOkBI1gz7pXl+WeV5qubUFvAQowX4JLJqDuAajmyv
 dy/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:auto-submitted:message-id
 :subject:from:to;
 bh=FKH+7S8PYfoABjA5U9p9JG2pzZBFTi+tc1BYur666lQ=;
 b=JAaY6NaZZEJfXZcdI856DZFk1YFIor/B4p3kuNGBhdS9nyiUKQgJ1DPDO922Cukzh7
 B5/2k1HR2JWiS1N0dcv+430R4g1Lhu+abX0Of47RcaNtr9+S7354HjV99JNI7fycKQ8+
 nuhRh8hkr6mRhs5VNyXaDSjVxjrm1de7ryrBNww8bYf6lO/t8QP3VwXyjuvjvFyCPO7E
 +3ZMjUc/l8WHvhPLf909dxoNkpI+qnhQ+2MXpJFxeRnB9vCV7dlTKeDe8Q6OYYdl82+G
 IINUmlo9TBwxGqCxHPZ/YbcjED6apdoK0siINwe8AjuP4sKGOYJIzOghmIJg3djcDHsb
 5Okg==
X-Gm-Message-State: AOAM533APZxVMdIhQNkaNJBH3I9mtEOG2C66tJuhOpaFSkwqvCDr3pVI
 t/YW4FhrRFH4rkpNXgv6SPdbnUNdEVdQnsVFfRFUalQRzPI=
X-Google-Smtp-Source: ABdhPJwUfJpXqaetegwlKAJmpnt+jTnuGoemseHoKOM+wHc7BrhRVP1JCQBHzVWamNRA6LStpezBpAJ2nCAZJgYL8ua1sb7+Mdc=
MIME-Version: 1.0
X-Received: by 2002:a05:620a:222f:: with SMTP id
 n15mr23473965qkh.39.1614027089929; 
 Mon, 22 Feb 2021 12:51:29 -0800 (PST)
Date: Mon, 22 Feb 2021 12:51:29 -0800
Auto-Submitted: auto-generated
X-Notifications: 70e32ec54dc00000
Message-ID: <Bp-pB7ACbFbtd_ecGFbZbQ@notifications.google.com>
From: =?UTF-8?B?2KrYr9ix2YrYqCAgMjA1MCBfIE9yZw==?=
 <--2050-_-org____+noreply@googlegroups.com>
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.197 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.197 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lEIB5-0007J7-LG
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?You_have_been_added_to_=D8=AA=D8=AF?=
 =?utf-8?b?2LHZitioICAyMDUwIF8gT3Jn?=
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0LA0Kcm00MTIxMjBAZ21haWwu
Y29tIGFkZGVkIHlvdSB0byB0aGUg2KrYr9ix2YrYqCAgMjA1MCBfIE9yZyBncm91cC4NCmh0dHBz
Oi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9mb3J1bS8tLTIwNTAtXy1vcmdfX19fDQoNCkFib3V0IHRo
aXMgZ3JvdXA6DQrYp9mE2KrYr9ix2YrYqCDYp9mI2YbZhNin2YrZhiDZhdmGINiu2YTYp9mEINmC
2KfYudin2Kog2KfZgdiq2LHYp9i22YrYqSDYstmI2YjZiNmI2YjZiNmI2YjZhQ0KDQrZhNmF2LLZ
itivINmF2YYg2KfZhNmF2LnZhNmI2YXYp9iqINmK2YXZg9mG2YPZhSDYp9mE2KrZiNin2LXZhCDZ
hdi5DQrZhdiv2YrYsSDYp9mE2KrYr9ix2YrYqA0K2KMgLyDYsdmK2YfYp9mGINiz2KfZhNmFDQrY
rNmI2KfZhC8g2YjYp9iq2LMgOiAwMDIwMTA2Mjk5MjUxMCAtIDAwMjAxMDA2MDAwNjkxDQrZh9in
2KrZgTogMDAyMDIzNzgwMDU4MyAtIDAwMjAyMzc4MDA2OTMNCtmB2KfZg9izOiAwMDIwMjM3ODAw
NTczIOKAkyAwMDIwMjM1ODY2MzIzDQoNCkdvb2dsZSBHcm91cHMgYWxsb3dzIHlvdSB0byBjcmVh
dGUgYW5kIHBhcnRpY2lwYXRlIGluIG9ubGluZSBmb3J1bXMgYW5kDQplbWFpbC1iYXNlZCBncm91
cHMgd2l0aCBhIHJpY2ggY29tbXVuaXR5IGV4cGVyaWVuY2UuIFlvdSBjYW4gYWxzbyB1c2UNCnlv
dXIgR3JvdXAgdG8gc2hhcmUgZG9jdW1lbnRzLCBwaWN0dXJlcywgY2FsZW5kYXJzLCBpbnZpdGF0
aW9ucywgYW5kIG90aGVyICANCnJlc291cmNlcy4NCg0KSWYgeW91IGRvIG5vdCB3aXNoIHRvIGJl
IGEgbWVtYmVyIG9mIHRoaXMgZ3JvdXAgb3IgYmVsaWV2ZSB0aGlzIGdyb3VwIG1heSAgDQpjb250
YWluIHNwYW06DQoqIFlvdSBjYW4gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGF0ICANCmh0
dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9mb3J1bS8tLTIwNTAtXy1vcmdfX19fL3Vuc3Vic2Ny
aWJlL0FIWjdLVk5TQWs1THI4dl9tZXRXdDRVNFdnSzBkc2stMXdrcEtfQ0ZxX3lNMW90Vjg3N1FB
NldzTTl6cnJ1ZUZQWlFTcjFWMlZCcDcxSEtUUFRhb2tQTko2eUhaSnBJRlpnICANCm9yIGJ5IHNl
bmRpbmcgZW1haWwgdG8gLS0yMDUwLV8tb3JnX19fXyt1bnN1YnNjcmliZUBnb29nbGVncm91cHMu
Y29tDQoqIFlvdSBjYW4gcmVwb3J0IHRoaXMgZ3JvdXAgZm9yIGFidXNlIGF0ICANCmh0dHBzOi8v
Z3JvdXBzLmdvb2dsZS5jb20vZC9hYnVzZS9BSm1ybUNzTFJxNzhfd3hlN2dqNUNfa0tEOHJvbWlF
NXJKcnVCWE9fU1JDX2VwdG1OY2VUSUg2YWx6TUlTWEhRR1hLLWdFbFZvY2dWdFBfcnhET3hGT2pn
djVJNjYzWGlSUHVHZ2d6UDVLWjI0MkVsTm80bjA0bTc1V01lNnlfY2JVbXpfR2dIaFJ0MzNENFJ6
NE5hUzFxV3hDbEluNjBtV1ENCiogWW91IGNhbiBvcHQgb3V0IG9mIGFsbCBmdXR1cmUgR29vZ2xl
IEdyb3VwcyBhY3Rpdml0eSBhdCAgDQpodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2Qvb3B0b3V0
DQoNClZpc2l0IEdvb2dsZSBHcm91cHMgSGVscCBDZW50ZXIgYXQgIA0KaHR0cHM6Ly9zdXBwb3J0
Lmdvb2dsZS5jb20vZ3JvdXBzL2Fuc3dlci80NjYwMT9obD1lbi4NCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
