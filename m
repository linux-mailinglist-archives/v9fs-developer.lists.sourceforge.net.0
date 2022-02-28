Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E62F64C77D0
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 19:32:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOkoT-0001W9-E2; Mon, 28 Feb 2022 18:32:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nOkoQ-0001W0-B9
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 18:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BJqhkv9T2U/d8QPKQqyvIU1mRNAQ0wPO3c+Aj5YCqPA=; b=ZWKC7kK3hcpYuvn59K4Yqw7tv9
 fOg0UJtJyjNrl+nvPjPzFidvxVyV/PjoCho9b78yBQruSBWBYKkruZdzeOXIF5eJ+teTe18eBaw1V
 hnBhT8DpZEwhB1E0b2yt3PkKqD98zDxlWBFfkTHwI/k5cyg7IMrjsw4kLfpRyFAVOxks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BJqhkv9T2U/d8QPKQqyvIU1mRNAQ0wPO3c+Aj5YCqPA=; b=a+BphR6NZpnugFf4NHMHcEJAY3
 oCvnjwgek8EaAXlzelIWVy3VR9kTVKl0oAvsJBa6a68nCDDWrDLPGjnh6hVwRo6JERKvx8EWrnLb4
 E6NwQZIBzlvVcPXC9t5yCEbmd2UIGT7iWOKoxxlIVcd7SUA06bDu6fC0D7vxzh9g4Te8=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOkoN-000OP0-VC
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 18:31:56 +0000
Received: by mail-oi1-f171.google.com with SMTP id 12so13981925oix.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 10:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BJqhkv9T2U/d8QPKQqyvIU1mRNAQ0wPO3c+Aj5YCqPA=;
 b=h11lNrt7eNqgANgbUFVCoGn1vKe3A1AfweVFEGaw6JMhIR+fFv4O4fwPIZYhjAbnp/
 gvd756uM0pSSPBZGcjOHmZ5UcVyJpyZ7MsLK+DsxKarx7W/NLZVuziEIjgweuAePCjZN
 Ap9h6fW9W4egFn/SXV4ZgAwUNSpJZ43LRhZ4VKZE0HjNAvp1mi/uP8+XZfEOjskxSnSo
 tWPwrcy8YmuzEH+ysBF4yyxLqah8TFpR81HZhk0qTMQk5IYj3P0XNMPn24lrRfvPL70u
 WIitUVzyf18E2hIt0X5OUYSoANqUYJ6zvJlHaqHC2ZtgHPDlmv07Uz3iE2QmT2VvgVo2
 DToA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BJqhkv9T2U/d8QPKQqyvIU1mRNAQ0wPO3c+Aj5YCqPA=;
 b=FuDxn0shd5r36rkpYzpeZO64pYL9aZvhJUIkHiOqaCMsRVXjG8F0HoHPfFOlTro9BU
 Fp1IW53mom/hURysaYE6AsgFNA8U8pqpoT85XqfrUOQ1wkSijBCViItNIgNI5W/em1Au
 pEbuptzAnaOjvFXw+Hhtavq7LuPao1VyM6hGZXhUZrZRz//4UtaPnCb+i6zInqN7XffH
 q97g+VQqjYXazfRVcHbv9RbuTWf6Vih3DLEnR9i3wxn/ggS/67CWGwKvr9/IOzSUz39s
 2HDC0rBAfpU9gwwQ3GjPCxBmBVhnkiiaVpC9xl7+EyisNGkdOVL/eqjqI126EC8enYOG
 lAsQ==
X-Gm-Message-State: AOAM530N6gmeHPZHVo57bUNE9NqBETQWiirhtQ19KujRvNAY8Traol20
 7Iu3U5Pswbb/jJDDvJJ+2s+r/rubb4L9r7pxPXA=
X-Google-Smtp-Source: ABdhPJwfpeBvTA6kSXPwK7d9b2yGCF6iRD2x176dzccjUHv7Gff4r9YIGutsuRH5Iq+ctpH0h0wlSAqKldU9hKHiZ6o=
X-Received: by 2002:a05:6808:13ca:b0:2d0:6e82:6983 with SMTP id
 d10-20020a05680813ca00b002d06e826983mr11816238oiw.5.1646073110164; Mon, 28
 Feb 2022 10:31:50 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
From: ron minnich <rminnich@gmail.com>
Date: Mon, 28 Feb 2022 10:31:39 -0800
Message-ID: <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
To: ng@0x80.stream
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Feb 27, 2022 at 2:31 PM wrote: > Forgive the naive
 question, but would this change entail that a > client may not observe its
 own writes? (Because the client may send > Twrite and Tread but the Tread
 may be served first, I mean.) I [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nOkoN-000OP0-VC
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:

> Forgive the naive question, but would this change entail that a
> client may not observe its own writes? (Because the client may send
> Twrite and Tread but the Tread may be served first, I mean.) Isn't that
> undesirable? What do other file systems do?

I have thought about this, and think we can resolve it on the client
side with some rules.

Treads are considered to be independent of each other and idempotent (NFS rules)
- This will break for things like mice, sockets, etc. Do we care? Do
people on LInux use
9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.

Twrites act like a fence for Treads, i.e., if there is a Twrite, it
blocks on pending reads, and
new reads block on the Twrite to finish.

Tclunk acs like a fence for all pending IO. If there are Twrites, it
blocks on them, else
it blocks on pending reads.

 Note that: this is all client logic. It is probably logic I will be
testing in Plan 9 in the next few months.

A few other notes from a lot of years snooping Plan 9.

The first thing everyone does to try to fix 9p slowness is "grow the
MSIZE." This can help, but it can hurt.

It can help, in that, basically, for an msize like even 8K, you can
read the entire file in one go.

It can hurt, in that, for really big files, with a big delay-bandwidth
product, you're going to get head-of-line blocking:
each Tread will wait on that "really big Tread" before it to finish,
so your time between Treads will be LARGER.

The other issue with big MSIZE is that it also limits concurrency over
multiple FIDs, for the same reason: the connection
is not usable for blocks of time as it is moving 1M blocks for one FID.

 Big block size is an obvious fix with subtle negative impacts.

All this I've seen in the wild, on big machines.

Anyway, I will try the caching stuff, sounds very interesting, and see
how it impacts my  cpu (github.com/u-root/cpu) command;
9p performance is critical to that command.

Thanks again for the work!

ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
