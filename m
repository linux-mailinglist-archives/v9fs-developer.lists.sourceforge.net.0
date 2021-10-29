Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A078E44009D
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Oct 2021 18:50:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mgV53-0007Yd-EE; Fri, 29 Oct 2021 16:50:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mgV51-0007YX-Ef
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 16:50:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aEdVDAPX40INreqiADCLispl36CO/b9z9SQKpRdVE1Y=; b=TKc8uf03Zhzk0Ct+DJuKlLVh8C
 UBuN3g0hp5IxdhNKGALklaVdMIdUIqSMuj5eFBMcTlmSm+p3QPWJ7ed7H+/eaL5OkmKbdjBdDLX3G
 4r+pc8FKXIUdEk2Jsz2nmGNz+h27W3PQG1wGwZ8JrDHGEt88GHrhQbVo83m+AMEKPNJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aEdVDAPX40INreqiADCLispl36CO/b9z9SQKpRdVE1Y=; b=KDunmNZh3aOGzMN/6pokx+EoMK
 ROT8udfqisNobW1LQtA4vClo/cYtfubXMEuR+Hi+RKTFOQJHRecDtWcLO9yi66fhAuLIQMDkJLiHx
 rrN1q064LpuqLKyiLUKY/Md54R1ERtc0qOKBDM0wd1aUlM3uKjVYLYIDC/+tGkyJPiOg=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mgV4p-005zNH-TA
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 16:50:11 +0000
Received: by mail-lf1-f54.google.com with SMTP id x27so22232469lfu.5
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 29 Oct 2021 09:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aEdVDAPX40INreqiADCLispl36CO/b9z9SQKpRdVE1Y=;
 b=JfdMII6gIZlyaHL+Q4xoTQwnX8b3fgyxMA3HvsY34gLVjvf0LTkJtWsyGhtP73w7ce
 l4Ck+JfF00mhahEor3hdwLmDAwbn+31pY/z3ebxXpyY2bNAhlRGguF0iPuRoVV7G7GWH
 wnIUdqYdvjvQIiSxRcrj1zWJIJvOuW6Og6578=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aEdVDAPX40INreqiADCLispl36CO/b9z9SQKpRdVE1Y=;
 b=5TKdBALMXuOZTjbiv9P72ic1vBb9hd5j+PpQuQ2a4zfmiS1LnRX4rBChu2gA9KFENG
 D6jSJ0Hq5iXYRlpNWLcvySfwlr3C9xMEXmkazMZK3O1VuZchFiXeMKB5PFCfvRdXXXNz
 Gffox8Wnrs5TT7ZIfLlTHR2buhAKvyGQwH8bCR8MCJcautiF+nNeYw1CMEvDmDOeuYRU
 8sI++m3Kgt5U6Ba0p8+mdo4SAuusnaWs84lDLzwj7TWXZ6JDcCYadkfX3t/IwUCRzPlu
 xjcOUapRsCODMW/jArEXxkA0qvy1gJfwzF7qzKuzlbqElo+VWEmMF7fTAirUbKDkbqvq
 vkRQ==
X-Gm-Message-State: AOAM533Au7KyN8rNkPZA5Rr9QIKJW48nUDkaoD5wTyjVtZBMUnMZ51ps
 +Ko4Z/OPbjVOCqgWjdXxtLDMOQ8XoyE+8a9g
X-Google-Smtp-Source: ABdhPJyMOvv2M3tlawCmZF18iUrB/l/+YxEmv7J6BAV5kjOx7O+a40wDQfHLtwv/WnGj8waw0pymmA==
X-Received: by 2002:a05:6512:33cf:: with SMTP id
 d15mr11907088lfg.258.1635526192965; 
 Fri, 29 Oct 2021 09:49:52 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com.
 [209.85.208.173])
 by smtp.gmail.com with ESMTPSA id e22sm650153lfr.237.2021.10.29.09.49.51
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Oct 2021 09:49:51 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id n7so17855331ljp.5
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 29 Oct 2021 09:49:51 -0700 (PDT)
X-Received: by 2002:a2e:b744:: with SMTP id k4mr12794150ljo.31.1635526190871; 
 Fri, 29 Oct 2021 09:49:50 -0700 (PDT)
MIME-Version: 1.0
References: <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
In-Reply-To: <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 29 Oct 2021 09:49:34 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiy4KNREEqvd10Ku8VVSY1Lb=fxTA1TzGmqnLaHM3gdTg@mail.gmail.com>
Message-ID: <CAHk-=wiy4KNREEqvd10Ku8VVSY1Lb=fxTA1TzGmqnLaHM3gdTg@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 29,
 2021 at 7:09 AM David Howells <dhowells@redhat.com>
 wrote: > > (1) A simple fallback API is added that can read or write a single
 page > synchronously. The functions for this have "fal [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mgV4p-005zNH-TA
