Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6FB3C9208
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Jul 2021 22:24:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m3lQH-0001tN-5z; Wed, 14 Jul 2021 20:24:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1m3lQG-0001tC-7q
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FkQL0/TmGD7gb6xNFLA0sWKjd2e7ZFTezB20AWmdyek=; b=AXVUWX0JFMNRO7nV7UZeuQpRGo
 kg5XBKgJ+cJGB9+J6cMI4LL5FKdz9dlMr4HuGQ6F9swL1blLM9HzsJpynRc0FZ+HOdAd8ijrMMK0Y
 /ElJDlqPrSakkd0vap1qai2BgF9mC25+CLvU5k0Yl01LrgjV63ke9dNENDmoWO7kL6CM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FkQL0/TmGD7gb6xNFLA0sWKjd2e7ZFTezB20AWmdyek=; b=A
 xQ4/dbU6zyFm5LcyWKI8D2bZruvPVGu41Xmq1UoVWwFVfZ/A4nQm59Cptnpl0oM51aJWvBniC6YKd
 TzE9A4M/a4XNrxbTXjjm3qwnHImw4BRDxEi5HQuwCjRSh0GhSa6nno338TZ9XJT1Lz2ugakf6qbJk
 QFQw2gob+6OUjSXQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m3lQC-0004qr-Mh
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626294230;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=FkQL0/TmGD7gb6xNFLA0sWKjd2e7ZFTezB20AWmdyek=;
 b=TfPv4/dgvJCigQWMS9NiDtvlzu3Ny3kNvdQCaptTifQoDLvgAljHLLcBWthTwApTHQkNhK
 +9twkeNBowE0oYJ3AwgnZI5pTfhX1TDssa5mpntyPJLls24BxD2UZmBmCMu1NBlkEcvVMj
 T7wQO7z/zdBk+mU/6FbEClyyHb+aBXA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-cvqwb-V3NMWwTZbmW1VrgQ-1; Wed, 14 Jul 2021 16:23:49 -0400
X-MC-Unique: cvqwb-V3NMWwTZbmW1VrgQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C93381904A;
 Wed, 14 Jul 2021 20:23:41 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-201.rdu2.redhat.com [10.10.114.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CCA0717AE2;
 Wed, 14 Jul 2021 20:23:40 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 5CE9A22021C; Wed, 14 Jul 2021 16:23:40 -0400 (EDT)
From: Vivek Goyal <vgoyal@redhat.com>
To: viro@zeniv.linux.org.uk
Date: Wed, 14 Jul 2021 16:23:18 -0400
Message-Id: <20210714202321.59729-1-vgoyal@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m3lQC-0004qr-Mh
Subject: [V9fs-developer] [PATCH v3 0/3] support booting of arbitrary
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
 v9fs-developer@lists.sourceforge.net, hch@lst.de,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

This is V3 of patches. Christoph had posted V2 here.

https://lore.kernel.org/linux-fsdevel/20210621062657.3641879-1-hch@lst.de/

There was a small issue in last patch series that list_bdev_fs_names()
did not put an extra '\0' at the end as current callers were expecting.

To fix this, I have modified list_bdev_fs_names() and split_fs_names()
to return number of null terminated strings they have parsed. And
modified callers to use that to loop through strings (instead of
relying on an extra null at the end).

Christoph was finding it hard to find time so I took his patches, 
added my changes in patch3 and reposting the patch series.

I have tested it with 9p, virtiofs and ext4 filesystems as rootfs
and it works for me.

Thanks
Vivek

Christoph Hellwig (3):
  init: split get_fs_names
  init: allow mounting arbitrary non-blockdevice filesystems as root
  fs: simplify get_filesystem_list / get_all_fs_names

 fs/filesystems.c   | 27 ++++++++------
 include/linux/fs.h |  2 +-
 init/do_mounts.c   | 90 +++++++++++++++++++++++++++++++++-------------
 3 files changed, 83 insertions(+), 36 deletions(-)

-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
