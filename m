Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 104BB4C78C6
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 20:25:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOldx-0006Lx-CA; Mon, 28 Feb 2022 19:25:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nOldx-0006Lr-0t
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:25:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8GOUOum1XY17J3TR7OSvbEmf4vYhwW2L8ToBS35usL8=; b=M9/DWigCMejPJNQjahlIGmWK4w
 8zMYzae6Z+q8rxvOyVAaaPLY4W2oXZVD1Qh/xwgRuwBsaPRTLSlfx/uxBLv6hLVIi8pE2SjGwbKOM
 JlYW0d5QgjtjE1+eBumcORCCy+KqsjQjzTRuUKxR53zfJuPpJ0j8+NgKmkrl9N4tzOr8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8GOUOum1XY17J3TR7OSvbEmf4vYhwW2L8ToBS35usL8=; b=WVvXf0JY0QqoUls1mLC2L1+eDt
 02yLQCZ2k9EICzktRk2va73HCqehb81ZgJEumpoIdz7aTnFGpy3EoLOTWa42fHhVrc/v31Mig71Yp
 B1ym4Vn7gSitqw0Fu9W6pEaKeKq5N7HEAlF8+KywpniNglkVTZ2BWGV2T3AefRfH8PVI=;
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOldt-0000qp-Vd
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:25:10 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 i10-20020a4aab0a000000b002fccf890d5fso19923505oon.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 11:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8GOUOum1XY17J3TR7OSvbEmf4vYhwW2L8ToBS35usL8=;
 b=HTIAZAX+XrMzVVH9QamBJyXuHNORC6wjfpSWKPvV1v0y9Kt/UnrWaMLxGdoY7Jyw+p
 TBKj6T0wK76mXobKe6pERNzJ0MWi0uE3UzPwl+afcwx96zbREFdJxcTOCE61dunSID5H
 Fj7bVCuzMbLLVLTbHSEizpgZoyGYy7m8Fb9ami+aaZZ3PV6DEshwvE65+hLDTnDg7nXS
 zYFU7hrr+IOeawP9/snKnrQNV95sQjriJ5dSSCLExY1ZJXpOo3onTrgKKZknE7eq7rEq
 iVCxV9gDrM4ChIM0iPL2czf/5Tex96Pt4Wdq6tUTWT6xtacEJNqwtS6NaTSbrT77pqZe
 zEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8GOUOum1XY17J3TR7OSvbEmf4vYhwW2L8ToBS35usL8=;
 b=PEs35DLzr53Gs4I+4DLOKxri5CpdjXtdeyuG/qaOPeWStCxT+zpCgOEcJUkp0L4zwo
 AeSCa36FQ/pBmQaX3C+3kAoJIiun/M6choiw9yk2Ab8JbrPOy5hBYMp77fyTpZRb+rwX
 3108F4k/Hwy6EW5xwzgdfxAoP1WfiVd+DZfbdndlgkWSmbq5auC0h4Ir/nv9PbzTshdE
 2moFClyMwj1vpxnx4FAG9KJhNQkPxdlVhqgK9rLRa1hcDeXPangCU1YJVzEQmeWCBXc9
 +BE4/Fu+RzMq2P93SP0nswP9MAydcLomPUbR7cnRTpJlzoQP7m3H7I7KkXYiPOABxXEU
 61dw==
X-Gm-Message-State: AOAM533ZcJRll8DRKI17R0cgUouA3Gs50GlD6asQsnZ2TwLDqGqGPJeP
 UQdpgqdFcOl8VaDSnxzfCk7s8dX6/OyfTNAg800=
X-Google-Smtp-Source: ABdhPJyZdtCY7ucaH3YlTeYWF/6qcFSE4YHUwf4zeI6tKz4FA0THfsvrnlQXUUD3e6aXXGrJZS1SAuwW4VVpHaMhCrs=
X-Received: by 2002:a05:6870:424c:b0:d6:c948:69a3 with SMTP id
 v12-20020a056870424c00b000d6c94869a3mr9123511oac.5.1646076304245; Mon, 28 Feb
 2022 11:25:04 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
 <CAFkjPTnRZdciUx7-woy2vFTx+2AnCnT925jUMbayG_wvsd7q9w@mail.gmail.com>
 <CAP6exYKWNY+rmZVPs8LoyeabD9oXOQScSftcuNcFK3Th1=F5Sw@mail.gmail.com>
 <CAFkjPTnmNcf3xurJ8hG0AtghGoi7qZkgnO40oixJ+YORiu3-Og@mail.gmail.com>
In-Reply-To: <CAFkjPTnmNcf3xurJ8hG0AtghGoi7qZkgnO40oixJ+YORiu3-Og@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Mon, 28 Feb 2022 11:24:53 -0800
Message-ID: <CAP6exYKEZPHpoL67uU64w-D2AFboMdaxvCfeVh=1CBKQ89YL2g@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I want a read/write file system. for reading and writing
 plain
 files, and creating directories, that's it. Usage has to be transparent,
 I can't ask all those linux programs to change their open modes, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.46 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nOldt-0000qp-Vd
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

