Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0833D7DAB
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Jul 2021 20:30:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m8Rq7-0004eA-HZ; Tue, 27 Jul 2021 18:30:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <vgoyal@redhat.com>) id 1m8Rq5-0004dz-QW
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 18:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6sBKpIHNRZeimmd/He7f5ljIel5Vq9B+zrMnU0hHa2g=; b=VM4TiCCFugX6L3rFvpqpKbuh7D
 c6EDO/XIaTEokv4n8N6YH6Rh1qkmNL5o0l4dE4+JafNxuVQ7phKwGhK9xG1HpUGF1eFYodKzikSTO
 pfUOU2dtrXSeHeWRE2DC0wVqTbiK52jV06AhVQ8eL7REnbBePcs6vVzwhv6/KBav9Bdw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6sBKpIHNRZeimmd/He7f5ljIel5Vq9B+zrMnU0hHa2g=; b=mmayhiIGzcjV8reguH0b3T5f96
 M0G7Hs7n0Hc3+jRb6wzsvRNgp3SirdMdQmKG4DNpc4kRBQelxFgHzBKVMCh7ZupxyjildaB1zKtRa
 h8V/FjVmstiT0w8BF0040YjtfDB3bWuKpVGqfWbn9AozQWEv0X4fsNJYeAKz7GaYB96U=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8Rpu-0004ri-LP
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 18:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627410583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6sBKpIHNRZeimmd/He7f5ljIel5Vq9B+zrMnU0hHa2g=;
 b=Ms+otwzjdJqv70rjGgQvIsKUwWmhFcMM1qBLuiogx9aLMxPZoeDuic4HithFWRFdeL51Ms
 dcD8Y3GcFaJugjmBhcljjwgqjQzkRWxKKH9rb3CGDhLHp0bZ5WRjNJRKZjF0QU11xbdFRR
 3w+qTVgXbIrmY11/AJ7TKzBK37Ayf98=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-qAq-TvmDOOeU7tGrk7_3kw-1; Tue, 27 Jul 2021 14:29:41 -0400
X-MC-Unique: qAq-TvmDOOeU7tGrk7_3kw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96D7194EE1;
 Tue, 27 Jul 2021 18:29:40 +0000 (UTC)
Received: from horse.redhat.com (unknown [10.22.19.133])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 836F860862;
 Tue, 27 Jul 2021 18:29:33 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 14B85224201; Tue, 27 Jul 2021 14:29:33 -0400 (EDT)
Date: Tue, 27 Jul 2021 14:29:33 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: viro@zeniv.linux.org.uk
Message-ID: <YQBQje2SBNw9hqO0@redhat.com>
References: <20210714202321.59729-1-vgoyal@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714202321.59729-1-vgoyal@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m8Rpu-0004ri-LP
Subject: Re: [V9fs-developer] [PATCH v3 0/3] support booting of arbitrary
 non-blockdevice file systems
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
Cc: miklos@szeredi.hu, linux-kernel@vger.kernel.org, virtio-fs@redhat.com,
 stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jul 14, 2021 at 04:23:18PM -0400, Vivek Goyal wrote:
> Hi,
> 
> This is V3 of patches. Christoph had posted V2 here.

Hi,

Ping?

Vivek

> 
> https://lore.kernel.org/linux-fsdevel/20210621062657.3641879-1-hch@lst.de/
> 
> There was a small issue in last patch series that list_bdev_fs_names()
> did not put an extra '\0' at the end as current callers were expecting.
> 
> To fix this, I have modified list_bdev_fs_names() and split_fs_names()
> to return number of null terminated strings they have parsed. And
> modified callers to use that to loop through strings (instead of
> relying on an extra null at the end).
> 
> Christoph was finding it hard to find time so I took his patches, 
> added my changes in patch3 and reposting the patch series.
> 
> I have tested it with 9p, virtiofs and ext4 filesystems as rootfs
> and it works for me.
> 
> Thanks
> Vivek
> 
> Christoph Hellwig (3):
>   init: split get_fs_names
>   init: allow mounting arbitrary non-blockdevice filesystems as root
>   fs: simplify get_filesystem_list / get_all_fs_names
> 
>  fs/filesystems.c   | 27 ++++++++------
>  include/linux/fs.h |  2 +-
>  init/do_mounts.c   | 90 +++++++++++++++++++++++++++++++++-------------
>  3 files changed, 83 insertions(+), 36 deletions(-)
> 
> -- 
> 2.31.1
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
