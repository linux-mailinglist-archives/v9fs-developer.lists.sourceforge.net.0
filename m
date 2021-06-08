Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 314393A0654
	for <lists+v9fs-developer@lfdr.de>; Tue,  8 Jun 2021 23:42:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lqjUL-0002IV-UE; Tue, 08 Jun 2021 21:42:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lqjUB-0002H9-2S
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 21:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BzT3wyhqpB6185zh00HzeGjst0xNZzNRNRcMkS0h4Ek=; b=mO0qwTco/d7go/JQkLZyvyc+HP
 mihJllgrltyOBiLKRPdlQLVKo2j1TBeogEDDbR7WMNHpAeSoNYczo8NpsxUOoVyk9nuypgTBzHsSM
 3Y7ROYJNDAseD0oua14PauIN9nJzeL0iwn6fTyRdazV9uEniE9Q9o6sFK7CbiCCNCK7c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BzT3wyhqpB6185zh00HzeGjst0xNZzNRNRcMkS0h4Ek=; b=V5/TQRDkv4Jqfwx9VCLA9Q34Ed
 yHDhRIJFP9vpQNScVo1w66/01VKGDCRo3TwoCsw6O9wBFmkuGF/1/MSh4n8y4yvvcC6UPMlmFnL3T
 EaW3kQQRceGkZkeKmd7945DjYgRYpewgAW99c4iil+Z8sE3gIbHFtNzbO9U/qLJAh4T4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqjU7-0006XI-5n
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 21:42:11 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id BA241C01D; Tue,  8 Jun 2021 23:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623188519; bh=BzT3wyhqpB6185zh00HzeGjst0xNZzNRNRcMkS0h4Ek=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hZs7zDSzWVrirXlYRkb+jr8ZfGHEWgLxIP6E4ym/fYo38OHCnrgAXLk03GvlJ80wc
 x4mK1vQ5pH8UOHFvd8L4zqag2eWJnnMdHYfznLUafJ+oP8csmM21fusFJhPGd2IHMP
 x2A+h/66ugFwS/ecXQDBFnfvvyZGsFSNO6ofK0bLXiyzQARFG4DcbZyQFti3B4i1my
 A1JVbDm/2VNinrbZODsGhJfERVUeNRvAsCBcacT/cJA9HGmH/LIBAiFl42Et7hhdXk
 NDJ/fB7kpmf30DKYvH2PI4iaXRNGopmekboUxPqkpuDH/pgxlmDD+K+kI4L1avIiaK
 H/hT4xQFNqKGw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B5FE2C01A;
 Tue,  8 Jun 2021 23:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623188519; bh=BzT3wyhqpB6185zh00HzeGjst0xNZzNRNRcMkS0h4Ek=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hZs7zDSzWVrirXlYRkb+jr8ZfGHEWgLxIP6E4ym/fYo38OHCnrgAXLk03GvlJ80wc
 x4mK1vQ5pH8UOHFvd8L4zqag2eWJnnMdHYfznLUafJ+oP8csmM21fusFJhPGd2IHMP
 x2A+h/66ugFwS/ecXQDBFnfvvyZGsFSNO6ofK0bLXiyzQARFG4DcbZyQFti3B4i1my
 A1JVbDm/2VNinrbZODsGhJfERVUeNRvAsCBcacT/cJA9HGmH/LIBAiFl42Et7hhdXk
 NDJ/fB7kpmf30DKYvH2PI4iaXRNGopmekboUxPqkpuDH/pgxlmDD+K+kI4L1avIiaK
 H/hT4xQFNqKGw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4cf7185a;
 Tue, 8 Jun 2021 21:41:53 +0000 (UTC)
Date: Wed, 9 Jun 2021 06:41:38 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Vivek Goyal <vgoyal@redhat.com>, Changbin Du <changbin.du@gmail.com>
Message-ID: <YL/kEpcaYE/Jr0J7@codewreck.org>
References: <20210608153524.GB504497@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608153524.GB504497@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lqjU7-0006XI-5n
Subject: Re: [V9fs-developer] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: David Howells <dhowells@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux kernel mailing list <linux-kernel@vger.kernel.org>, dgilbert@redhat.com,
 virtio-fs@redhat.com, Enrico Weigelt <lkml@metux.net>, viro@zeniv.linux.org.uk,
 stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

... And that's why I told Changbin Du a few times his patches needed
more Ccs :/

FWIW: we just got last month a couple of patches that would allow
initrd-less 9p root mount (using the nfs/cifs method described below
with root=/dev/v9fs)

Vivek Goyal wrote on Tue, Jun 08, 2021 at 11:35:24AM -0400:
> NFS and CIFS use "root=/dev/nfs" and CIFS passes "root=/dev/cifs" and
> actual root device details come from filesystem specific kernel
> command line options.
> 
> virtiofs does not seem to fit in any of the above categories. In fact
> we have 9pfs which can be used to boot from but it also does not
> have a proper syntax to specify rootfs and does not fit into any of
> the existing syntax. They both expect a device "tag" to be passed
> in a device to be mounted. And filesystem knows how to parse and
> use "tag".
> 
> So this patch proposes that we add a new prefix "fstag:" which specifies
> that identifier which follows is filesystem specific tag and its not
> a block device. Just pass this tag to filesystem and filesystem will
> figure out how to mount it.


...However I agree something more generic would be welcome in my
opinion, so I like this approach.

I'll give it a try for 9p over the weekend and report back.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
