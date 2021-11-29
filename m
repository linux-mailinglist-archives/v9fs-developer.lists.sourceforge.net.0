Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7944617FF
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:24:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhZb-0002FA-2d; Mon, 29 Nov 2021 14:24:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <SRS0=it4N=QQ=ubuntu.com=christian.brauner@kernel.org>)
 id 1mrhZJ-0002BB-M5
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6CDGix0i2PivoiO3FnY/PdQ90iwyr7CSv9dwAqg8Orw=; b=jcCbpPyPKkYgrhIz8b24ZH50kw
 Jgeq+ne1HaDutjPu1Wc7wbVZfnZ+RpkPw7izT9OMNpE+Vg7ThwzRzLSPYJVxMLsOBwnHJgIRLRltN
 ssNctjNXrfTT51lSfAr0pyUJgUjAJfUaKbXyL7bKiH93M/U9vVksyFz1kEOq3zoENgvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6CDGix0i2PivoiO3FnY/PdQ90iwyr7CSv9dwAqg8Orw=; b=Vi4x3TjCcHq2dqm/Yfrk0rXYa/
 5urFQY+/rrpv+Pd+CV6hzcjiriYe65FNCFytlnUQx39Ya6V8WgnPWHCMq6wM3qVln9DTVoV7Ii5UM
 Sxwjvf4GvOdJRAwnoELNa7qZBWoayYYRffMSYVM8MwUd1JeKnl86Oj70lG8LgGx3vja8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhZJ-0008O8-LZ
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:23:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 30D08B81184;
 Mon, 29 Nov 2021 14:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADE42C004E1;
 Mon, 29 Nov 2021 14:23:32 +0000 (UTC)
Date: Mon, 29 Nov 2021 15:23:29 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20211129142329.y7wrxuyeoxai4ifh@wittgenstein>
References: <000000000000a0d53f05d1c72a4c%40google.com>
 <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org>
 <20211129134311.3vvrim4wf557q3fa@wittgenstein>
 <YaThk3KjlNwBeeva@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YaThk3KjlNwBeeva@codewreck.org>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 29, 2021 at 11:20:03PM +0900, Dominique Martinet
 wrote: > Christian Brauner wrote on Mon, Nov 29, 2021 at 02:43:11PM +0100:
 > > On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1mrhZJ-0008O8-LZ
Subject: Re: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, syzkaller-bugs@googlegroups.com,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 29, 2021 at 11:20:03PM +0900, Dominique Martinet wrote:
> Christian Brauner wrote on Mon, Nov 29, 2021 at 02:43:11PM +0100:
> > On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet wrote:
> > > OTOH this is better than leaking kernel uninitialized value and
> > > hopefully the server will be using the valid flags and ignore whatever
> > > value we choose to init with, so what I just said (probably) doesn't
> > > really matter and I'd be inclined to just take this for now as I have no
> > > time to check in details...
> > > I guess I'll take this unless someone has anything more to say.
> > 
> > So we both agree that the client should not send uninitialized data over
> > the wire as that's pretty bad. And it shouldn't try to log unitialized
> > data. Both happen currently.
> 
> Yes, there is no doubt that this is much better than what we currently
> have.
> 
> > There are multiple ways to fix this. For example, the 9P2000 protocol
> > sets all values to invalid values in v9fs_vfs_setattr(). I briefly
> > considered fixing it in a similar way but I don't see how this would be
> > better as you'd be sending completely invalid values over the wire
> > and if the server doesn't verify that the values are sane you have a
> > problem in this case as well.
> >
> > So simply setting everying to zero and at least setting the {g,u}id
> > attributes which carry most of the privilege associated with a file to
> > INVALID_{G,U}ID is a minimal safety net.
> 
> Right. For me it doesn't really matter if we initialize it to some
> arbitrary garbage or 0/INVALID_G/UID, the client should not send these
> values over the wire (the protocol should have a way to either not send
> anything or define a value to send in this case -- but unfortunately it
> doesn't look like this is the case), and the kernel modules should not
> try to log these values either.
> 
> Looking for where the attributes are used and adding checks is probably
> possible, but we can't reinvent the protocol so what you're doing is
> probably the easiest way to go anyway.
> 
> 
> 
> Just one thing now I'm re-reading the patch:
> > +     if (iattr->ia_valid & (ATTR_ATIME | ATTR_ATIME_SET)) {
> > +             p9attr.atime_sec = iattr->ia_atime.tv_sec;
> > +             p9attr.atime_nsec = iattr->ia_atime.tv_nsec;
> > +     }
> > +     if (iattr->ia_valid & (ATTR_MTIME | ATTR_MTIME_SET)) {
> > +             p9attr.mtime_sec = iattr->ia_mtime.tv_sec;
> > +             p9attr.mtime_nsec = iattr->ia_mtime.tv_nsec;
> > +     }
> 
> I don't know about the vfs, but for the 9p side these attributes only
> make sense if ATTR_{A,M}TIME_SET are set -- just ATTR_xTIME ignores the
> value in the attr and uses the current server time instead.
> 
> Do you know if iattr's properly initialized in the ATTR_xTIME case?
> Even if it is since this is setattr code I'd say it makes more sense to
> only send iattr's a/mtime if ATTR_xTIME_SET is set, so I'd remove the
> first one.
> 
> If you're ok with that I can amend the patch on my end, I don't think
> that warrants a resend.

Yes, that sounds sensible! Thank you!

Christian


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
