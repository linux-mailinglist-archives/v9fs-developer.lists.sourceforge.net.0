Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 930446BEF0C
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Mar 2023 18:01:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pdDSK-0000B1-Q4;
	Fri, 17 Mar 2023 17:01:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pdDSI-0000Au-Jz
 for v9fs-developer@lists.sourceforge.net;
 Fri, 17 Mar 2023 17:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tc1Ck3nSI1pzzPl4+IjJKsv3yrqxTz0ggGGySc5PqMk=; b=MHPH6jWtcgsySFeaAQLPCtJN+d
 mpdrKyju+jM6z3YPkMS5uPM/lwTtkjr74pe4RaMTblx0j6iAgkedb25bweGaaQTkD4KRUoNNjWN+f
 ET0Ghi1mkNdl4ehm974sBZqulpqjbCBjSUiFpBOij371MX0zwFeC0b7chIazAYBBwmMM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tc1Ck3nSI1pzzPl4+IjJKsv3yrqxTz0ggGGySc5PqMk=; b=fDNycldjPBCTCcBZrCYfbT3S24
 no8Ycb46SyoMScBujEAmnf5VjNND9g3JuRbxnFD/o0G1aL7Jr4d6bPeVxS4eaOxIlza+gyN0RH48u
 MdYc5ceqCrgXeKoTrL6GDtxDAzktKbbsQDes7H3ooANMxNu/YAUYArJ1NQFSIYw/1I6s=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pdDSF-0007EZ-MX for v9fs-developer@lists.sourceforge.net;
 Fri, 17 Mar 2023 17:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Tc1Ck3nSI1pzzPl4+IjJKsv3yrqxTz0ggGGySc5PqMk=; b=OatFwPX6rue4x+TmhOQdgZmaq2
 2cSOfVq7OUoCdwdgKaBEI2THeqIiOLZTtObXJuXo5eKytZAPpF1xExhV4KBTNOEJUwZxZnOlmijmD
 AwZKUW3bp60Vvw72Yemk49E8XebDa84m/E5ijkSBeQAJkHkcdVNvkjh3v3z6Jtuzl0k4CaRQefjqU
 jpIu6a2NgFb3yssWQZ5mbBqJkfC/e0Ya+PwzRgBDlUWV6MX1gHGQbZ/WMMINY+y9I4FRbzIeP/YJ/
 p5c2+HK4GnOhAJsyLCa6+qqMO6WfunfwYvaNM/UGvfU0saRakTmqnaV6GSvL+U/HjF208/C6oc5Js
 sLNTWvvw==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1pdDS2-002psH-2q; Fri, 17 Mar 2023 17:01:10 +0000
Date: Fri, 17 Mar 2023 10:01:10 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Eric Van Hensbergen <ericvh@gmail.com>, Josef Bacik <josef@toxicpanda.com>,
 Jeff Layton <jlayton@kernel.org>
Message-ID: <ZBSc1jjYJn6noeMl@bombadil.infradead.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <CAFkjPTmVbyuA0jEAjYhsOsg-SE99yXgehmjqUZb4_uWS_L-ZTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTmVbyuA0jEAjYhsOsg-SE99yXgehmjqUZb4_uWS_L-ZTQ@mail.gmail.com>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Mar 12, 2023 at 01:22:34PM -0500, Eric Van Hensbergen
 wrote: > I was looking at kdevops the other day - cool stuff. Was trying
 to > figure out how we could do v9fs CI with it. Happy to help any questions
 you may have about it! 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pdDSF-0007EZ-MX
Subject: Re: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Mar 12, 2023 at 01:22:34PM -0500, Eric Van Hensbergen wrote:
> I was looking at kdevops the other day - cool stuff.  Was trying to
> figure out how we could do v9fs CI with it.

Happy to help any questions you may have about it!

> Both cache=loose and cache=fscache currently don't validate via host.

What does this mean exactly?

Right now a host with debian 6.0.0-6-amd64 certainly does not seem to push
out changes to 9p clients on VMs but Josef informs me that with 6.2-rc8
he did see the changes propagate.

So I'm about to upgrade the host forward now in hopes that this is
somehow resolved on a newer debian testing kernel.

1) The simple test is boot up the guest, read a file mounted with 9p.
2) On the host append a file and sha1sum it.
3) Client side sha1sums after a few seconds

Today on 6.0.0 I see absolutely no updates, I have to reboot the guest.
Josef seems to indicate he does not see this issue on 6.2-rc8. So
curious if this was a bug fixed.

> I have a patch series which adds some new cache modes (readahead and
> writeback) that give closer to the loose performance but with tighter
> consistency (open-to-close) - these patches are in my ericvh/for-next
> tree.

Good to know!

For the typical workflow for kdevops we do kernel compilations on the
host over and over and over again. Take your typical kernel day, that's
how often we do that. So it is conventiant to just have the guest run
'make modules_install install' instead of:'reboot; make modules_instal install',

Do none of the existing 9p cache modes not support open-to-close policies
at all?

Right now the cache mode used is cache=loose as that's the default,
what do you recommend for a typical kernel development environemnt?

> I've also started on some patches to add cache=tight which will
> do dir caching like loose but with validation, and potentially also
> will add a new flag that will indicate how often loose should
> revalidate.  There is also some discussion of decoupling fscache from
> the revalidation policy.

I see !

> So the stuff in for-next will make it into the next kernel, there is a
> writeback fix patch that still has some bugs when cache=fscache that
> I'm working through, but the base patches add the new cache modes.
> The new dir cache along with tight policy will hopefully get done in
> the next month and so should be ready for next merge window as well.

Nice!

  Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
