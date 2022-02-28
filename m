Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BC24C787C
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 20:07:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOlNE-0005tF-5P; Mon, 28 Feb 2022 19:07:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ericvh@gmail.com>) id 1nOlND-0005t9-BP
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iHgKJVnxzhvYfxc6fkYT4ByDMYZ39Zq8gfMJSWzimmg=; b=CAmap6Dm+iCkrUC6QVV540PMvr
 IKwC0/kdiaadXVtgCbRmMTs8kef0wF6Erzk9xHyDxWYayfCPrw1sqVNckbv0Hbrn1atKFzbL3/jNH
 JwoBEf3yuPG7banmxkiffJpgVc6VVob4YTuAFd0GbdgFBLgqGb3Ff1aWjge1EFSXQt8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iHgKJVnxzhvYfxc6fkYT4ByDMYZ39Zq8gfMJSWzimmg=; b=QRakdusC1pWFRfQPJXHv1W4hZu
 aMpvB77JdEeJTeaGLJILuAzn91T/LWUvarVDsUYU4gqay19jUJyuT9qiPYNrcJFLg8CqPR8az8cC8
 fMO/06jj2XOEKtygsg24NwnF48B0CWyDmCJl2NmoUxp4wgTF50rdocV21GI1vin49J7g=;
Received: from mail-vs1-f48.google.com ([209.85.217.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOlN5-0008PT-Tg
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:07:52 +0000
Received: by mail-vs1-f48.google.com with SMTP id g21so14047341vsp.6
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 11:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iHgKJVnxzhvYfxc6fkYT4ByDMYZ39Zq8gfMJSWzimmg=;
 b=NmkSRoPmZqdsZp1tFSZ74FetALNLcDwSZDcU5Y62fG7o+ubtn4kO0ts+0Dj+23k6eE
 BFN+S73TfnIf9ama/t2KE1P7aoMkHhTWJfi+tWbGtrJw0hfVBsUGcIncTBnH1GrRXzra
 ej60HQG9tktcoY4KaDwbkyzKH+jOhIwLG/OclYBIs2ir4E2g76qb3fF0IKe0gdCvVHvc
 J00zPoW1aOjRjfFY/Em4QGjNq1yH1djfnoRWDrVLtz61rx+DzK57N33xWzfPaqDAB+PZ
 1JHgRY7JKUsfVUdwLcXat+hMTQNvA3ETq8uIuN6QTbLZGSpriOZPOFoMlgs609gwpAau
 eEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iHgKJVnxzhvYfxc6fkYT4ByDMYZ39Zq8gfMJSWzimmg=;
 b=qy4YKkepYlmHitLFenGIcsmZVc/QTem9KicUXsHnLXB1GN0pdApXucuYjEPXVPGKrK
 vtbuy0K38k+9ZQMEx3dDkHuKehJOWFgaqKCQ6KEUiKI4L4mKNBjkTcXBFhBHeGOylnul
 oekUE1QVljQg28SOieB8MvDp0d4z2QBGQCWL3Nq7ZMTzPEehIuq4wxb0iLOh6KiIjXhv
 jC3gzcVXGCwVJ6LLYFo9RYrnZ3qQP1rl22oy/ZfOBOba1g+JU/q945hBQf0Q/ybpCKtW
 XTGHY97X7l8sNdPbRbRAh+5bEsDAa49/bly18fQjkM/4TOMIFYgydo5d4uIi/7Pu/pFA
 EVYQ==
X-Gm-Message-State: AOAM531YSuJCxbw7lHT2Jf/vAmzjN2EiqAaRRJrVxDtvcFFkmU3JQx/5
 t/1BF6g7KCzlmCCW5qgtBLQNb1oFUcE2Cp1f8Kw=
X-Google-Smtp-Source: ABdhPJzthvglIBLZwmTIultYdfcSEAsMoxFDQ4geFwFmMIKpxg/sftBnybn6SavJs35ruRDSB6MaUqfixYibVUbrD+A=
X-Received: by 2002:a05:6102:4ae:b0:31e:aa37:9922 with SMTP id
 r14-20020a05610204ae00b0031eaa379922mr1070437vsa.63.1646075261879; Mon, 28
 Feb 2022 11:07:41 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
 <CAFkjPTnRZdciUx7-woy2vFTx+2AnCnT925jUMbayG_wvsd7q9w@mail.gmail.com>
 <CAP6exYKWNY+rmZVPs8LoyeabD9oXOQScSftcuNcFK3Th1=F5Sw@mail.gmail.com>
In-Reply-To: <CAP6exYKWNY+rmZVPs8LoyeabD9oXOQScSftcuNcFK3Th1=F5Sw@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 28 Feb 2022 13:07:29 -0600
Message-ID: <CAFkjPTnmNcf3xurJ8hG0AtghGoi7qZkgnO40oixJ+YORiu3-Og@mail.gmail.com>
To: ron minnich <rminnich@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Well,
 that's part of my question - there's lots of per-session
 semantics that could be implemented by a synthetic file server that would
 require server coordination to not break. however, if all you a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.48 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nOlN5-0008PT-Tg
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

Well, that's part of my question - there's lots of per-session semantics
that could be implemented by a synthetic file server that would require
server coordination to not break.  however, if all you are doing is serving
a static file system then its less of a concern -- there are obviously ways
you can screw yourself over, but those can happen outside of the 9p context
so playing games with caching, read-ahead, and asynchrony don't necessarily
leave you in a worse spot.

Contrary to my previous opinion of handling this with protocol/mount
options - I do wonder if many of these could be achieved with different
open modes (which a client could choose to make default and we could
override when what we were accessing was a FIFO or device....)

On Mon, Feb 28, 2022 at 1:02 PM ron minnich <rminnich@gmail.com> wrote:

> eric, what do you mean by a client? A user or a program or a computer
> or just the FID from a Tmount?
>
> in any event, I think the fence logic should be in the client and for
> sure should not require any change to servers.
>
> i.e., servers would not be responsible for serializing on the FID,
> just the client.
>
> ron
>
> On Mon, Feb 28, 2022 at 10:55 AM Eric Van Hensbergen <ericvh@gmail.com>
> wrote:
> >
> > For Treads, even if folks use them for special things there's nothing to
> say we couldn't restrict the new "fast" semantics to a specific version of
> the protocol or certain options.  This was implicit with the cache options
> (they wouldn't work with devices either).
> >
> > For fences, are you only considering a single client? That simplifies
> many things -- and I guess that's why you are saying you can do it all on
> the client.
> >
> >       -eric
> >
> >
> >
> >
> > On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com> wrote:
> >>
> >> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
> >>
> >> > Forgive the naive question, but would this change entail that a
> >> > client may not observe its own writes? (Because the client may send
> >> > Twrite and Tread but the Tread may be served first, I mean.) Isn't
> that
> >> > undesirable? What do other file systems do?
> >>
> >> I have thought about this, and think we can resolve it on the client
> >> side with some rules.
> >>
> >> Treads are considered to be independent of each other and idempotent
> (NFS rules)
> >> - This will break for things like mice, sockets, etc. Do we care? Do
> >> people on LInux use
> >> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
> >>
> >> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
> >> blocks on pending reads, and
> >> new reads block on the Twrite to finish.
> >>
> >> Tclunk acs like a fence for all pending IO. If there are Twrites, it
> >> blocks on them, else
> >> it blocks on pending reads.
> >>
> >>  Note that: this is all client logic. It is probably logic I will be
> >> testing in Plan 9 in the next few months.
> >>
> >> A few other notes from a lot of years snooping Plan 9.
> >>
> >> The first thing everyone does to try to fix 9p slowness is "grow the
> >> MSIZE." This can help, but it can hurt.
> >>
> >> It can help, in that, basically, for an msize like even 8K, you can
> >> read the entire file in one go.
> >>
> >> It can hurt, in that, for really big files, with a big delay-bandwidth
> >> product, you're going to get head-of-line blocking:
> >> each Tread will wait on that "really big Tread" before it to finish,
> >> so your time between Treads will be LARGER.
> >>
> >> The other issue with big MSIZE is that it also limits concurrency over
> >> multiple FIDs, for the same reason: the connection
> >> is not usable for blocks of time as it is moving 1M blocks for one FID.
> >>
> >>  Big block size is an obvious fix with subtle negative impacts.
> >>
> >> All this I've seen in the wild, on big machines.
> >>
> >> Anyway, I will try the caching stuff, sounds very interesting, and see
> >> how it impacts my  cpu (github.com/u-root/cpu) command;
> >> 9p performance is critical to that command.
> >>
> >> Thanks again for the work!
> >>
> >> ron
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
