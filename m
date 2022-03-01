Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 669FA4C8CB3
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Mar 2022 14:32:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nP2ca-0004K5-Rw; Tue, 01 Mar 2022 13:32:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ericvh@gmail.com>) id 1nP2cZ-0004Jy-2o
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 13:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFr004KPpsO0oIPRVTro0w5OhqsRNqBSbRNLqdxjsAQ=; b=QNhQOzv3qboCZiuXy6WxkLc+QC
 QWRWL1hXy6+zGqDFgOcaC8C15q88tKF2/P6BiXkMaanYzzy66Lg3t+U12HRJMG+z69QtU7NvZLk9F
 Sw9XJo5T6yfct3M8kZvAFfH3pm/uL84LMz6gK23lw12CIWHoL2xNFtLQ5p1v2TM3rbdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DFr004KPpsO0oIPRVTro0w5OhqsRNqBSbRNLqdxjsAQ=; b=NUpgecUrYlTTYYCdyEFBhx5ycA
 z87RB+zwBFgmT3y0X9FfFoBSHj6diFygoM2+nP4JRqsEsrWygQGxdoaGJjYOsFi7NKLgLoohnRVka
 /Av1xRwBvRaW0EmIMieurR2oIypyUD8XcYDTx0Xswci3vM40TgfUDOI0gFzXdDxbZG5I=;
Received: from mail-vk1-f173.google.com ([209.85.221.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nP2cW-001HMp-Ta
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 13:32:53 +0000
Received: by mail-vk1-f173.google.com with SMTP id b64so3521946vkf.7
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 01 Mar 2022 05:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DFr004KPpsO0oIPRVTro0w5OhqsRNqBSbRNLqdxjsAQ=;
 b=qfhsDBz/5n3gg6Cy5wqzlZiEtITCqSxXxCNj+z5KB3BwRi0W/4dZWRMxYX07vvKAJH
 g2mfCEGl/5KhlZQn/2v9bdk4uiwPxglichK8Cr2I5wp/KI7C7rrdGOVH8LhlzWrp/sjX
 b4CvQta82ItucJCO/BaUYL8wHVhfp+3b73AsVEKD5MIgLnNE9zYPz66xeIHxUMJun/ST
 UCBHki8RzEj/VdtAhwmFiYLJ3Uv8V4gy7LgRNdQaeLD7yJPoQ6q94klde178Z6Q1qhCu
 /ILaJRp4lzLhEP7R1ZPhTT7QruWyB1sbPSZfcKK1NSB9qBCRGs3VWg1/psUj5JEZm2S2
 QQAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DFr004KPpsO0oIPRVTro0w5OhqsRNqBSbRNLqdxjsAQ=;
 b=Tpc4gCPS3qpcRY+0p0g3ncnlH4OJgBqRRg+GwbgCnZ88jiLH48pAQYtxPw+BYkqt1o
 g0nmLcoHouxG7mOgnI3nkXU4mXLhSrjhbQoBbHHRzd2kH7A4Glx1jBLSqG8NtEqTcaDq
 DmFv5AUIowZx5B0MWr9NZ+fUg0ErgrDOD79RUxiSZKrDsOo9h/4Vwf95Y5h2YQ0PLDxM
 I+69RUPkbd6z3ShDPz7sepHn8f/HIpmREwG1GaF5PLT4wYzmAy2yQfG5Hq2qDC4o3ZR1
 2z5itNdK3pbvdfmbwSUbH2ExdJREg+xnzYKKRAGtt3laHnp6zvxj/9+R8BtQAkvlNcjV
 NaIw==
X-Gm-Message-State: AOAM532j8GLmZxr9d2bxY5ftQeeySVOtetTbmjRlD4ppjyUlgwJdbrLt
 GdPOZzF7p+ajRHp92zg019QGrKKCgDPd/tL75XJztn3RhgSt9Fsj
X-Google-Smtp-Source: ABdhPJy3DvBT81u9OxT4OdjqilvZE5JkeLtYW+uBXw6rQld8Iv5bfsWM+Fkwq02SrPWhrF3mkEfa42jhm7hEDvqc3go=
X-Received: by 2002:a05:6102:34fa:b0:30e:3fd1:b423 with SMTP id
 bi26-20020a05610234fa00b0030e3fd1b423mr9463316vsb.24.1646141067324; Tue, 01
 Mar 2022 05:24:27 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
In-Reply-To: <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Tue, 1 Mar 2022 07:24:15 -0600
Message-ID: <CAFkjPTnVJzc215ZX6WnwnYYuxyOq1aH2-8sgpYyQOJgZbAJM8A@mail.gmail.com>
To: ron minnich <rminnich@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > The first thing everyone does to try to fix 9p slowness
 is "grow the > MSIZE." This can help, but it can hurt. It can help, in that,
 basically, for an msize like even 8K, you can > read the entire file in one
 go. Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.173 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nP2cW-001HMp-Ta
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

>
> The first thing everyone does to try to fix 9p slowness is "grow the
> MSIZE." This can help, but it can hurt.


It can help, in that, basically, for an msize like even 8K, you can
> read the entire file in one go.


It can hurt, in that, for really big files, with a big delay-bandwidth
> product, you're going to get head-of-line blocking:
> each Tread will wait on that "really big Tread" before it to finish,
> so your time between Treads will be LARGER.


I was thinking about this a bit more and had the (duh) realization that
they aren't optimizing for wire, they are optimizing for shared memory.
When principal use case is VM/Container file system pass through the main
thing you end up optimizing for is number of transitions which ~= number of
packets -- so you want as big of a potential msize as you can possibly get
because then if they can use it they get the most optimal whereas if they
don't need it they don't need to use the entire size.  There does end up
probably being a tradeoff w.r.t. buffer sizes but not sure that shows up
with virtio zero copy.  I suppose you might still get head of line blocking
due to large transaction sizes on underlying storage -- but that could be
mitigated with more asynchrony on the server side.

Now, thinking about this in the context of what we are proposing for the
client end -- merely doing async and read-ahead isn't going to get us the
same bang for the buck as its going to increase message size and then
hypothetically the number of virtio transactions/transitions -- what we'd
need to take advantage of that is some form of grouping of transactions
before sending across the wire to minimize the transitions and for a bunch
of reads wouldn't that end up being similar to a large MSIZE?  However for
other types of transitions you could imagine speculative operations
(something like directory traversal or directory listing) where grouping
might give you a bigger boost but not sure I see a clear path to how you
would do that -- for dir lists you'd get something closer to what plan 9
already has, but we don't currently cache the stat information IIRC, so
we'd need to figure out how to do that so subsequent stats would use the
(potentially slightly stale) cache versus reissuing a stat.  So -- not sure
grouping is the way to go, aggressive caching and minimizing total
operations seem to be the best for the VM space -- different optimizations
might make more sense for true networking.

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
