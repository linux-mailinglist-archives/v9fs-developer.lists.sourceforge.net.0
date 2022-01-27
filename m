Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A92349EE48
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 23:53:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nDDdf-00038Y-CU; Thu, 27 Jan 2022 22:53:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nDDdd-00038R-9S
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 22:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pALUkjwAwfM6XKryLzpbgzhTetPTQ0olzAxllbfbLmQ=; b=JVBDt0T5YjiY/9oX9qJeZMbYWz
 43UL6/HmR3KNpk73c+LrSybsmQ9UU3rDWRJsiZ91A0JGk3zQY/uY21IqS+TbEBv/AoE4HNeV8tEv2
 4gYaXI/kfj3uYj3bvjy0aFaYbNdvoouWhogZBGKPuPnFG4GHgkjEv3N6aU5jBsEJEvow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pALUkjwAwfM6XKryLzpbgzhTetPTQ0olzAxllbfbLmQ=; b=k/LBItGa6rwttccv9QYW1wHZ4n
 8z6PaKiNaiAjc11lWj1g3MalbyBxpgcZVGtDAOwEzT0WpHPvlSX9L0HkkgOGeCL5HJ08EloIViJcC
 hh5mEVVrpmlMwuL1CIFkNIQ69uuPFfHpOM4SQ2ljsbKAELh3sLurmwFB3as+g08fYtMQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nDDdY-00007R-LA
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 22:53:07 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 258F5C01C; Thu, 27 Jan 2022 23:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643323978; bh=pALUkjwAwfM6XKryLzpbgzhTetPTQ0olzAxllbfbLmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DSWQF825j8WjWxsSNn1LCGdb1+LGXd2ycOwEsbJYzoUegHDJ1aFsPvd55IQcB0N5p
 nS6Lkz+eXsO8GB5/4JtGB6wB8BpyBbOmJTIue5r+fpyHbRBRoMQQ+eZMaNyEYinx1E
 2NqKeXm7i6DGb8WfB4pqafqI6azY0C/rAB4cioeea8peKk/wuLVqew2eZ72fyYZqhZ
 GUTLx2arLI/VdGH0HcP9FZq9pHkN5IPsVTM4Of9jIYRrTACfDbcMJnvfBbaT/2phMn
 clflPsifEY9S8Rk5jPokb45iG3D3xdCuHjYdaUepTm82I9VhRzZjnCNaB5lw+VHTFD
 BUQECRvPgYyhg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2ED81C01B;
 Thu, 27 Jan 2022 23:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643323977; bh=pALUkjwAwfM6XKryLzpbgzhTetPTQ0olzAxllbfbLmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OGSdWFM1R8+gYGGGI6H4ZcYGuaA8BenvnsKvDZCEaIVhH/Xq3PgQv6B5KOaahI151
 uRKXznM2nsyWpddtnkdALqlXdi8Uv6yq/8sSSWTke08V/xWDobjoh3GpCHvfhoDGhH
 hIEOIgQPITPj250ejvjSsZWYR9ssAH5yfkpu6094CGhKAjsBpazAmZ7NHGnBwXk/Hz
 ylXkoat4KuDrIAajOJ73/VWLngJ0/9j4Hqyxdmg7sy82tKiO+IJZFJlaBdNAU9kydX
 +j6Z+POOfDur6oCDwZDGlNwhy+d71TLxk5aVfkn7KOBA4To9jTDYNJ//QPkhHtAw18
 IQ3slSaLg98yA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9d0d3abb;
 Thu, 27 Jan 2022 22:52:51 +0000 (UTC)
