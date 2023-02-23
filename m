Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D426A12C3
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Feb 2023 23:22:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pVJzM-00087j-AD;
	Thu, 23 Feb 2023 22:22:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pVJzK-00087b-GW
 for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 22:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/uLu8UJZyECRuU50YoFus/DSBypa1Ry+uXgGvAlWLw0=; b=GUorYLvhGazdA0V55CIvrG39Wx
 asZ0g2GHiT1f30+q8VPF5E2vgH3Sbxbb95UZd6vpYiXJebHQxXwiyuLYW7uV5DNQfHIrYkfCLkMFk
 bWJ17NWBJWO5dCs4DmnNaYqlshZgp7CeMpHI8qpF1FnQyl60ErhEw4zTOfBYdVyO+ePw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/uLu8UJZyECRuU50YoFus/DSBypa1Ry+uXgGvAlWLw0=; b=CKmwErlpwFig/ITJ15mpDSSkCq
 5OB3tVS9ECZbMelSyu9tczmuCvP5/yaHTzyTL1SxCHyAuVcWJfajCBQkgCK7W/ujRlTJmP1JMN5gM
 CVj5RoaJMF1A1nFRAl/Eukn0f5yQwWtraVCncjfJUahmw88dPBfUD+3rvf1TpBUIC2IU=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pVJzJ-00Exos-Ub for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 22:22:54 +0000
Received: by mail-wm1-f43.google.com with SMTP id c18so5535816wmr.3
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 23 Feb 2023 14:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/uLu8UJZyECRuU50YoFus/DSBypa1Ry+uXgGvAlWLw0=;
 b=KfQVAKtrQsGAocbrBDXP//aZyjtybd8AGzDqukavn2djFssxxZxc9sULYFU/O8+xhP
 W5O/LEDiFwEL5JIios+na6Fclybk3yOMc4LoRTd/o/JEO63EIJFAYKFDU3+NExQkOJ7I
 yT03LTP6A4EgGwTnjIXxDGV2R8z1RSE1Ul+/afLcP+DBNKz4dadXDB4DIlMF4MH1cY82
 7Aqq5gs/YTLe1CPNblLtLuwstEYrgQl85lbWsWf3N5Ukrm04zr3ltwSBvEhButlpMb/v
 1ZSVqVwSaTIyzEdRWHdNDpTSDaHDjAwGiZBTjLp76wRGDscOE91WyBZyA5CKkhBlWHvO
 MW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/uLu8UJZyECRuU50YoFus/DSBypa1Ry+uXgGvAlWLw0=;
 b=2rxicxM2Bhs+4m/EQj8p2dbcLVU46vGmZ/zWOqVSCzKmsm/4IpcDnQMOVMnTC2p2AZ
 uLwVGXp/JztjeulJsygcgbue2yanhxks/jeqGLWf1kkc92IrFbi9PwkuvyAONBqZPZMm
 llPizZ9Hn49uIanP2+8uG6t2+gIZ2yUrm4J8lHgg0NgkCbub6Qppb+VApyYdwswr3yOQ
 m2QCeA7NVts8mQL0gxAJK23Vcq3aS62+KXzX9o3bmWjWdd4H+r8SLEKfBYu9/+0o2H45
 Wgwr4R3FNci126YVrArRhv093HupZTIBLXE0/03D+EE/vsmAJ8Ev35jGkYLgvvWn4QLY
 lIwA==
X-Gm-Message-State: AO0yUKX9PVodJ0UVWPG/K14BbzosOyInNgR2v7vjKHXGM35WbEs8BHZ1
 ADDuKFliZBoZAMS0+qXpCVV6PCZWRJCjrSNtrUw=
