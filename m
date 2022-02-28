Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33ADC4C785B
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 19:55:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOlAz-0008Gj-VL; Mon, 28 Feb 2022 18:55:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ericvh@gmail.com>) id 1nOlAy-0008Gb-2J
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 18:55:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6aA1mIEmXPI+zZXcWG/lXNwwnN3GSFsN1KC265o4rcQ=; b=Ey1oVdn0iisfHw2QyMgpApB/+4
 UNpQewXhgebXr5RWOmtk0VbLo9ONm/BsXGaSODjbDcGiqZEq8qKvpD3A8VrxWlb/c8inHXThjP2R5
 PUe24+itbtGh59zJ695IFvKhZF6ZdtQ3Nmm+w5IWvvqTO7mt9JYBF9+nOfB2JU1DO0vg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6aA1mIEmXPI+zZXcWG/lXNwwnN3GSFsN1KC265o4rcQ=; b=T0vSo5E1BWg5HKRCnfU+Nv4cxG
 fpWZqgDh2w652WxKtbePk6MXB+OoorqRJbG5+DfjmIlY9K2lbv6xF9BFRKlnEsKUz7obzqmBEWYQ9
 Ot01VMZ8GOD0LhM4x9zLBlohXQjqfQgDwuJ5973PZEoGb45R4C2KKtCOnr7TiAIlo8Yw=;
Received: from mail-vs1-f43.google.com ([209.85.217.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOlAv-000PO6-Q1
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 18:55:14 +0000
Received: by mail-vs1-f43.google.com with SMTP id i27so13967911vsr.10
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 10:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6aA1mIEmXPI+zZXcWG/lXNwwnN3GSFsN1KC265o4rcQ=;
 b=gW7XKFdF/SdqvTHnULvreD9ZzBnQfM8UisXPlk63lTfJky2mJxbTX6xMpSP9rFz47B
 n6B1JcRfvIcsJgK8iR2B5Eb9KfAQknFP+YEhZK5jMKpy0MsVMdS1eX65S2IB7k33uLFn
 U84Qq+sjiN/LHIK1Bi56xa6eKKTNkIEuLYQSdx17QOKpWO7AxmN/dDcW2Y0xJVh2R/xG
 J07oCdkSBkW+hQg1L1efIBNVHpAzW60m7iX4ftNhmf+ttZbSwXLGR3bXS5Oz5bTdYbUD
 82MXOEivUm2KJ/sUWKB0V8wtT4U4GBPJrQOCd0CNFfcZm80DUYNIsDqD8Eg4GUIIrBqF
 QDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6aA1mIEmXPI+zZXcWG/lXNwwnN3GSFsN1KC265o4rcQ=;
 b=gy0qIeYQz5MpLu8XZLEWIZ6OlON2YH6y5nDt3EtfkWtD+VxuFrGW6YqNnZi09dwuu1
 4byZvYAi8xGYbfmm7E7goviRJ5TuRqfwl9Jukiv7K+2SmEboHAPZmZu4twdWjiZHLqoh
 r4IGfktYuV+WQtlWSIoHlzy5WfGucIyeGVwjP2C0LzLQERmLGsLdH+tNHuaHjxETkSQo
 9WFuqjzFPO8VcIWUkdbmb0gr1BONUOL8LpMadGSgZPHPUKmwcQGt2D7d38gRQ4wkDU73
 H551oOR69pJynYEB/epP6AFUu+eZYKCuBxC94c2zzMKqIRma9/Zzhu2MeWA/cTEluUHj
 x/ZQ==
X-Gm-Message-State: AOAM531XBL0Wb4EEqy0S9zTikwcFQDqp6wvrGur72wRfgLVKx2SzuSbK
 p+jGbFhSK66Mm/HqE3MZkomzxKtdHIN7A7D1xdc=
X-Google-Smtp-Source: ABdhPJxYsm2027QTYJeKt4g4GyW9yrrWx2sSWvNGC76ZOvc/g2JQ2X8Bzl6udDtNDzasmEfUwgdKxOvCLwiHLXw1rkM=
X-Received: by 2002:a67:d38f:0:b0:31a:808b:7f1 with SMTP id
 b15-20020a67d38f000000b0031a808b07f1mr8178731vsj.56.1646074507696; Mon, 28
 Feb 2022 10:55:07 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
In-Reply-To: <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 28 Feb 2022 12:54:54 -0600
Message-ID: <CAFkjPTnRZdciUx7-woy2vFTx+2AnCnT925jUMbayG_wvsd7q9w@mail.gmail.com>
To: ron minnich <rminnich@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  For Treads, even if folks use them for special things there's
 nothing to say we couldn't restrict the new "fast" semantics to a specific
 version of the protocol or certain options. This was implicit w [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.43 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nOlAv-000PO6-Q1
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Make 9p fast
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

For Treads, even if folks use them for special things there's nothing to
say we couldn't restrict the new "fast" semantics to a specific version of
the protocol or certain options.  This was implicit with the cache options
(they wouldn't work with devices either).

For fences, are you only considering a single client? That simplifies many
things -- and I guess that's why you are saying you can do it all on the
client.

      -eric




On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com> wrote:

> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
>
> > Forgive the naive question, but would this change entail that a
> > client may not observe its own writes? (Because the client may send
> > Twrite and Tread but the Tread may be served first, I mean.) Isn't that
> > undesirable? What do other file systems do?
>
> I have thought about this, and think we can resolve it on the client
> side with some rules.
>
> Treads are considered to be independent of each other and idempotent (NFS
> rules)
> - This will break for things like mice, sockets, etc. Do we care? Do
> people on LInux use
> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
>
> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
> blocks on pending reads, and
> new reads block on the Twrite to finish.
>
> Tclunk acs like a fence for all pending IO. If there are Twrites, it
> blocks on them, else
> it blocks on pending reads.
>
>  Note that: this is all client logic. It is probably logic I will be
> testing in Plan 9 in the next few months.
>
> A few other notes from a lot of years snooping Plan 9.
>
> The first thing everyone does to try to fix 9p slowness is "grow the
> MSIZE." This can help, but it can hurt.
>
> It can help, in that, basically, for an msize like even 8K, you can
> read the entire file in one go.
>
> It can hurt, in that, for really big files, with a big delay-bandwidth
> product, you're going to get head-of-line blocking:
> each Tread will wait on that "really big Tread" before it to finish,
> so your time between Treads will be LARGER.
>
> The other issue with big MSIZE is that it also limits concurrency over
> multiple FIDs, for the same reason: the connection
> is not usable for blocks of time as it is moving 1M blocks for one FID.
>
>  Big block size is an obvious fix with subtle negative impacts.
>
> All this I've seen in the wild, on big machines.
>
> Anyway, I will try the caching stuff, sounds very interesting, and see
> how it impacts my  cpu (github.com/u-root/cpu) command;
> 9p performance is critical to that command.
>
> Thanks again for the work!
>
> ron
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