Date: Fri, 28 Jan 2022 07:52:36 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Latchesar Ionkov <lucho@ionkov.net>
Message-ID: <YfMiNFopSM5EEeFY@codewreck.org>
References: <CAFkjPTne8PxxAd=gQ-LYYkRmwz+uhbqYtNzZiTkvL8ANHyZMbA@mail.gmail.com>
 <CAP6exYKZqJpfR+Tr3CwJrNE2Pzd-Fd2gYYW_P+he=ZStbBMHUA@mail.gmail.com>
 <YfIuBlKzYasIhtxf@codewreck.org>
 <CAOha14wmd61e0GbBY9Dsb7R=dcEmnVvvZe2R-n99iY2hOd9+NA@mail.gmail.com>
 <YfMXVNBqapNHFzAd@codewreck.org>
 <CAOha14xug6EWxtVp4HbGMNugNkq_Dwu0-q1QnR5v7mi+UECfUA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOha14xug6EWxtVp4HbGMNugNkq_Dwu0-q1QnR5v7mi+UECfUA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Latchesar Ionkov wrote on Thu, Jan 27, 2022 at 03:17:38PM
 -0700: > At some point of v9fs life the open fids were kept in only in the
 > filps, while the unopened fids were kept in the inodes where they [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nDDdY-00007R-LA
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, ron minnich <rminnich@gmail.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Latchesar Ionkov wrote on Thu, Jan 27, 2022 at 03:17:38PM -0700:
> At some point of v9fs life the open fids were kept in only in the
> filps, while the unopened fids were kept in the inodes where they can
> be easily reached. I don't know why that was changed at all.

The lists didn't change, there is still a list of unopened fids in the
dentry and a list with all fids (including open ones) in the inode

> You can get unopen fid from the file through the inode, but there is
> no way to confuse which fids are open and which are not. What is the use case
> for having opened fids outside the filps?

What I said:
>> open files should have a fid in filp->private_data but when we reach the
>> setattr function (e.g. v9fs_vfs_setattr_dotl) the filp is nowhere to be
>> found, which means we need a new lookup -- and incidentaly we don't know
>> either if the fd the operation was meant for was open as RO or RW.

This is no longer true (the filp is available if ATTR_FILE is valid),
but nobody seemed to have noticed at the time as setattr would always do
a fresh lookup then.

The rationale is in the commit message of the incriminated patch:
------
From 478ba09edc1f2f2ee27180a06150cb2d1a686f9c Mon Sep 17 00:00:00 2001
From: Greg Kurz <groug@kaod.org>
Date: Wed, 23 Sep 2020 22:11:45 +0800
Subject: [PATCH] fs/9p: search open fids first

A previous patch fixed the "create-unlink-getattr" idiom: if getattr is
called on an unlinked file, we try to find an open fid attached to the
corresponding inode.

We have a similar issue with file permissions and setattr:

open("./test.txt", O_RDWR|O_CREAT, 0666) = 4
chmod("./test.txt", 0)                  = 0
truncate("./test.txt", 0)               = -1 EACCES (Permission denied)
ftruncate(4, 0)                         = -1 EACCES (Permission denied)

The failure is expected with truncate() but not with ftruncate().

This happens because the lookup code does find a matching fid in the
dentry list. Unfortunately, this is not an open fid and the server
will be forced to rely on the path name, rather than on an open file
descriptor. This is the case in QEMU: the setattr operation will use
truncate() and fail because of bad write permissions.

This patch changes the logic in the lookup code, so that we consider
open fids first. It gives a chance to the server to match this open
fid to an open file descriptor and use ftruncate() instead of truncate().
This does not change the current behaviour for truncate() and other
path name based syscalls, since file permissions are checked earlier
in the VFS layer.

With this patch, we get:

open("./test.txt", O_RDWR|O_CREAT, 0666) = 4
chmod("./test.txt", 0)                  = 0
truncate("./test.txt", 0)               = -1 EACCES (Permission denied)
ftruncate(4, 0)                         = 0

Link: http://lkml.kernel.org/r/20200923141146.90046-4-jianyong.wu@arm.com
Signed-off-by: Greg Kurz <groug@kaod.org>
Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
-----

As that is no longer needed, this commit will be reverted and everyone
should be happy. Sending the revert patch one day earlier won't change
much but I don't want to push untested code.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