X-Google-Smtp-Source: AK7set/sT3v5J6FayP6I0c5GkHHrQGafe4yij4mP4OWLn0U27bTY+l37YAeKUNY5yY7hPsSxZJ7CGB3ZZN4ZnX14C4s=
X-Received: by 2002:a05:600c:1f06:b0:3e2:cc:d8f2 with SMTP id
 bd6-20020a05600c1f0600b003e200ccd8f2mr630988wmb.1.1677190967036; Thu, 23 Feb
 2023 14:22:47 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <Y/CC3qyBFSFVI/S0@codewreck.org>
 <CAFkjPTnVmhJ6Qc7wjgR+QNQ4ma-NmQSW=PKcXkC1FkDZA00stw@mail.gmail.com>
 <Y/fgil/uXLAisE9/@codewreck.org>
In-Reply-To: <Y/fgil/uXLAisE9/@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Thu, 23 Feb 2023 16:22:35 -0600
Message-ID: <CAFkjPTnBonY+RsKJ3DcntZtCD4U=8_7ecRORSwaOXk4U9uuNCQ@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: yeah - so I'm going to move this to move the relevant patches
 to my ericvh/for-next branch now and we can keep that as the "canonical"
 branch for reviewed patches we intend to submit and I'll keep my [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pVJzJ-00Exos-Ub
Subject: Re: [V9fs-developer] [PATCH v4 00/11] Performance fixes for 9p
 filesystem
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
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

yeah - so I'm going to move this to move the relevant patches to my
ericvh/for-next branch now and we can keep that as the "canonical"
branch for reviewed patches we intend to submit and I'll keep my WIPs
in ericvh/devel.  I think since you are a maintainer, I don't need to
re-sign off on your patches, but I guess I should review the official
docs for submitting to Linus -- I'll probably get yelled at
regardless...

On Thu, Feb 23, 2023 at 3:54 PM <asmadeus@codewreck.org> wrote:
>
> Eric Van Hensbergen wrote on Thu, Feb 23, 2023 at 10:48:42AM -0600:
> > just as an update, I've been working through the comments and have a
> > private branch with some changes for review, but I'm conscious of
> > running up against the merge window so I think I'm going to submit a
> > subset which were signed off along with the 9p-next ones
> > today/tonight.  The branch is already published to github/kernel.org
> > as for-linus-6.3
>
> (hmm, doesn't look like in kernel.org's:
> https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
> I found it on github; I think keeping two "trees" is slightly confusing
> so would suggest keeeping a main one for communications, I'm not sure
> how to properly communicate one is the backup of the other)
>
> > -- someone double check me and make sure that all
> > looks sensible.  It passed all my tests a couple days ago, I was just
> > optimistically trying to fix the others up, but I think I'd rather go
> > safe than sorry.
>
> Thanks for picking up my patches!
>
>
> The first one (b5c2265f7b9f 9p/virtio: add a read barrier in
> p9_virtio_zc_request) was actually ready for the previous merge window
> but I was notified that it makes an existing race worse in... wait, that
> mail had linux-kernel@vger and v9fs-developer in cc but doesn't show up
> in any archive?... I've quoted the relevant part when replying here:
>
> [1] https://lore.kernel.org/all/Y5hbXanne5IryJBV@codewreck.org/T/#u
>
> The mail had broken the thread so it's no wonder you didn't see it :/
>
> Anyway, TL;DR is virtio's behavior when wait is interrupted isn't quite
> correct, I'd tend to prefer keeping the status quo of no barrier even if
> it makes absolutely 0 difference for x86 afaik.
>
>
>
> Also, meta-question regarding sign-offs: I wonder if you'd technically
> need to add your's to all commits (including the ones I did sign off)
> since my understanding is it tracks the origine of the patch? But
> honestly I've never really understood this, happy to send as is and see
> if Linus complains.
>
>
> With that said all othre commits look good, the cache change you picked
> might introduce a very slight difference of behavior with cache=mmap but
> I don't think that'll break anything given what we tested so far.
> If you can wait this weekend I'll run some quick tests this weekend, but
> if you'd rather send early ok anyway.
>
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
