Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EA26CFB28
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 08:02:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phlMY-0001xK-V8;
	Thu, 30 Mar 2023 06:02:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1phlMX-0001xE-0n
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 06:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q/LJFEu2WGaKcEH/ns/xlYsS+VMYLm7tE/d//fC1ScM=; b=QLqTTy2tZwYu66xxakyGdp+U4I
 kkChWOYPhFqaU4TBAvDU6VrqCWz0ZtVPivptd0cS+p5X0CpPD/Vrx9uTiIU871yl1XLpIrfNz02Jf
 MPSVwyB9kXrKpiuZ89Ac9EsBM7so+MmZDpgVufg08RIu+CqedGv2BaLYKh3D6fYSS0ZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q/LJFEu2WGaKcEH/ns/xlYsS+VMYLm7tE/d//fC1ScM=; b=le0PicDymfVj7EA2kPySz8RLU8
 JrL4XNiH1vpG3KWxLNvMZPepnODNu7eWc0hbCBGwyxZQRFvjUeqWoJtN1EXov9Yub4nrw980nZvfa
 K4VlQsT/9Vf+ZPyOJzbvGthJS8oHNyYTlrULO1dl7WVTqP0qFlPUtD3d/Dy0OELqru14=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phlMU-0007mN-0E for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 06:02:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3327E61F0D;
 Thu, 30 Mar 2023 06:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B84DC433EF;
 Thu, 30 Mar 2023 06:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1680156125;
 bh=MatsWcKGv66X0GG9UiUtyibm2aW+Mc1KwnNPQlz05QQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W9l+o6oG9PPtB1m2nPF99hD029z22ZIl1k97974fnK2LhK28ABP9MgqgRFEBbSHXW
 bg3kZPLcSaKlEbCGwRuzlfN/YU/dgg+s5NCsB8Ux/SqzYpCC7E5MNAqhWuNZQ12nMU
 lo6pW2mavFr5uZ8cPG1png/oPf+T0pKaSlhTjCMk=
Date: Thu, 30 Mar 2023 08:02:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <ZCUl27HmB4pVkAb_@kroah.com>
References: <20230329192425.194793-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230329192425.194793-1-jlayton@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 29, 2023 at 03:24:23PM -0400, Jeff Layton wrote:
 > There are 4 functions named dt_type() in the kernel. Consolidate the 3
 > that are basically identical into one helper function in fs.h th [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phlMU-0007mN-0E
Subject: Re: [V9fs-developer] [PATCH] fs: consolidate dt_type() helper
 definitions
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
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Chuck Lever <chuck.lever@oracle.com>,
 Joel Becker <jlbec@evilplan.org>, Tejun Heo <tj@kernel.org>,
 v9fs-developer@lists.sourceforge.net, Christoph Hellwig <hch@lst.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Mar 29, 2023 at 03:24:23PM -0400, Jeff Layton wrote:
> There are 4 functions named dt_type() in the kernel. Consolidate the 3
> that are basically identical into one helper function in fs.h that
> takes a umode_t argument. The v9fs helper is renamed to distinguish it
> from the others.
> 
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  fs/9p/vfs_dir.c    | 6 +++---
>  fs/configfs/dir.c  | 8 +-------
>  fs/kernfs/dir.c    | 8 +-------
>  fs/libfs.c         | 9 ++-------
>  include/linux/fs.h | 6 ++++++
>  5 files changed, 13 insertions(+), 24 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
