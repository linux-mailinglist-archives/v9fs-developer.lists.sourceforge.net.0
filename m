Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F9E40EF1E
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Sep 2021 04:09:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mR3Jc-0003TX-J2; Fri, 17 Sep 2021 02:09:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kuba@kernel.org>) id 1mR3Jb-0003TM-Ki
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 02:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ytmyk2mHjh8FvInGX9tpvjYuKpcuPu7rEmqxRRUkHbg=; b=kHZrL07S58sdnhiQcWnKevfIal
 aooEZl0c9UfW8VcvZXiCEWRFPCgCotYZ9wDbHCsLVm/Im3fEpvoZXgMfKCUvuFmaAZ+G4R+TP3edT
 poqMuNSpZbWaS1zI8ZRg1zh2Dn+eQAUC744FuP9IHr27Cfq7Up3qVjQAdBjYzBj8o7WE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ytmyk2mHjh8FvInGX9tpvjYuKpcuPu7rEmqxRRUkHbg=; b=X/ZxzzYbEyYWArSoB2S77r+YKp
 SPZA1eiztEFxmaNpRtopuCl/uYZKI++O0pAX0QSPxlB7+sBzyj+brLBfmLqBmjRbmxGiIHTf3OZqP
 dox3zcsjQNsTrJRMhXZL4uB5ZzCH38Kk6b804LxltLzPOrC/HlG2slck0TiuYqlWb8T4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mR3JV-0008Bp-IM
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 02:09:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5FD6361108;
 Fri, 17 Sep 2021 02:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631844549;
 bh=JyQLgmYuWrWIWVvqDvKaOdjjtIjX7izw2/8TAJWk3kc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EdUkCULlgmj164JvBKkluhYvU5IKeQrkf+cdzFs8X81cg25/oTyWDkAqJpkDQX9gS
 MCkl9pmxa5YdDJ1uix1yyag+vjdBJ8kR48PSZBgQo9bc0wSq0K5yLssCf+wIhmkws7
 2kzLBIWCxvq8DoYxF4wCAKO2eXwwaz58Ew2LTcwzdEq8A95fYkShvxg6funsDcaiT+
 mbUPuUG3WTX0tmBUml7l+HaG3Sz4BH77UKyhB5uopK0+18xXnq1zavEgSyLMIUh5RN
 PSZ0dP1Tv9q+zNsORh0BIgZH58nLQlejJYEAdr//uITIPqw+wlVgUuNZ13ao8yFDnt
 SRKhNChiFA1bQ==
Date: Thu, 16 Sep 2021 19:09:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <20210916190908.19824be5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <cover.1631816768.git.linux_oss@crudebyte.com>
References: <cover.1631816768.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu,
 16 Sep 2021 20:26:08 +0200 Christian Schoenebeck wrote:
 > This is an initial draft for getting rid of the current 500k 'msize' >
 limitation in the 9p virtio transport, which is currently a bot [...] 
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mR3JV-0008Bp-IM
Subject: Re: [V9fs-developer] [PATCH 0/7] net/9p: remove msize limit in
 virtio transport
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 16 Sep 2021 20:26:08 +0200 Christian Schoenebeck wrote:
> This is an initial draft for getting rid of the current 500k 'msize'
> limitation in the 9p virtio transport, which is currently a bottleneck for
> performance of Linux 9p mounts.
> 
> This is a follow-up of the following series and discussion:
> https://lore.kernel.org/all/28bb651ae0349a7d57e8ddc92c1bd5e62924a912.1630770829.git.linux_oss@crudebyte.com/T/#eb647d0c013616cee3eb8ba9d87da7d8b1f476f37
> 
> Known limitation: With this series applied I can run
> 
>   QEMU host <-> 9P virtio <-> Linux guest
> 
> with up to 3 MB msize. If I try to run it with 4 MB it seems to hit some
> limitation on QEMU side:
> 
>   qemu-system-x86_64: virtio: too many write descriptors in indirect table
> 
> I haven't looked into this issue yet.
> 
> Testing and feedback appreciated!

nit - please run ./scripts/kernel-doc -none on files you're changing.
There seems to be a handful of warnings like this added by the series:

net/9p/trans_virtio.c:155: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
