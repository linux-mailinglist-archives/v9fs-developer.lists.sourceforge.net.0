Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C0153F4A9
	for <lists+v9fs-developer@lfdr.de>; Tue,  7 Jun 2022 05:41:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nyQ69-0003dW-I5; Tue, 07 Jun 2022 03:41:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nyQ68-0003dQ-4C
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Jun 2022 03:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4tLzl4/HAg0Lw635r/GzVfA/PgvqTa8rP2CYhqLXFYk=; b=k64N1wLT8q92AMO3BBcJdO+LGp
 +ILujKNQ7P8balla/OOpJFtvTb0AdT6ioNOKDjhO05wcTpA3ePf+m0GGsEfcT/z7mCvaSTsbFT3ta
 15q8GqOTP8Pe6Ytyu1iP6xgDpOzEQxokGAJnDZICyEdk2s/cd4TrvUfMKQIFAy2Y7Q6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4tLzl4/HAg0Lw635r/GzVfA/PgvqTa8rP2CYhqLXFYk=; b=fHX9PCoynHjwPBziO88wziaZkZ
 j2Rc6grC5Hwjo+ElExqp3VgoZY2FtR6kxoix5jtWu2cuStuMTLxyZ+H04GjgkS58zUrrCD3HrjAzS
 /P0i9mXDxXaVAQ05jUZiS6ZpKb9joUnlqWWGoeTSPvLs5QavE8if5J3LRA9qVJnD693I=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nyQ63-0005rB-W1
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Jun 2022 03:41:40 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 615EE20BE62B;
 Mon,  6 Jun 2022 20:41:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 615EE20BE62B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1654573291;
 bh=4tLzl4/HAg0Lw635r/GzVfA/PgvqTa8rP2CYhqLXFYk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NZ5sUx/UlOZrV/pcDFvmq2kvIC2/zcpuLArY4liv2FgeI7T5s0dJmBXbRIIpc8ndp
 wkJ0DsPOZIglb1Zb6vQ2tTvguctmYuClL0U1oiWrJuJxTDYTOsp1W17PZYlMUC94mt
 9Fj0ujzP6XzPtrAtJzs4OQNf2F/Hf6it7kRqDTmE=
Date: Mon, 6 Jun 2022 22:41:10 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220607034110.GA7401@sequoia>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
 <43525959.9j6oIFhYhY@silver> <20220531142829.GA6868@sequoia>
 <1849605.JvGbLJQp6r@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1849605.JvGbLJQp6r@silver>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-06-01 16:28:49, Christian Schoenebeck wrote: > On
 Dienstag, 31. Mai 2022 16:28:29 CEST Tyler Hicks wrote: > > On 2022-05-30
 19:14:43, Christian Schoenebeck wrote: > > > On Freitag, 27. Mai 202 [...]
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nyQ63-0005rB-W1
Subject: Re: [V9fs-developer] [PATCH v2 1/5] 9p: Fix refcounting during full
 path walks for fid lookups
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
Cc: v9fs-developer@lists.sourceforge.net, Jianyong Wu <jianyong.wu@arm.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-06-01 16:28:49, Christian Schoenebeck wrote:
> On Dienstag, 31. Mai 2022 16:28:29 CEST Tyler Hicks wrote:
> > On 2022-05-30 19:14:43, Christian Schoenebeck wrote:
> > > On Freitag, 27. Mai 2022 01:59:59 CEST Tyler Hicks wrote:
> > > > Decrement the refcount of the parent dentry's fid after walking
> > > > each path component during a full path walk for a lookup. Failure to do
> > > > so can lead to fids that are not clunked until the filesystem is
> > > > 
> > > > unmounted, as indicated by this warning:
> > > >  9pnet: found fid 3 not clunked
> > > 
> > > That explains why I saw so many fids not being clunked with recent Linux
> > > kernel versions while doing some 9p protocol debugging with QEMU recently.
> > 
> > In addition to this refcounting bug, there's another one that I noticed
> > while running fstests. My series does not fix it and I haven't had a
> > chance to look into it more. The generic/531 test triggers it.
> > 
> >  https://git.kernel.org/pub/scm/fs/xfs/xfstests-dev.git/tree/tests/generic/5
> > 31
> > > > The improper refcounting after walking resulted in open(2) returning
> > > > -EIO on any directories underneath the mount point when using the virtio
> > > > transport. When using the fd transport, there's no apparent issue until
> > > > the filesytem is unmounted and the warning above is emitted to the logs.
> > > 
> > > Actually I never saw that open() = -EIO error. Do you have a reproducer?
> > 
> > The reproducer that I have is binary only (fairly large and runs a bunch
> > of different tests) and is used to regression test the Windows Subsystem
> > for Linux 2 (WSL2) host <-> guest filesystem sharing. Now that I think
> > about it, I'm not sure if the open() = -EIO error happens with other 9p
> > servers.

This -EIO error looks to be specific to the WSL 9p server. I was unable
to reproduce it with QEMU's 9p server. I just see unclunked fids with
QEMU.

> > 
> > I can try to tease out the exact sequence of filesystem operations from
> > this test binary but it might take me a bit. It looks like it has to do
> > with switching UIDs, which could make sense because different users may
> > not be connected to the filesystem yet (the conditional block that does
> > p9_client_attach() and v9fs_fid_add()).

I didn't have much luck here. This issue only reproduces after a
sequence of somewhat unrelated tests running in succession. They each
contain a lot of unnecessary filesystem operations but they each contain
some setuid() calls which makes some sense considering the refcounting
change proposed in this patch.


9p maintainers, is there anything else that I can help with to get this
bug fix reviewed/merged? Thanks!

Tyler


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