I want a read/write file system. for reading and writing plain files,
and creating directories, that's it. Usage has to be transparent, I
can't ask all those linux programs to change their open modes, so that
sounds like a mount option to me at least. But I'm still fairly
certain we can change client behavior to get what we want. In my view
it's all about Tread, which is most packets; and Twrite, which when I
measured it was much fewer packets. The rest are much less common, or
at least used to be (well OK linux seems to be a bit more anxious to
Tstat things?)

btw, fun fact: out of 3M files in my ~, 82% are 16K or less :-); 57%
are 4k or less :-) This in a nutshell is why big MSIZE is not always
the win it looks. Also from earlier lives, a big issue on writing
with. e.g, gnu ld, was its propensity to do lots of 1 or 4 byte writes
(not 1 or 4K; one or four BYTE). I put write coalescing into the
client in 1998 and it was dramatically better. Your caching would help
there.


ron

On Mon, Feb 28, 2022 at 11:07 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>
> Well, that's part of my question - there's lots of per-session semantics that could be implemented by a synthetic file server that would require server coordination to not break.  however, if all you are doing is serving a static file system then its less of a concern -- there are obviously ways you can screw yourself over, but those can happen outside of the 9p context so playing games with caching, read-ahead, and asynchrony don't necessarily leave you in a worse spot.
>
> Contrary to my previous opinion of handling this with protocol/mount options - I do wonder if many of these could be achieved with different open modes (which a client could choose to make default and we could override when what we were accessing was a FIFO or device....)
>
> On Mon, Feb 28, 2022 at 1:02 PM ron minnich <rminnich@gmail.com> wrote:
>>
>> eric, what do you mean by a client? A user or a program or a computer
>> or just the FID from a Tmount?
>>
>> in any event, I think the fence logic should be in the client and for
>> sure should not require any change to servers.
>>
>> i.e., servers would not be responsible for serializing on the FID,
>> just the client.
>>
>> ron
>>
>> On Mon, Feb 28, 2022 at 10:55 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>> >
>> > For Treads, even if folks use them for special things there's nothing to say we couldn't restrict the new "fast" semantics to a specific version of the protocol or certain options.  This was implicit with the cache options (they wouldn't work with devices either).
>> >
>> > For fences, are you only considering a single client? That simplifies many things -- and I guess that's why you are saying you can do it all on the client.
>> >
>> >       -eric
>> >
>> >
>> >
>> >
>> > On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com> wrote:
>> >>
>> >> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
>> >>
>> >> > Forgive the naive question, but would this change entail that a
>> >> > client may not observe its own writes? (Because the client may send
>> >> > Twrite and Tread but the Tread may be served first, I mean.) Isn't that
>> >> > undesirable? What do other file systems do?
>> >>
>> >> I have thought about this, and think we can resolve it on the client
>> >> side with some rules.
>> >>
>> >> Treads are considered to be independent of each other and idempotent (NFS rules)
>> >> - This will break for things like mice, sockets, etc. Do we care? Do
>> >> people on LInux use
>> >> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
>> >>
>> >> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
>> >> blocks on pending reads, and
>> >> new reads block on the Twrite to finish.
>> >>
>> >> Tclunk acs like a fence for all pending IO. If there are Twrites, it
>> >> blocks on them, else
>> >> it blocks on pending reads.
>> >>
>> >>  Note that: this is all client logic. It is probably logic I will be
>> >> testing in Plan 9 in the next few months.
>> >>
>> >> A few other notes from a lot of years snooping Plan 9.
>> >>
>> >> The first thing everyone does to try to fix 9p slowness is "grow the
>> >> MSIZE." This can help, but it can hurt.
>> >>
>> >> It can help, in that, basically, for an msize like even 8K, you can
>> >> read the entire file in one go.
>> >>
>> >> It can hurt, in that, for really big files, with a big delay-bandwidth
>> >> product, you're going to get head-of-line blocking:
>> >> each Tread will wait on that "really big Tread" before it to finish,
>> >> so your time between Treads will be LARGER.
>> >>
>> >> The other issue with big MSIZE is that it also limits concurrency over
>> >> multiple FIDs, for the same reason: the connection
>> >> is not usable for blocks of time as it is moving 1M blocks for one FID.
>> >>
>> >>  Big block size is an obvious fix with subtle negative impacts.
>> >>
>> >> All this I've seen in the wild, on big machines.
>> >>
>> >> Anyway, I will try the caching stuff, sounds very interesting, and see
>> >> how it impacts my  cpu (github.com/u-root/cpu) command;
>> >> 9p performance is critical to that command.
>> >>
>> >> Thanks again for the work!
>> >>
>> >> ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
