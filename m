Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A88B362AD0
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Apr 2021 00:09:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lXWex-0007n3-4h; Fri, 16 Apr 2021 22:09:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <2030howidahr802+noreply@googlegroups.com>)
 id 1lXWew-0007mw-Ba
 for v9fs-developer@lists.sourceforge.net; Fri, 16 Apr 2021 22:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sImNdI43HthQ1DzTpfm7V46qg+RuiqoM17VwLdqmwec=; b=b0CUnAgBT8OpaqxaFJ5GIeodkk
 0N1jzHkXpB32R/cfzOzTu35PRQebm33aMB8xhWIvz8l4bDI5gOgSuzBg+jbwmHD15JA83JWdL6hur
 jj2zLLqKeEfZJvJ92s9QYvFEBisXTVENq3SCJcIlLzLMZcWlU/VhRLgJqNbbmfdqOp4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sImNdI43HthQ1DzTpfm7V46qg+RuiqoM17VwLdqmwec=; b=G
 /HoyLod2z56cSY8sesBVXviG/d/br1w03x+ioMNpJA88ZPosg8O7XoT/dRJqwcef0qtgjXHN+9YHk
 nm5hxsjC9HvWEN4KD2x5bS3+UgO8zws9aa5rDIHjxgxIb0KOdLLvq0pgNEVXDsTh/wJPJgzzpUy9V
 HMCIcPfD33EnZmU4=;
Received: from mail-pj1-f71.google.com ([209.85.216.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lXWeu-00HaVM-9z
 for v9fs-developer@lists.sourceforge.net; Fri, 16 Apr 2021 22:09:54 +0000
Received: by mail-pj1-f71.google.com with SMTP id
 t16-20020a17090a0d10b029014e4569c8b6so11010656pja.4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 16 Apr 2021 15:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlegroups.com; s=20161025;
 h=mime-version:date:auto-submitted:message-id:subject:from:to;
 bh=sImNdI43HthQ1DzTpfm7V46qg+RuiqoM17VwLdqmwec=;
 b=DgvCAi6hVqgNsueI+mAe7T2L4cxigPQf+Z1EkuEd+a79L4JT1g59CLI8McOzLdiqlx
 Gp23hB/d8DcKIMDwbI/U2wyMBC5Pce5DfxJnnd4JazCKILUp1KydWC3UM0tpHHArzar3
 8d1QVMvLGvbaZc+9xg8dUfByFmuGxgF+2rGtyao3hYqGOPkWU5Yt49O8aZcIKBMojmds
 QGSt6qs9IKKxdPoCf/xiwMoBA4UDw79FStqpRUzVHcs5oZWE1kExARzx/yCNwCS3QhUl
 s2rjOi2mbzCAwBhtTI0rSxb2v//VkV/KJ2UOxIg7c/EGEM30NhHCNe2WDBp3P0e4VBTB
 RFoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:auto-submitted:message-id
 :subject:from:to;
 bh=sImNdI43HthQ1DzTpfm7V46qg+RuiqoM17VwLdqmwec=;
 b=D+v8WaMy8w9GAQCbSqNK7Av/C4IgYOSviG5tK1Mz86MCmR06NqIVlw5X1IGfMilQjJ
 WOKFhcO2FIPfxxzXPgmCDlhWYrEw3rw7HK67RGSG8hXhrToorwJeXDl5RSXt9Kb3V/UG
 rAuI9iBCAG4HidXrCjtNqATCn8dZFgc39bd7IV3Sl60/E11kP83jx8uGuA6k5yNMaaUL
 qBvIl9D95r/zvlKKZAkviAO7QR32YSYLm2Db5ssIZ9iCAv0IrrqUwhBsBAWOxVslfD/A
 Gh7GgPldVZHN0tnWEG86id01G45sXWhJpqaeg69PwP/+5OlKt181fOxLEomjdTOV62GH
 WLCQ==
X-Gm-Message-State: AOAM532AqOVg0FXWCj+6bMZdLnE9t5H+bk40RI2gKi/ScU1Ezx01R0Yd
 u0sFi+JSbp8okIcISbpOMiBE5k7jnhw9HimmY5HAOK7QYBY=
X-Google-Smtp-Source: ABdhPJyG2Hy1r/H2xgF5UpSffbnRru2zcgMclbjiOb6FSaf5lS44mS29Faqn9Tn7dwVBvRdmSYaSogR/lfvOTxw29oyMB7bakr8=
MIME-Version: 1.0
X-Received: by 2002:a17:902:ce8b:b029:eb:5fd4:51c5 with SMTP id
 f11-20020a170902ce8bb02900eb5fd451c5mr11986069plg.31.1618610986886; Fri, 16
 Apr 2021 15:09:46 -0700 (PDT)
Date: Fri, 16 Apr 2021 15:09:46 -0700
Auto-Submitted: auto-generated
X-Notifications: cbef95cff2200000
Message-ID: <L7__l_EpLtTisk1fbOqtwQ@notifications.google.com>
From: =?UTF-8?B?2LHYpNiz2KkyMDMw2YTZhNiv2KfYsdin2YTYudix2KjZitip?=
 <2030howidahr802+noreply@googlegroups.com>
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.71 listed in list.dnswl.org]
 0.6 FROM_STARTS_WITH_NUMS  From: starts with several numbers
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.71 listed in wl.mailspike.net]
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
X-Headers-End: 1lXWeu-00HaVM-9z
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?You_have_been_added_to_=D8=B1=D8=A4?=
	=?utf-8?b?2LPYqTIwMzDZhNmE2K/Yp9ix2KfZhNi52LHYqNmK2Kk=?=
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

SGkgdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0LA0KaG93aWRhaHI4MDJAZ21h
aWwuY29tIGFkZGVkIHlvdSB0byB0aGUg2LHYpNiz2KkyMDMw2YTZhNiv2KfYsdin2YTYudix2KjZ
itipIGdyb3VwLg0KaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL2ZvcnVtLzIwMzBob3dpZGFo
cjgwMg0KDQpHb29nbGUgR3JvdXBzIGFsbG93cyB5b3UgdG8gY3JlYXRlIGFuZCBwYXJ0aWNpcGF0
ZSBpbiBvbmxpbmUgZm9ydW1zIGFuZA0KZW1haWwtYmFzZWQgZ3JvdXBzIHdpdGggYSByaWNoIGNv
bW11bml0eSBleHBlcmllbmNlLiBZb3UgY2FuIGFsc28gdXNlDQp5b3VyIEdyb3VwIHRvIHNoYXJl
IGRvY3VtZW50cywgcGljdHVyZXMsIGNhbGVuZGFycywgaW52aXRhdGlvbnMsIGFuZCBvdGhlciAg
DQpyZXNvdXJjZXMuDQoNCklmIHlvdSBkbyBub3Qgd2lzaCB0byBiZSBhIG1lbWJlciBvZiB0aGlz
IGdyb3VwIG9yIGJlbGlldmUgdGhpcyBncm91cCBtYXkgIA0KY29udGFpbiBzcGFtOg0KKiBZb3Ug
Y2FuIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhdCAgDQpodHRwczovL2dyb3Vwcy5nb29n
bGUuY29tL2QvZm9ydW0vMjAzMGhvd2lkYWhyODAyL3Vuc3Vic2NyaWJlL0FIWjdLVk9FQWFubGY1
MG9oYzVEaHR4RVpONW81SG9lOEdVNWgzeEVTOXF2R1NEc3ctTS1YemFQUnZDXzhKRDd2SndPN1Fi
T0s5YlFjUmdjZmtrQkg2cVlZc1VaOXlzWXlRICANCm9yIGJ5IHNlbmRpbmcgZW1haWwgdG8gMjAz
MGhvd2lkYWhyODAyK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20NCiogWW91IGNhbiByZXBv
cnQgdGhpcyBncm91cCBmb3IgYWJ1c2UgYXQgIA0KaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9k
L2FidXNlL0FKbXJtQ3RRQmNrODE3Q21NeE9fZ21LSlk1YUdRYWlkc0ZOYnZPbzF0bGNQeFhkWUxN
YW1SUW0wcTUwVGJoQmhSVDVqSzVhOHM5YkNSUGFmR0pqejJ1RzB2akxMYnJGa0E4N0xyMHNtNXU1
WFlyQmpib1VYcS1Eai1wREtCWjVMOXp1Zm9CZk44M1B2RFlra3lxeFNwMlpGTVNJa2ZORm5fZw0K
KiBZb3UgY2FuIG9wdCBvdXQgb2YgYWxsIGZ1dHVyZSBHb29nbGUgR3JvdXBzIGFjdGl2aXR5IGF0
ICANCmh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9vcHRvdXQNCg0KVmlzaXQgR29vZ2xlIEdy
b3VwcyBIZWxwIENlbnRlciBhdCAgDQpodHRwczovL3N1cHBvcnQuZ29vZ2xlLmNvbS9ncm91cHMv
YW5zd2VyLzQ2NjAxP2hsPWVuLg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