Subject: Re: [V9fs-developer] [PATCH v4 00/10] fscache: Replace and remove
 old I/O API
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
Cc: Dave Wysochanski <dwysocha@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shyam Prasad N <nspmangalore@gmail.com>, Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Oct 29, 2021 at 7:09 AM David Howells <dhowells@redhat.com> wrote:
>
>  (1) A simple fallback API is added that can read or write a single page
>      synchronously.  The functions for this have "fallback" in their names
>      as they have to be removed at some point.

David, I still don't understand WHY.

I read the explanations in the commits, and that didn't help either.

Why, of why, do you insist of adding this intermediate interface that
is already documented to "must be removed" at the point it is even
added?

What's the point of adding garbage that is useless in the long run?

Why is the first step not just "remove fscache"?

Why is there this addition of the "deprecated" interface - that you
have now renamed "fallback"?

I agree that "fallback" is a less annoying name, so that renaming is
an improvement, but WHY?

I absolutely detested your whole "move old garbage around before
removal", and I also detest this "add new garbage that will be
removed".

What's the point? Why isn't the fix just "remove CONFIG_FSCACHE and
all the code".

You already *HAVE* the "fallback" code - it's all that

    #else /* CONFIG_NFS_FSCACHE */
    static inline int nfs_fscache_register(void) { return 0; }
    static inline void nfs_fscache_unregister(void) {}
    ...

stuff in <nfs/fscache.h> and friends. So why do you need _new_
fallback code, when CONFIG_FSCACHE already exists and already has a
"this disables fscache"?

Maybe there is some really good reason, but that really good reason
sure as hell isn't documented anywhere, and I really don't see the
point.

So let me say this again:

 - it would be much better if you could incrementally just improve the
existing FSCACHE so that it just _works_ all the time, and fixes the
problems in it, and a bisection works, and there is no flag-day.

 - but dammit, if you have to have a flag-day, then there is NO POINT
in all this "move the old code around before moving it", or "add a
fallback interface before removing it again".

Oh, I can understand wanting to keep the header files around in case
the interfaces end up being similar enough in the end that it all
matters.

But I don't understand why you do this kind of crud:

 fs/cachefiles/io.c      |   28 ++++++++-
 fs/fscache/io.c         |  137 +++++++++++++++++++++++++++++++++++++++------

when the neither of those directories will ever even be *compiled* if
CONFIG_FSCACHE isn't true (because CACHEFILES has a "depends on
FSCACHE").

See my argument? If FSCACHE isn't usable during the transition, then
don't make these kinds of pointless code movement or creation things
that are just dead.

There's absolutely no point in having some "fallback" interface that
allows people to test some configuration that simply isn't relevant.
It doesn't help anything. It just adds more noise and more
configurations, and no actual value that I can see.

It doesn't help bisectability: if some bug ever bisects to the
fallback code, what does that tell us? Nothing. Sure, it trivially
tells us the fallback code was buggy, but since the fallback code has
been removed afterwards, the _value_ of that information is nil,
zilch, nada. It's not "information", it's just "worthless data".

And hey, maybe there's some issue that I don't understand, and I don't
see. But if there is some subtle value here, it should  have been
documented.

So I say exactly the same thing I said last time: if the old fscache
code is not usable, and you can't incrementally fix it so that it
works all the time, then JUST REMOVE IT ALL. Moving it elsewhere
before the removal is only pointless noise. But adding some fallback
intermediate code before removal is ALSO just pointless noise.

Doing a flag-day with "switch from A to B" is already painful and
wrong. I don't like it. But I like it even _less_, if it's a "switch
from A to B to C".

If you do want t9o have a "halfway state", the only halfway state that
makes sense to me is something like

 (a) make all the changes to the old FSCACHE - keeping it all
_working_ during this phase - to make it have the same _interfaces_ as
the new fscache will have.

 (b) then remove the old FSCACHE entirely

 (c) then plop in the new FSCACHE

But note how there was no "fallback" stage anywhere. No code that lies
around dead at any point. At each point it was either all working old
or all working new (or nothing at all).

Yes, in this case that "step (a)" is extra work and you're basically
modifying code that you know will be removed, but the advantage now is

 -  at least the fscache _users_ are being modified while the old and
tested world is still working, and the interface change is
"bisectable" in that sense. That's useful in itself.

 - if it turns out that people have problems with the new generation
FSCACHE, they can reverse steps (b) and (c) without having to touch
and revert all the other filesystems changes.

IOW, if a "same interfaces" state exists, that's fine. But for it to
make sense, those same interfaces have to be actually _useful_, not
some fallback code that is neither the old nor the new.

And maybe you can't do that "step (a)" because the interfaces are part
of the fundamental problem with the old FSCACHE. But if you drop (a),
then don't add some stage between (b) and (c), because it's not
helpful.

And again, maybe I'm missing something. But really, I don't see why
this "remove old FSCACHE" stage should *ever* make any modifications
to fs/fscache/* and fs/cachefiles/* when disabling the config option
means that it just won't get built at all.

               Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
