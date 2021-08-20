Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F73E3F2E07
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 16:25:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH5SS-0001Ep-OO; Fri, 20 Aug 2021 14:25:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bfields@fieldses.org>) id 1mH5SL-0001Ed-Sn
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 14:25:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wY8RC3nRl8mw74fg4RiQly9sGS6KY5S4e1kT6ficbDo=; b=IlCbWcJbc7U2VitD8QA0A9xcyl
 ecIYaJtDdotxGnyeIX1wQcARQXsHyN4TiO6CuarCZxLdfOMEXBjRMnnItoKQPR4o3Sxh23g+eGOXV
 TWu9feGLCOcy8muOhQCOk11vqsQTgzdI1wZTBCiJZW200tshKgMV7rReKLTRGIq8+yfc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wY8RC3nRl8mw74fg4RiQly9sGS6KY5S4e1kT6ficbDo=; b=Pas8hAGKw4DI64hGsHEfGN7Sdg
 Ut05Pm09sB/B01HWS1NySEY+JiyisTuK3wpwtKJBBGep0lRYonaDlaBQMGTZw7keKz5ldtQ6GPhKG
 fk4HqPTc+4LLLN9eU4TTnEPIAijXAficxZz8Kg4aDpm7pwL3hXxIVV3ChMHN6Lep545Q=;
Received: from fieldses.org ([173.255.197.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH5SB-0000Gc-U2
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 14:25:13 +0000
Received: by fieldses.org (Postfix, from userid 2815)
 id 0D0065BAF; Fri, 20 Aug 2021 10:09:03 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org 0D0065BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1629468543;
 bh=wY8RC3nRl8mw74fg4RiQly9sGS6KY5S4e1kT6ficbDo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uLNQrICJHtuq70LWUUqRVgWozgalJ08WFOOsOZqBRr7hBYe8itNg2uNRHfsX8hV9w
 iqbK/sRw2HXqb1WneQoev11t5SeB+7ucMp6ayp/tLrKmxHPhmbqboCVfkuJrHpOG7M
 yUwi7bYbplF6X0LxX0UaNOAxpOKbsXq8dEkfIV4U=
Date: Fri, 20 Aug 2021 10:09:03 -0400
From: "J. Bruce Fields" <bfields@fieldses.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20210820140903.GA18096@fieldses.org>
References: <20210820135707.171001-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210820135707.171001-1-jlayton@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mH5SB-0000Gc-U2
Subject: Re: [V9fs-developer] [PATCH v2 0/2] fs: remove support for
 mandatory locking
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
Cc: linux-nfs@vger.kernel.org, david@redhat.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, willy@infradead.org, w@1wt.eu,
 cluster-devel@redhat.com, linux-mm@kvack.org, rostedt@goodmis.org,
 ebiederm@xmission.com, luto@kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, torvalds@linux-foundation.org,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Aug 20, 2021 at 09:57:05AM -0400, Jeff Layton wrote:
> The first patch in this series adds a new warning that should pop on
> kernels have mandatory locking enabled when someone mounts a filesystem
> with -o mand. The second patch removes support for mandatory locking
> altogether.
> 
> What I think we probably want to do is apply the first to v5.14 before
> it ships and allow the new warning to trickle out into stable kernels.
> Then we can merge the second patch in v5.15 to go ahead and remove it.
> 
> Sound like a plan?

Sounds good to me.--b.

> 
> Jeff Layton (2):
>   fs: warn about impending deprecation of mandatory locks
>   fs: remove mandatory file locking support
> 
>  .../filesystems/mandatory-locking.rst         | 188 ------------------
>  fs/9p/vfs_file.c                              |  12 --
>  fs/Kconfig                                    |  10 -
>  fs/afs/flock.c                                |   4 -
>  fs/ceph/locks.c                               |   3 -
>  fs/gfs2/file.c                                |   3 -
>  fs/locks.c                                    | 116 +----------
>  fs/namei.c                                    |   4 +-
>  fs/namespace.c                                |  31 +--
>  fs/nfs/file.c                                 |   4 -
>  fs/nfsd/nfs4state.c                           |  13 --
>  fs/nfsd/vfs.c                                 |  15 --
>  fs/ocfs2/locks.c                              |   4 -
>  fs/open.c                                     |   8 +-
>  fs/read_write.c                               |   7 -
>  fs/remap_range.c                              |  10 -
>  include/linux/fs.h                            |  84 --------
>  mm/mmap.c                                     |   6 -
>  mm/nommu.c                                    |   3 -
>  19 files changed, 20 insertions(+), 505 deletions(-)
>  delete mode 100644 Documentation/filesystems/mandatory-locking.rst
> 
> -- 
> 2.31.1


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
