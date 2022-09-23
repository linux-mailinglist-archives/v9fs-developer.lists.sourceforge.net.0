Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 340265E7DE7
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Sep 2022 17:06:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obkFa-0004Am-A7;
	Fri, 23 Sep 2022 15:05:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1obkFY-0004Ae-3u
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 15:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HO2AvJTBi2QfRYWbbvhuQ6oKeOfsWSwPhLgWOk8zYZY=; b=isuApPyPQmNAPb0TDwoCw5qDvp
 Pnbi4S81rgbFH0SXmOCspbEpHDByODzY9Gwahp0WX4cXoijHlDMC9xbqp5rzEbfFRuifC4GdnWv8K
 4ayJ7cfZBK7pgyfQTjwctXlurvzf0ErlIS9fnwv+xoIeP92aEYNYnf+lsIKWXiLjnc0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HO2AvJTBi2QfRYWbbvhuQ6oKeOfsWSwPhLgWOk8zYZY=; b=W8/6ydMIjIxpXAbSYS1ruyj3nX
 lD9w6w2DUbFV9EDhz9N9KxmKX0oyDAfim8cqYE8kDlfjAPN2fBTYI1k4h0xXr8Wg8/5iWAzofqlp0
 TELLQ+Kru7QfPYgolR++WSl2k8WFokXqwZ9OA24TWtMHRPoSknYLiXZepVRvo8sp/eNA=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obkFS-0006iD-2X for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 15:05:56 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 j17-20020a9d7f11000000b0065a20212349so180782otq.12
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 23 Sep 2022 08:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=HO2AvJTBi2QfRYWbbvhuQ6oKeOfsWSwPhLgWOk8zYZY=;
 b=NHXgpkbklpQY1dujkTxtgfpxjRfII6eFpWmZSiA94BsmX9afxqU758gbbWdD1qv4DZ
 JoTmy1STKapeGJaAgqqjvA+xpmdZWFxiMRR3inRInB+3S7y8k9Cs6sQzjVaNL0b3Fn1H
 PStOgZVxWclUZJQHy8i0NeYGisONz5lsSzTX8eVG2s5pGmMVrnRKNJbfHyeE5teKHP45
 WJvJnzu3R1+twTmRMEHTMm+QNhtaQrSTgjISgkdk+uPageY2jCkJPpMh8O/cK+mHXBNC
 lHemW5id3LXX/oEy5gYDrOhXB4BryhiqdHQ1zof+3HYEO5MojDCqpnl/MRHH9B9V7kPe
 DQpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=HO2AvJTBi2QfRYWbbvhuQ6oKeOfsWSwPhLgWOk8zYZY=;
 b=SQ1VAqnyR52N+NN8OuOjgquf36X4H931+k08EQfVITpOICoXhugQhwoEHTkGZC+P5n
 bOoDJ9q0lBdLV0YLJWuHpxX+YsOdrDZaINMY3JB63mVNZJNxaNra9RLalRDj+OJJ9A/E
 4sQ3b+qgCWe4LttiLETs0Sy4Ts/ZqKoqW5zbYO27DwuYJ18jCP0rMPFoE47/Ra7FEGUj
 wo+1m6Sj+RoAzeWaU9MGtUNcS8G1FmjaOBeyMo0uackIIa/Cvy0j46A41XJJ88Rh8JlL
 IRkzgeJIaG56v6EIOH6JMXZBFGRfjhKsMwVyUWdCRMRY18ZiI4CxQ5ITtviDpwMhu40Y
 Bdgg==
X-Gm-Message-State: ACrzQf08mqNG+b/ArFInB4DrodmUOb8GatPyifYRLMMfgdlNQ+VBaN6+
 R+Fojs/h4NAtU6jnLsk7ZbnWF7bJLI2+/lZO0OpJPpjaxA==
X-Google-Smtp-Source: AMsMyM7D3kMRKr/61cWceGGLPP8+nkrbp44T14E6MBNWlxKrHZ7Y8XAD0aPfsm+uqT+6w6wN/CfDBmHsj4twkIhQwhQ=
X-Received: by 2002:a9d:1b70:0:b0:658:cfeb:d221 with SMTP id
 l103-20020a9d1b70000000b00658cfebd221mr4096556otl.34.1663944132441; Fri, 23
 Sep 2022 07:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
 <20220923084539.vazq4eiceovoclcf@wittgenstein>
In-Reply-To: <20220923084539.vazq4eiceovoclcf@wittgenstein>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 23 Sep 2022 10:42:01 -0400
Message-ID: <CAHC9VhRroVU6vOoNtpdRYXVkjJZZ+nwXC5sObGoPDw0d4Z1UBw@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 23,
 2022 at 4:46 AM Christian Brauner <brauner@kernel.org>
 wrote: > On Thu, Sep 22, 2022 at 10:57:38AM -0700, Linus Torvalds wrote:
 > > On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <cas [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1obkFS-0006iD-2X
Subject: Re: [V9fs-developer] [RFC PATCH 00/29] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Sep 23, 2022 at 4:46 AM Christian Brauner <brauner@kernel.org> wrote:
> On Thu, Sep 22, 2022 at 10:57:38AM -0700, Linus Torvalds wrote:
> > On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > >
> > > Could we please see the entire patch set on the LSM list?
> >
> > While I don't think that's necessarily wrong, I would like to point
> > out that the gitweb interface actually does make it fairly easy to
> > just see the whole patch-set.
> >
> > IOW, that
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
> >
> > that Christian pointed to is not a horrible way to see it all. Go to
> > the top-most commit, and it's easy to follow the parent links.
> >
> > It's a bit more work to see them in another order, but I find the
> > easiest way is actually to just follow the parent links to get the
> > overview of what is going on (reading just the commit messages), and
> > then after that you "reverse course" and use the browser back button
> > to just go the other way while looking at the details of the patches.
> >
> > And I suspect a lot of people are happier *without* large patch-sets
> > being posted to the mailing lists when most patches aren't necessarily
> > at all relevant to that mailing list except as context.
>
> The problem is also that it's impossible to please both parties here.

Oh the trials and tribulations of Linux Kernel development! ;)

I'm joking, but I do understand the difficulty of pleasing a large
group of people with very different desires.

> A good portion of people doesn't like being flooded with patches they
> don't really care about and the other portion gets worked up when they
> only see a single patch.

You are obviously never going to be able to make everyone happy, and
everyone with a solution to share obviously has some bias (I'm
definitely including myself in this statement), but I tend to fall
back on the idea that upstream kernel development has always required
those involved to deal with a large amount of email, so sending a full
patchset is not new.

> So honestly I just always make a judgement call based on the series. But
> b4 makes it so so easy to just retrieve the whole series. So even if I
> only receive a single patch and am curious then I just use b4.

As I mentioned previously in this thread, the issue is more on the
reply side.  Reading from lore or b4 isn't terrible for me, but
replying is a pain for me and my mail setup.

> I've even got it integrated into mutt directly:

I'm glad it works for you.  Although I would like to take this
opportunity to remind anyone still following this tangent that not
everyone uses mutt, some of us* really dislike it, but due to the
magic of email we are still able to participate with other mail
clients, services, and tools.

* I'm using "us" somewhat liberally here, I have no data to back up my
claims.  However, I'm fully prepared to accept the idea that I'm the
only person out of the thousands of kernel devs who dislikes mutt.
Bring it on haters, just know that you're all wrong ;)

-- 
paul-moore.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
